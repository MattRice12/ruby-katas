require 'minitest/autorun'
require 'minitest/pride'
require_relative 'parser'

class UrlParserTest < Minitest::Test
  def url
    "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ruby+parser&*"
  end

  def parsed_url
    UrlParser.new.parse(url)
  end

  def test_url
    # skip
    assert_equal "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ruby+parser&*", url
  end

  def test_protocol
    # skip
    assert_equal "https", parsed_url[:protocol]
  end

  def test_hostname
    # skip
    assert_equal "www.google.com", parsed_url[:hostname]
  end

  def test_subdomain
    # skip
    assert_equal "www", parsed_url[:subdomain]
  end

  def test_domain
    # skip
    assert_equal "google.com", parsed_url[:domain]
  end

  def test_top_level_domain
    # skip
    assert_equal "", parsed_url[:top_level_domain]
  end

  def test_second_level_domain
    # skip
    assert_equal "com", parsed_url[:second_level_domain]
  end

  def test_path
    # skip
    assert_equal "webhp", parsed_url[:path]
  end

  def test_parsed_url
    # skip
    assert_equal ({
      protocol:  "https",
      hostname: "www.google.com",
      subdomain: "www",
      domain: "google.com",
      second_level_domain: "com",
      top_level_domain: "",
      path: "webhp",
      params: {
        sourceid: "chrome-instant",
        ion: "1",
        espv: "2",
        ie: "UTF-8"
      },
      anchor: "q=ruby+parser&*"
    }), parsed_url
  end
end
