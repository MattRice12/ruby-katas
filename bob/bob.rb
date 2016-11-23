class Bob
  def hey(remark)
    return "Fine. Be that way!" if remark.strip.empty?
    return "Whoa, chill out!" if remark.upcase == remark && remark[/[A-Z]/]
    return "Sure." if remark[-1].include?("?")
    "Whatever."
  end
end
