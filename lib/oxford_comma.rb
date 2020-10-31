def oxford_comma(arr)
    if arr.length == 1
        arr.join
    elsif arr.length == 2
        arr.join(" and ")
    else
        # put a comma after each, but add "and" before the last word
        arr.each.collect do |value|
            if value == arr[-1]
                arr[-1] = "and " << value
            end
        end
        arr.join(", ")
    end
end