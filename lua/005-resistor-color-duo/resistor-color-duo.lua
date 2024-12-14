return {
  value = function(colors)
    local color_codes = {
      black = 0,
      brown = 1,
      red = 2,
      orange = 3,
      yellow = 4,
      green = 5,
      blue = 6,
      violet = 7,
      grey = 8,
      white = 9
    }

    local result = ''

    for k, v in pairs(colors) do
      if k <= 2 then result = result .. color_codes[v] end
    end

    return tonumber(result)
  end
}
