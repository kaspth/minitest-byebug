require 'byebug'
require 'minitest'
require 'minitest/test'

# Start a byebug session when an assertion fails
module Minitest
  module Byebug
    def skip(msg = nil, bt = caller)
      super unless ENV['NO_SKIP']
    end

    def assert(test, msg = nil)
      super
    rescue Minitest::Assertion => error
      warn "Assertion Failed. Dropping into byebug now:"
      byebug
      raise error
    end
  end

  Minitest::Test.send(:include, Minitest::Byebug)
end
