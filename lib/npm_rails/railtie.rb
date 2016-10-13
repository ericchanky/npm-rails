module NpmRails
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/npm_rails.rake'
    end
  end
end
