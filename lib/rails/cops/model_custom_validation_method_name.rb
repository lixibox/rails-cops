# frozen_string_literal: true

module Rails
  module Cops
    # This is for custom rubocop rule
    class ModelCustomValidationMethodName < ::RuboCop::Cop::Base
      MSG = 'You are using model validation method name without _validation, please add suffix _validation to the method name'.freeze

      def_node_matcher :custom_validation, <<-PATTERN
        (send nil? :validate
          (sym $_) $...)
      PATTERN

      # event handler
      def on_send(node)
        custom_validation(node) do |method_name, _args|
          method_node = node.children[2]
          add_offense(method_node, message: MSG) unless method_name.end_with?('_validation')
        end
      end
    end
  end
end
