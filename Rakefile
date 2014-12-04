require 'rubygems'
require 'bundler'
Bundler.require
require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc "generate models from proto"
task :gen do
  system %{ env BEEFCAKE_NAMESPACE="Vx::Lib::Message" protoc proto/messages.proto --beefcake_out lib/vx/lib/message/ }
end

desc "generate models from proto and run specs"
task :default => [:gen, :spec]

desc "run travis build"
task :travis => :default
