# frozen_string_literal: true

# The code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/codegen/codegen.rb]
module Cucumber
  module Messages
    ##
    # Represents the Examples message in Cucumber's {message protocol}[https://github.com/cucumber/messages].
    ##
    ##
    class Examples < Message
      ##
      # The location of the `Examples` keyword
      ##
      attr_reader :location

      attr_reader :tags

      attr_reader :keyword

      attr_reader :name

      attr_reader :description

      attr_reader :table_header

      attr_reader :table_body

      attr_reader :id

      def initialize(
        location: Location.new,
        tags: [],
        keyword: '',
        name: '',
        description: '',
        table_header: nil,
        table_body: [],
        id: ''
      )
        @location = location
        @tags = tags
        @keyword = keyword
        @name = name
        @description = description
        @table_header = table_header
        @table_body = table_body
        @id = id
        super()
      end

      ##
      # Returns a new Examples from the given hash.
      # If the hash keys are camelCased, they are properly assigned to the
      # corresponding snake_cased attributes.
      #
      #   Cucumber::Messages::Examples.from_h(some_hash) # => #<Cucumber::Messages::Examples:0x... ...>
      ##
      def self.from_h(hash)
        return nil if hash.nil?

        new(
          location: Location.from_h(hash[:location]),
          tags: hash[:tags]&.map { |item| Tag.from_h(item) },
          keyword: hash[:keyword],
          name: hash[:name],
          description: hash[:description],
          table_header: TableRow.from_h(hash[:tableHeader]),
          table_body: hash[:tableBody]&.map { |item| TableRow.from_h(item) },
          id: hash[:id]
        )
      end
    end
  end
end
