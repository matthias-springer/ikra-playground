def dotprod(v1,v2)
  v1.zip(v2).
    map{ |x,y| x*y }.
    reduce(0){ |m1,m2| m1+m2 }
end

def test(size)
  v = Array.new(size){ |i| 1 }
  dotprod(v,v)
end

puts test(ARGV[0].to_i)
