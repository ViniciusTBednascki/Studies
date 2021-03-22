def narcissistic?(value)
  digits = value.digits;
  if digits.size == 1 
    return true;
  else
    result = 0;
    expo = digits.size;
    digits.each do |number|
      result += number**expo;
    end
    if result == value
      return true;
    else
      return false;
    end
  end
end

puts narcissistic?(5);
puts narcissistic?(153);
puts narcissistic?(1633);
