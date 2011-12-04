module Ees
  module Generators
    class << self

      def generate_project options
        template_path = File.join( Ees::Api.template_path, "project", ".")
        project_path  = File.join( options[:path], options[:argument] )

        FileUtils.mkdir( project_path )
        FileUtils.cp_r( template_path, project_path )
       end

      def generate_app options
        unless Dir.exists?( File.join( options[:path], "apps" ) )
          puts "Run this command from the project root"
          return
        end

        template_path = File.join( Ees::Api.template_path, "app", ".")
        app_path = File.join( options[:path], "apps", options[:argument] )

        if Dir.exists?( app_path )
          puts "Application already exists in #{app_path}"
          return
        end

        FileUtils.mkdir( app_path )
        FileUtils.cp_r( template_path, app_path )
      end

      def generate_behavior options

      end

    end
  end
end