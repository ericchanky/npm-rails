module NpmRails
  require 'json'

  class Package
    def self.read
      root = Rails.root.join('rails-package.json')
      if !File.exists? root
        File.write(root, '{}')
      end
      JSON.parse File.read(Rails.root.join('rails-package.json'))
    end

    def self.install
      self.read.each do |k, v|
        `npm install --prefix #{Dir.pwd} #{k}@'#{v}'`
      end
    end
  end
end
