#encoding: UTF-8
require 'optparse'

module Ees
  class Cli
    class << self
      def start
        options = {}

        OptionParser.new do |opts|
          opts.banner = banner
        end.parse!

        puts options.inspect
        p ARGV
      end

      def banner
<<-Banner

Usage: ees command [options] [attributes]

Commands:
  new         create a new erlang project ( ees new project )
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