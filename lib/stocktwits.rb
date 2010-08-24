# Stocktwits
require 'rubygems'
gem 'httparty'
require 'httparty'
require 'hashie'

directory = File.expand_path(File.dirname(__FILE__))

Hash.send :include, Hashie::HashExtensions

module Stocktwits
  
  def self.configure
    yield self
    true
  end
  
end

require File.join(directory, 'stocktwits', 'client')
