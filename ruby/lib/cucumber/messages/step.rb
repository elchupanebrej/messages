# frozen_string_literal: true

# The code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/codegen/codegen.rb]
module Cucumber
  module Messages
    ##
    # Represents the Step message in Cucumber's {message protocol}[https://github.com/cucumber/messages].
    ##
    #
    # A step
    ##
    class Step < Message
      ##
      # The location of the steps' `keyword`
      ##
      attr_reader :location

      ##
      # The actual keyword as it appeared in the source.
      ##
      attr_reader :keyword

      ##
      # The test phase signalled by the keyword: Context definition (Given), Action performance (When), Outcome assertion (Then). Other keywords signal Continuation (And and But) from a prior keyword. Please note that all translations which a dialect maps to multiple keywords (`*` is in this category for all dialects), map to 'Unknown'.
      ##
      attr_reader :keyword_type

      attr_reader :text

      attr_reader :doc_string

      attr_reader :data_table

      ##
      # Unique ID to be able to reference the Step from PickleStep
      ##
      attr_reader :id

      def initialize(
        location: Location.new,
        keyword: '',
        keyword_type: nil,
        text: '',
        doc_string: nil,
        data_table: nil,
        id: ''
      )
        @location = location
        @keyword = keyword
        @keyword_type = keyword_type
        @text = text
        @doc_string = doc_string
        @data_table = data_table
        @id = id
        super()
      end

      ##
      # Returns a new Step from the given hash.
      # If the hash keys are camelCased, they are properly assigned to the
      # corresponding snake_cased attributes.
      #
      #   Cucumber::Messages::Step.from_h(some_hash) # => #<Cucumber::Messages::Step:0x... ...>
      ##
      def self.from_h(hash)
        return nil if hash.nil?

        new(
          location: Location.from_h(hash[:location]),
          keyword: hash[:keyword],
          keyword_type: hash[:keywordType],
          text: hash[:text],
          doc_string: DocString.from_h(hash[:docString]),
          data_table: DataTable.from_h(hash[:dataTable]),
          id: hash[:id]
        )
      end
    end
  end
end
