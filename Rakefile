#!/usr/bin/env rake
begin
  require 'bundler/setup'
  require "bundler/gem_tasks"
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end


desc 'Convert less to scss'
task :convert do
  ruby('build/convert.rb')
end
