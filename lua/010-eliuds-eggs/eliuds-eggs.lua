local EliudsEggs = {}

function EliudsEggs.egg_count(number)
  local result = 0
  repeat
    local reminder = number % 2

    if reminder == 1 then
      result = result + 1
      number = number / 2 - 0.5
    else
      number = number / 2
    end
  until number == 0
  return result
end

return EliudsEggs
