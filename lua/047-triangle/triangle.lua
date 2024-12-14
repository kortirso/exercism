local triangle = {}

function triangle.kind(a, b, c)
  if a <= 0 or b <= 0 or c <= 0 then error('Input Error') end
  if a + b < c or a + c < b or b + c < a then error('Input Error') end
  if a == b and b == c then return 'equilateral' end
  if a == b or b == c or a == c then return 'isosceles' end
  return 'scalene'
end

return triangle
