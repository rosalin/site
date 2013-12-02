require 'rails/generators/migration'

module Site
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations"

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        migration_template "20131108113705_create_site_contacts.rb", "db/migrate/create_site_contacts.rb"
        migration_template "20131108170553_create_site_newsletters.rb", "db/migrate/create_site_newsletters.rb"
      end
    end
  end
end