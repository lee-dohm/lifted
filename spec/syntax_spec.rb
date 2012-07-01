# encoding: UTF-8

# 
# Copyright:: Copyright 2012 by Lifted Studios. All Rights Reserved.
# 

gem 'minitest'

require 'minitest/spec'
require 'minitest/autorun'

require 'lifted'

describe Lifted::Rake::SyntaxTask do
  it 'can be instantiated' do
    task = Lifted::Rake::SyntaxTask.new

    task.kind_of?(Rake::TaskLib).must_equal true
    task.name.must_equal :syntax
  end

  it 'can have its name assigned' do
    task = Lifted::Rake::SyntaxTask.new(:foo)

    task.name.must_equal :foo
  end

  it 'yields a block that allows for settings to be changed' do
    task = Lifted::Rake::SyntaxTask.new do |t|
      t.name = :foo
    end

    task.name.must_equal :foo
  end
end
