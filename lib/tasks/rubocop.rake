require 'rubocop/rake_task'

desc 'Run Rubocop on the recent changes'
RuboCop::RakeTask.new(:rubocop, [:base_branch]) do |task, args|
  base_branch = args[:base_branch] || 'master'
  branch = `git rev-parse --abbrev-ref HEAD`
  changed_files =
    if branch == base_branch
      `git diff --name-only #{base_branch} origin/#{base_branch}`.split($RS)
    else
      `git diff --name-only #{base_branch}..#{branch}`.split($RS)
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
