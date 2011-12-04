#encoding: UTF-8
require 'optparse'
require 'time'

module Ees
  class Cli
    class << self
      def start
        options = {
          :flags          => parse_cli_options,
          :command        => ARGV[0],
          :sub_command    => ARGV[1],
          :argument       => ARGV[2],
          :sub_arguments  => ARGV[3..-1],
          :path           => Dir.pwd
        }

        Ees::Api.dispatch( options )
      end

      def parse_cli_options
        options = {}
        OptionParser.new do |opts|
          opts.banner = banner
        end.parse!

        options
      end

      def banner
<<-Banner

Usage: ees command [options] [attributes]

Commands:
  generate    project <name>
  generate    app <name>
  generate    <template> <module_name> <public_api_functions>

  generate    generate skeleton app / gen_server / gen_fsm / etc …
              To create an app run: ees generate APP_NAME.
              To create a gen_server run: ees generate gen_server MODULE_NAME
              inside of an app folder.

              ees generate gen_server token_provider start:0, stop:0, status:0

Banner
      end
    end
  end
end