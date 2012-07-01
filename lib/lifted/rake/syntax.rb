# encoding: UTF-8

# 
# Copyright:: Copyright 2012 by Lifted Studios. All Rights Reserved.
# 

require 'rake/task'
require 'rake/tasklib'

# Classes and modules of use to Lifted Studios projects.
module Lifted
  # Rake extensions.
  module Rake
    # Provides a Rake task for simple syntax checking of scripts.
    class SyntaxTask < ::Rake::TaskLib
      # List of files to check for syntax.
      attr_accessor :files

      # Name of the task.
      attr_accessor :name

      # Creates a new task with the name +name+.
      # 
      # @param [String, Symbol] name Name of the Rake task.
      def initialize(name = :syntax)
        @name = name
        @files = Dir['lib/**/*.rb']

        yield self if block_given?

        define
      end

      protected

      def define
        desc "Check files for syntactical errors"
        task(name) do
          files.each { |f| sh "ruby -c #{f}" }
        end
      end
    end
  end
end
