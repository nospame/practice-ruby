@points = []

def roll(pins_hit)
  pins_standing = 10
  
  @points << pins_hit
  pins_standing -= pins_hit
  if pins_standing > 0
    p pins_standing
  end
end

def score
  p @points.sum
end

20.times do
  roll(3)
end

score
