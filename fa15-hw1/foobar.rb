class Foobar
  # Q4 CODE HERE
  def Foobar.baz(a)
  	return a.map{|a| (a.delete(',').to_i) + 2}.uniq.reject{|a| a % 2 == 1 or a > 10}.reduce(:+)
  end

end
