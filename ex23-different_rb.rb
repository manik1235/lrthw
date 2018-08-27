# this one is from simplecon_setup.rb
# https://github.com/cucumber/cucumber-ruby/blob/master/lib/simplecov_setup.rb

# frozen_string_literal: true

if ENV['SIMPLECOV']
  begin
    # Suppress warnings in order not to pollute stdout which tests expectations rely on
    $VERBOSE = nil if defined?(JRUBY_VERSION)

    require 'simplecov'

    SimpleCov.root(File.expand_path(File.dirname(__FILE__) + '/..'))
    SimpleCov.start do
      add_filter 'iso-8859-1_steps.rb'
      add_filter '.-ruby-core/'
      add_filter '/spec/'
      add_filter '/features/'
    end
  rescue LoadError
    warn('Unable to load simplecov')
  end
end


## This seems like it means something, it was in both files.
# frozen_string_literal: true

## Checking which ENV is reported
if ENV['SIMPLECOV']
  begin
    # Suppress warnings in order not to pollute stdout which tests expectations rely on
    $VERBOSE = nil if defined?(JRUBY_VERSION)

    require 'simplecov'

    ## Sets the root directory for the SimpleCov module.
    ## the __FILE__ shows where this currently is
    ## the File.dirname gets that directory
    ## + '/..' goes back a level
    ## File.expand_path lists it out fully
    ## then that path is passed to SimpleCov.root
    SimpleCov.root(File.expand_path(File.dirname(__FILE__) + '/..'))
    ## adds filters to SimpleCov, not sure exactly what that would look like for this.
    SimpleCov.start do
      add_filter 'iso-8859-1_steps.rb'
      add_filter '.-ruby-core/'
      add_filter '/spec/'
      add_filter '/features/'
    end
  rescue LoadError
    ## if a LoadError occurs, show a warning and exit.
    warn('Unable to load simplecov')
  end
end
