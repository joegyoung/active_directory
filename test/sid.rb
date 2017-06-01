require 'minitest/autorun'

class TestActiveDirectory < MiniTest::Test
  def test_binary_sid_to_string
    assert_equal 'S-1-5-21-1482476501-1993962763-1801674531-17860',
                 ActiveDirectory::SID.read(['010500000000000515000000d5cb5c580b75d976235f636bc4450000'].pack('H*')).to_s
    assert_equal 'S-1-5-21-1482476501-1993962763-1801674531-9679',
                 ActiveDirectory::SID.read(['010500000000000515000000d5cb5c580b75d976235f636bcf250000'].pack('H*')).to_s
  end
end
