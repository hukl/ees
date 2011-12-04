module Ees
  class Api
    class << self

      def dispatch options
        case options[:command]
        when "generate"
          if valid_generators.include?( options[:sub_command].to_sym )
            dispatch_generator( options )
          else
            puts "Invalid command"
          end
        end
      end

      def dispatch_generator options
        case options[:sub_command]
        when "project"
          Ees::Generators.generate_project( options )
        when "app"
          Ees::Generators.generate_app( options )
        else
          Ees::Generators.generate_behavior( options )
        end
      end

      def valid_generators
        [:project, :app] + valid_templates
      end

      def valid_templates
        path = File.join(
          File.dirname( __FILE__), "..", "..", "templates", "behaviors"
        )

        Dir.entries( path ).reject do |filename|
          [".", ".."].include?( filename )
        end.map do |template|
          template.sub(/\.erb$/, "").to_sym
        end
      end

    end
  end
end