def includes_todo?(text)
    fail "No text given." if text.empty?

    text.include?("#TODO") ? true : false
end