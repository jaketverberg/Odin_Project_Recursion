def fibs(n)
  return n if n == 0

  sequence = [0, 1]

  (n-2).times do 
    i = sequence[-1] + sequence[-2]
    sequence.push(i)
  end
  sequence
end


def fibs_rec(n)
  return n if n < 2

  fibs_rec( n - 1 ) + fibs_rec( n - 2 )
end


puts "#{fibs_rec(10)}"
