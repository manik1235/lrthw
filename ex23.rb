# Checking out this project first
# https://github.com/cucumber/cucumber-ruby/tree/master/lib

# cucumber.rb
# frozen_string_literal: true

require 'yaml'
require 'cucumber/encoding'
require 'cucumber/platform'
require 'cucumber/runtime'
require 'cucumber/cli/main'
require 'cucumber/step_definitions'
require 'cucumber/term/ansicolor'

module Cucumber
  class << self
    attr_accessor :wants_to_quit

    def logger
      return @log if @log
      @log = Logger.new(STDOUT)
      @log.level = Logger::INFO
      @log
    end

    def logger=(logger)
      @log = logger
    end
  end
end

# Here's what I think each line does:
# frozen_string_literal: true

# List of required packages
require 'yaml'
require 'cucumber/encoding'
require 'cucumber/platform'
require 'cucumber/runtime'
require 'cucumber/cli/main'
require 'cucumber/step_definitions'
require 'cucumber/term/ansicolor'

# Defines a module, which can hold classes and functions
module Cucumber
  # Defines a class, which inherits from self?
  # Actually I'm not sure what's going on here...
  class << self
    # Defines the accessors to the class
    attr_accessor :wants_to_quit

    # define a function
    def logger
      # if there's already a log, return it
      return @log if @log
      # otherwise create a new one using the instance variable @log
      @log = Logger.new(STDOUT)
      # not sure what the :: does yet.
      @log.level = Logger::INFO
      # returns @log
      @log
    end

    # not sure what happens with the = sign in the function definition
    def logger=(logger)
      @log = logger
    end
  end
end
