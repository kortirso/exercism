local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  local number_as_string = tostring(number)
  local result = 0
  local length = #number_as_string
  for i = 1, length do
    result = result + tonumber(number_as_string:sub(i, i)) ^ length
  end
  return result == number
end

return ArmstrongNumbers
