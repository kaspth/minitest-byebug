require 'minitest/byebug'
require 'minitest/autorun'

class ByebugTest < Minitest::Test

  def setup
    ENV['DEBUG'] = nil
  end

  def test_skip_without_debug_set
    skip
    raise RuntimeError
  end

  def test_skip_does_nothing_if_debug_is_set
    ENV['DEBUG'] = '1'
    assert_raises(RuntimeError) do
      test_skip_without_debug_set
    end
  end
end
