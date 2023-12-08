def fibonacci(n)
  if n <= 1
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(20)


def flatten(arr)
  flat = []

  arr.each do |elem|
    if elem.class == Array
      flat = flat + flatten(elem)
    else
      flat.push(elem)
    end
  end

  flat
end

a = [[2,3], [4, [[5],6]]]
b = [8, [[[[9]]]]]
arr = [[1,a], [7], b]

puts arr.inspect
puts flatten(arr).inspect