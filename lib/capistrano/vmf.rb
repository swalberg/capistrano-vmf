require 'capistrano/all'
require 'capistrano/setup'
require 'capistrano/deploy'

require 'rvm1/capistrano3'
load File.expand_path('../tasks/vmf.cap', __FILE__)
