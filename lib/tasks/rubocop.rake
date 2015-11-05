require 'rubocop/rake_task'

desc 'Run Rubocop on the recent changes'
RuboCop::RakeTask.new(:rubocop) do |task|
  if (branch = `git rev-parse --abbrev-ref HEAD`) == 'master'
    changed_files = `git diff --name-only master origin/master`.split($RS)
  else
    changed_files = `git diff --name-only master..#{branch}`.split($RS)
  end

  changed_files -= %w(Gemfile Gemfile.lock)
  changed_files.select! { |f| f.ends_with? '.rb' }

  if changed_files.none?
    task.patterns = %w(*.!)
  else
    task.patterns = changed_files
  end

  task.fail_on_error = false
end
