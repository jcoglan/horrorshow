require 'rubygems'
require 'treetop'

module Horrorshow
  VERSION = '0.1.0'
end

%w[ whitespace
    literals
    comments
    javascript

].each do |grammar|
  Treetop.load(File.dirname(__FILE__) + '/parser/' + grammar + '.tt')
end

