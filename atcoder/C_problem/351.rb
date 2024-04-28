# 2のAi乗を愚直に計算するとオーバーフローしてしまうので
# 2**i + 2**i = 2**(i+1)という性質を利用する。

n = gets.to_i
a = gets.split.map(&:to_i)
balls = []

def processing(balls)
  while balls.size > 1 or balls[-1] == balls[-2]
    if balls[-1] != balls[-2]
      break
    elsif balls[-1] == balls[-2]
      new_ball = balls[-1] + 1
      balls.delete_at(-1)
      balls.delete_at(-1)
      balls << new_ball
    end
  end
  return balls
end

n.times do |i|
  balls << a[i]
  balls = processing(balls)
end

print balls.size

