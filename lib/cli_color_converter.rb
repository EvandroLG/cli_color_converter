#!/usr/bin/env ruby

require_relative 'str'
require 'color_converter'


if ARGV.empty?
  puts 'You should pass a hexadecimal or rgb color'
  exit
end

color = ARGV[0].dup

if color.is_hexa?
  rgb = ColorConverter.hex_to_rgb color
  puts "rgb(#{rgb[:r]}, #{rgb[:g]}, #{rgb[:b]})"
else
  list = color.sub!('rgb(', '').sub!(')', '').split(', ') 
  rgb = {
    r: list[0].to_i,
    g: list[1].to_i,
    b: list[2].to_i
  }

  puts(ColorConverter.rgb_to_hex(rgb))
end
