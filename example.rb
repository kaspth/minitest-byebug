require File.expand_path('lib/minitest/byebug') if ENV["DEBUG"]
require 'minitest/autorun'

class TestMiniTestUnitTestCase < Minitest::Test
  def good
    42
  end

  def test_assert
    assert_equal 42, good
  end

  def wrong
    24
  end

  def test_assert_failure
    assert_equal 42, wrong
  end

  def bad
    raise "no"
  end

  def test_skip_does_nothing
    skip "Do run me"
    raise "HELL"
  end

  def test_assert_error
    assert_equal 42, bad
  end
end