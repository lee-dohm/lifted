# encoding: UTF-8

# 
# Copyright:: Copyright 2012 by Lifted Studios. All Rights Reserved.
# 

require 'rake/tasklib'

module Lifted
  module Rake
    class SyntaxTask < ::Rake::TaskLib
      # Name of the task.
      attr_accessor :name

      # Creates a new task with the name +name+.
      # 
      # @param [String, Symbol] name Name of the Rake task.
      def initialize(name = :syntax)
        @name = name

        yield self if block_given?
      end
    end
  end
end
