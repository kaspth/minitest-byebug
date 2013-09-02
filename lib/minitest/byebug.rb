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

  def self.included(base)
    base.send :alias_method, :kapture_exceptions, :capture_exceptions
    base.send :define_method, :capture_exceptions do |&block|
      begin
        block.call
      rescue => e
        byebug 9
        kapture_exceptions(&block)
      end
    end
  end
end

class Minitest::Test
  include Minitest::Byebug
end
