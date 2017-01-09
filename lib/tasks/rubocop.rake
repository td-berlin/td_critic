require 'rubocop/rake_task'

desc 'Run Rubocop on the recent changes'
RuboCop::RakeTask.new(:rubocop, [:base_branch]) do |task, args|
  base_branch = args[:base_branch] || 'master'
  branch = `git rev-parse --abbrev-ref HEAD`
  diff_command = 'git diff --name-only --diff-filter=d'
  changed_files =
    if branch == base_branch
      `#{diff_command} #{base_branch} origin/#{base_branch}`.split($RS)
    else
      `#{diff_command} #{base_branch}..#{branch}`.split($RS)
    end

  changed_files -= %w(Gemfile Gemfile.lock)
  changed_files.select! { |f| f.ends_with? '.rb' }

  task.patterns = if changed_files.none?
                    %w(*.!)
                  else
                    changed_files
                  end

  task.fail_on_error = true
end
