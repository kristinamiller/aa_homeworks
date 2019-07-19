def find_longest(fishes)
  longest = ""
  i = 0
  while i < fishes.length - 1
    if fishes[i].length > fishes[i + 1].length
      longest = fishes[i]
    else
      longest = fishes[i + 1]
    end
    i += 1
  end
longest
end


p find_longest(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

#=> "fiiiissshhhhhh"


def inject_longest(fishes)

  fishes.inject do |acc, el|
    acc.length > el.length ? acc : el
  end

end

p inject_longest(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

#=> "fiiiissshhhhhh"