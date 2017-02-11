module NpmRails
  require 'json'
  require 'pathname'

  class Js
    def self.load
      package_file = ::Rails.root.join 'package.json'
      root = ::Rails.root.join 'node_modules'
      self.readAsJson(package_file)['dependencies'].each do |k, v|
        package = root.join k, 'package.json'
        main = root.join k, self.readAsJson(package)['main']
        relative_name = Pathname.new(main).relative_path_from Pathname.new(root)
        yield relative_name.to_s
      end
    end

    def self.readAsJson path
      JSON.parse File.read(path)
    end
  end
end
