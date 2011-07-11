#!/usr/bin/env ruby

require 'rubygems'
require 'alsa'

include ALSA::PCM

Capture.open do |capture|
  capture.read do |buffer, frame_count|
    $stdout.write buffer
    puts capture.inspect
  end
end

