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

      end

      def generate_behavior options

      end

    end
  end
end