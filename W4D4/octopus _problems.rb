# Octopus Problems

# Sluggish Octopus - quadratic
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
def sluggish_octopus(arr)
    results = ""
    arr.each_with_index do |el1, i1|
        current = ""
        arr.each_with_index do |el2, i2|
            if i2 > i1
                if el2.length > el1.length
                    current = el2
                end
            end
        end
        if results.length < current.length
            results = current
        end
    end
    results
end

# p sluggish_octopus(arr)


# Dominant Octopus - merge sort
def dominant_octopus(arr)
    return arr if arr.length <= 1
    mid = arr.length / 2
    left = dominant_octopus(arr[0...mid])
    right = dominant_octopus(arr[mid..-1])
    dom_oct_help(left, right)
end

def dom_oct_help(left, right)
    results = []
    while left.length != 0 && right.length !=0
        if left[0].length > right[0].length
            results << right[0]
            right.shift
        else
            results << left[0]
            left.shift
        end
    end
    results + left + right
end
# p dominant_octopus(arr)


# Clever Octopus
def clever_octopus(arr)
    results = arr[0]
    arr.each do |ele|
        if ele.length > results.length
            results = ele
        end
    end
    results
end
# p clever_octopus(arr)

# Slow Dance
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end
# slow_dance(direction, tiles_array)


# Constant Dance!
tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(direction, tiles_hash)
  tiles_hash[direction]

end


