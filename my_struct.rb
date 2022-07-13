require "dry/struct"

module Types
  include Dry.Types
end

class MyStruct < Dry::Struct
  attribute :foo, Types::String.optional
end

p MyStruct.new(foo: nil).method(:foo).source_location
# ["(eval)", 1]
