class Array
  def accumulate(&block)
    new_arr = []
    each { |item| new_arr << block.call(item) } #or yield(item) ---(can exclude '&block')
    new_arr
  end
end
