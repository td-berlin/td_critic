require 'rubocop/rake_task'

desc 'Run Rubocop on the recent changes'
RuboCop::RakeTask.new(:rubocop) do |task|
  branch = `git rev-parse --abbrev-ref HEAD`
  changed_files = if branch == 'master'
                    `git diff --name-only master origin/master`.split($RS)
                  else
                    `git diff --name-only master..#{branch}`.split($RS)
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
