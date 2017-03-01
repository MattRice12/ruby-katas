class UrlParser
  def parse(url)
    url_hash = Hash.new
    url_hash[:protocol], remainder = url.split("://") if url.include?("://")
    url_hash[:hostname], remainder = remainder.split("/")

    url_hash[:subdomain], *url_hash[:domain] = url_hash[:hostname].split(".")
    _, *url_hash[:second_level_domain] = url_hash[:domain]
    _, url_hash[:top_level_domain] = url_hash[:second_level_domain]
    url_hash[:second_level_domain] = url_hash[:second_level_domain].join(".")
    url_hash[:top_level_domain] ||= ""
    url_hash[:domain] = url_hash[:domain].join(".")

    url_hash[:path], remainder = remainder.split("?") if remainder.include?("?")

    url_hash[:params], url_hash[:anchor] = remainder.split("#")
    params = url_hash[:params].split("&")

    param = Hash.new
    params.each do |par|
      k, v = par.split("=")
      param.merge!({k.to_sym=>v})
    end
    url_hash[:params] = param

    url_hash
  end
end

url = "https://ruby-doc.org/core-2.4.0/Hash.html#method-i-merge"
puts UrlParser.new.parse(url)

# "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ruby+parser&*"


# This URL has parameters. The name of one parameter is docid and the value of that parameter is -7246927612831078230. URLs can have lots parameters. Parameters start with a question mark (?) and are separated with an ampersand (&).

# See the “#00h02m30s”? That’s called a fragment or a named anchor. The Googlers I’ve talked to are split right down the middle on which way to refer it. Disputes on what to call it can be settled with arm wrestling, dance-offs, or drinking contests. 🙂 Typically the fragment is used to refer to an internal section within a web document. In this case, the named anchor means “skip to 2 minutes and 30 seconds into the video.” I think right now Google standardizes urls by removing any fragments from the url.
