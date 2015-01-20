require 'byebug'
require 'minitest'
require 'minitest/test'

module Minitest
  module Byebug
    # Set ENV['NO_SKIP'] to prevent tests from being skipped.
    def skip(msg = nil, bt = caller)
      super unless ENV['NO_SKIP']
    end

    # Overrides #assert to start a byebug session on failed assertions.
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
