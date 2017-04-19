# encoding: utf-8

task :default => :test

task :test do
  require 'simplecov'
  SimpleCov.start do
    add_filter "/test/"
  end
  require 'minitest/autorun'
  Dir.glob('./test/*.rb').each { |file| require file}
end
