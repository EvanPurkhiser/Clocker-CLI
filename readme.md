### Clocker Command Line Tool

The `clocker` tool is a simpler version of my (still incomplete) web application
named Clocker. The goal behind creating this tool was to make the process of
keeping track of your time spent on a project for a client simple and straight
forward.

This tool trys to do three things in the simplest way it can:

 1. Store information about the project itself. This includes the following:
    * The name of the project
    * The contact details for the projects client
    * The contact details for the individual working on the project
    * One or more hourly rates for different types of work done on the project

 2. Make it very simple to keep track of your time spent working. The process
    for keeping track of your time using this tool would be as follows:
    * `clocker start` - This will record the time you started working
    * `clocker stop` - This will record the time you finished working, and then
      ask you what hourly rate applies to this work as well as allow you to fill
      out a description of the work you've done
    * `clocker cancel` - If you don't want to record the time you've spent
      working this command may be issued to cancel current recorded start time

 3. Finally, clocker makes it simple to generate invoices from the projects work
    entries and client information. This is done using a Latex template that is
    pre-filled with entries from the recorded entries.

#### The `Clockerfile`

All of the information generate by this tool is stored in a `Clockerfile`. This
is a [YAML](http://www.yaml.org/) file designed to be easily editable. The goal
here was to make it easy to simply open up this file and fix any mistakes you
may make using the tool that are out of the scope of it's command line interface

When clocker starts, it will look for this file in your current working
directory and all parent directories.

#### Using `clocker`

Clocker offers a number of sub-commands that can be used to manage your project

 * `init` - Initialize the Clockerfile, prompting for details about the project
 * `start` - Clock in, this will record the time that you began working
 * `cancel` - Cancel the current recorded session
 * `stop` - Stop the clock, creates an entry for time worked since you clocked
   in. This will prompt you for the hourly rate that the work
 * `add` - Create a new entry from user input without clocking in or out. Useful
   for when you forgot to clock in or when you didn't have access to the utility
 * `status` - Get the current status of the project. Including total billable
   hours, total billable amount, and totals for each of the hourly rates
 * `list` - List all of the entires currently recorded in the Clockerfile
 * `invoice` - Generate a PDF invoice based on the current entries and
   information in the clocker file
 * `clear` - Remove all entries from the Clockerfile

The usual process for using clocker would be like so:

 1. `clocker init` - You will be prompted to fill out information about the
    project
 2. `clocker start` - Clock in and begin working
 3. `clocker stop` - Clock out and select the hourly rate for the work you've
    done and then enter a description for the work you've done
 4. Repeat this process as many times as you work before your next invoice cycle
 5. `clocker invoice` - This will create a PDF invoice from the current entries
 6. `clocker clear` - This will remove the current entires so you can begin
    recording new ones for your next invoicing cycle
