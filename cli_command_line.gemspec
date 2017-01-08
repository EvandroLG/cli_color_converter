# coding: utf-8

Gem::Specification.new do |s|
  s.name = 'cli_color_converter'
  s.version = '0.0.1'
  s.date = '2016-01-08'
  s.summary = 'cli_color_converter'
  s.description = 'color_converter is a Ruby module that help you to convert RGB/hexadecimal color models.'
  s.authors = ['EvandroLG']
  s.email = 'evandrolgoncalves@gmail.com'
  s.homepage = 'https://github.com/EvandroLG/cli_color_converter'
  s.license = 'MIT'

  s.files = `git ls-files -z`.split("\x0")
  s.executables = ['bin/cli_color_converter']
  s.require_paths = ['lib']

  s.add_dependency 'color_converter'
end
