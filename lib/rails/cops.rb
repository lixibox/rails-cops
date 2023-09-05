# frozen_string_literal: true

require 'rubocop'
require_relative 'cops/version'
require_relative 'cops/model_custom_validation_method_name'

module Rails
  module Cops
    class Error < StandardError; end
    # Your code goes here...
  end
end
