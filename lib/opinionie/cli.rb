require 'thor'
require 'opinionie'

# The #desc method is the method defined after it becomes a task with
# the given description.
#   The first argument for desc is the usage instructions for the
#   task and the second is the short description of what that task
#   accomplishes.

# In the Opinionie::CLI class we’re referencing the
# Opinionie::Opinion class without requiring the file that defines it.
# Under the require 'thor' at the top of this file, put this line to
# require the file that defines Opinionie::Opinion:

# #method_option method we use which defines, well, a method option.
#   It takes a hash which indicates the details of an option how they
#   should be returned to our task. Check out the Thor README for a
#   full list of valid types. We can also define aliases for this
#   method using the :aliases option passed to method_option. Inside
#   the task we reference the value of the options through the
#   options hash

# To test this out in the CommandLine:
#   Usage: bundle exec bin/opinion judge "Cheese is amazing"
module Opinionie
  class CLI < Thor
    # Usage:
    #  opinionie judge "I like potato"
    desc "judge STRING", "Determines whether or not it likes your opinion or not."
    def judge(opinion)
      puts Opinionie::Opinion.judge(opinion)
    end

    # Usage:
    #  opinionie pluralize --word "Potato"
    #  => Potatoes
    desc "pluralize", "Pluralizes a word"
    method_option :word, :aliases => "-w"
    def pluralize
      puts Opinionie::Opinion.pluralize(options[:word])
    end
  end
end
