require 'capistrano/all'
require 'capistrano/setup'
require 'capistrano/deploy'

require 'rvm1/capistrano3'
load File.expand_path('../tasks/vmf.cap', __FILE__)
load File.expand_path('../tasks/redis.cap', __FILE__)
load File.expand_path('../tasks/files.cap', __FILE__)
