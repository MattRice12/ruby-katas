class UrlParser
  def parse(url)
    url_hash = Hash.new
    url_hash[:protocol], remainder = url.split("://") if url.include?("://")
    url_hash[:hostname], *remainder = remainder.split("/")

    url_hash[:subdomain], *url_hash[:domain] = url_hash[:hostname].split(".")
    _, *url_hash[:second_level_domain] = url_hash[:domain]
    _, url_hash[:top_level_domain] = url_hash[:second_level_domain]
    url_hash[:second_level_domain] = url_hash[:second_level_domain].join(".")
    url_hash[:top_level_domain] ||= ""
    url_hash[:domain] = url_hash[:domain].join(".")
    remainder = remainder.join("/")

    url_hash = path_params_anchor(url_hash, remainder)
    url_hash
  end

  def path_params_anchor(url_hash, remainder)
    param_hash = Hash.new
    if remainder.include?("?")
      url_hash[:path], remainder = remainder.split("?")
      url_hash[:params], url_hash[:anchor] = remainder.split("#")
      params = url_hash[:params].split("&")
      params.each do |param|
        k, v = param.split("=")
        param_hash.merge!({k.to_sym=>v})
      end
    elsif remainder.include?("#")
      url_hash[:path], url_hash[:anchor] = remainder.split("#")
    else
      url_hash[:path] = remainder
    end
    url_hash[:params] = param_hash
    url_hash
  end
end

url = "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ruby+parser&*"
parsed_url = UrlParser.new.parse(url)
puts parsed_url

# "http://www.google.com"
# "https://ruby-doc.org/core-2.4.0/Hash.html#method-i-merge"
# "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ruby+parser&*"
