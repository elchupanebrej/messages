# frozen_string_literal: true

# The code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/codegen/codegen.rb]
module Cucumber
  module Messages
    ##
    # Represents the Product message in Cucumber's {message protocol}[https://github.com/cucumber/messages].
    ##
    #
    # Used to describe various properties of Meta
    ##
    class Product < Message
      ##
      # The product name
      ##
      attr_reader :name

      ##
      # The product version
      ##
      attr_reader :version

      def initialize(
        name: '',
        version: nil
      )
        @name = name
        @version = version
        super()
      end

      ##
      # Returns a new Product from the given hash.
      # If the hash keys are camelCased, they are properly assigned to the
      # corresponding snake_cased attributes.
      #
      #   Cucumber::Messages::Product.from_h(some_hash) # => #<Cucumber::Messages::Product:0x... ...>
      ##
      def self.from_h(hash)
        return nil if hash.nil?

        new(
          name: hash[:name],
          version: hash[:version]
        )
      end
    end
  end
end
