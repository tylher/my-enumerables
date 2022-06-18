module MyEnumerable
  def any?
    return unless block_given

    each { |i| return true if yield(i) }
    false
  end

  def all?
    return unless block_given

    each { |i| return false unless yield(i) }
    true
  end

  def filter
    new_arr = []
    each { |n| new_arr << n if yield(n) }
    new_arr
  end
end
