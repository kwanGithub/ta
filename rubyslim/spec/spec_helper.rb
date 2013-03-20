# encoding: UTF-8
$: << File.expand_path(File.dirname(__FILE__) + "/../lib/rubyslim")
require "rubygems"
require 'jcode' if RUBY_VERSION.to_f < 1.9
require 'timeout'
