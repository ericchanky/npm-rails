
namespace :npm do
  desc "Explaining what the task does"
  task :install do
    # Task goes here
    puts Rails.root.join('rails-package.json')
    puts NpmRails::Package.install
  end

  task :init do
    NpmRails::Package.read
    File.open '.gitignore', 'a' do |file|
      file.write "\n"
      file.puts '# Ignore npm_rails files'
      file.puts '/node_modules/*'
      file.puts '/etc'
    end
  end
end
