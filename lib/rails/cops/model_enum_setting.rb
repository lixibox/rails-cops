# frozen_string_literal: true

module Rails
  module Cops
    # This is for custom rubocop rule for model enum
    class ModelEnumSetting < ::RuboCop::Cop::Base
      MSG = 'You are using enum without _prefix or _suffix, please add _prefix or _suffix to the enum'

      private_constant :MSG

      def_node_matcher :enum_matcher, <<-PATTERN
        (send nil? :enum
          (hash $...))
      PATTERN

      # event handler
      def on_send(node)
        enum_matcher(node) do |matches|
          next if matches.any? { |pair| pair.key.value.to_s.end_with?('_prefix', '_suffix') }

          add_offense(node, message: MSG)
        end
      end
    end
  end
end
