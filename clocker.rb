#!/usr/bin/env ruby

require 'yaml'

class Clocker

	CLOCKER_FILE = 'Clockerfile'

	def initialize(argv)

	end

	module Commands

		# Initalize the CLOCKER_FILE, prompting for values
		def init

		end

		# Start the clock
		def start

		end

		# Cancel the current running clock
		def cancel

		end

		# Stop the clock and prompt for a description of the work done
		def stop

		end

		# Print out the current status of the CLOCKER_FILE.
		def status

		end

		# List all of the current clocked entries
		def list

		end
	end
end

# Start Clocker
Clocker.new(ARGV)
