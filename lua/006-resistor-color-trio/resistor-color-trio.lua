return {
  decode = function(c1, c2, c3)
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

    local value = (10 * color_codes[c1] + color_codes[c2]) * (10 ^ color_codes[c3])
    
    if value < 1000 then
      return value, 'ohms'
    elseif value < 1000000 then
      return value / 1000, 'kiloohms'
    elseif value < 1000000000 then
      return value / 1000000, 'megaohms'
    else
      return value / 1000000000, 'gigaohms'
    end
  end
}
