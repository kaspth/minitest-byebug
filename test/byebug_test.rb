require 'minitest/byebug'
require 'minitest/autorun'

class ByebugTest < Minitest::Test

  def setup
    ENV['NO_SKIP'] = nil
  end

  def test_skip_without_debug_set
    assert_raises(Minitest::Skip) do
      skip_helper
    end
  end

  def test_skip_does_nothing_if_debug_is_set
    ENV['NO_SKIP'] = '1'
    assert_raises(RuntimeError) do
      skip_helper
    end
  end

  def skip_helper
    skip
    raise RuntimeError
  end
end
