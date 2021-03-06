module PrivatePub
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end

      def copy_files
        remove_file "config/initializers/private_pub.rb"
        remove_file "app/helpers/private_pub_helper.rb"
        template "private_pub.yml", "config/private_pub.yml"
        copy_file "private_pub.js", "public/javascripts/private_pub.js"
        copy_file "faye.ru", "faye.ru"
      end
    end
  end
end
