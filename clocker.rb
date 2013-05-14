#!/usr/bin/env ruby

require 'yaml'

class Clocker

	CLOCKER_SKEL =
	{
		project:    '',
		client:     {},
		worker:     {},
		work_types: {},

		clocked_in_at: false,

		entires: [],
	}

	CLOCKER_FILE = 'Clockerfile'

	# Commands that may be run
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

	include Commands

	# Represents the clocker file in the current or parent directories
	class Clockerfile

	end

	# A single work type, including name and price
	class WorkType

	end

	# A single time entry, includ
	class Entry

	end

	# The CLI object for running clocker commands
	class CLI

		def initialize(argv)
			command = argv.shift

			abort "Please specify a command" if command.nil?

			if ! Commands.instance_methods.include? command.to_sym
				abort "clocker: '#{command}' is not a clocker command"
			end

			Clocker.new.send command
		end
	end

end

# Start Clocker
Clocker::CLI.new(ARGV)
