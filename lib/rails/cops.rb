# frozen_string_literal: true

require 'rubocop'
require_relative 'cops/version'
require_relative 'cops/model_custom_validation_method_name'
require_relative 'cops/model_enum_setting'

module Rails
  module Cops
    class Error < StandardError; end
    # Your code goes here...
  end
end
