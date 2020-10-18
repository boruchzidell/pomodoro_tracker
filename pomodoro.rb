#! /usr/bin/env ruby

require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/content_for'
require 'tilt/erubis'
require 'yaml'

configure do
  set :sessions, expire_after: 365*24*60*60 # year in seconds
  set :session_secret, 'secret'
  set erb, escape_html: true
end
