# Format Strings
formatter = "%{first} %{second} %{third} %{fourth}" # using values by their names instead of variables

puts formatter % {first: 1, second: 2, third: 3, fourth: 4} # assigning numbers to the values in the formatter
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"} # assigning strings
puts formatter % {first: true, second: false, third: true, fourth: false} 
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
