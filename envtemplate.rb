#!/usr/bin/env ruby
require 'erb'
require 'fileutils'

fail ArgumentError.new 'Usage: envtemplate.rb <template_file> <out_file>' unless (ARGV.length == 2)

template_file = File.expand_path ARGV[0]
out_file = File.expand_path ARGV[1]

template = ERB.new(File.read(template_file))
generated_content = template.result(binding)
FileUtils.mkdir_p(File.dirname(out_file))
File.write(out_file, generated_content)
