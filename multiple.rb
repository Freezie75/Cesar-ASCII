tableau = []

for i in 1..1000
  if i % 3 == 0 || i % 5 == 0
	tableau << i
  end
end

puts tableau.inject { |k, v| k + v }

puts tableau