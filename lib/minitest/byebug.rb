require 'byebug'
require 'minitest'
require 'minitest/test'

# Start a byebug session when an assertion fails
module Minitest::Byebug
  VERSION = "0.0.1"

  def skip(msg = nil, bt = caller)
    super unless ENV['NO_SKIP']
  end

  def assert(test, msg = nil)
    begin
      super
    rescue Minitest::Assertion => e
      warn "Assertion Failed. Dropping into byebug now:"
      byebug
      raise e
    end
  end
end

class Minitest::Test
  include Minitest::Byebug
end
