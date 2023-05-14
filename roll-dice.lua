-- Initialize the random number generator seed based on the current time
math.randomseed(os.time())

-- Prompt the user to enter their guess
io.write("Guess the number between 1 and 6: ")
local guess = tonumber(io.read("*n"))

-- Check if the guess is valid
while guess < 1 or guess > 6 do
  io.write("Invalid guess. Please try again: ")
  guess = tonumber(io.read("*n"))
end

-- Generate a random number from 1 to 6 (simulating a dice roll)
local dice = math.random(1, 6)

-- Check if the guess is equal to the dice result
if guess == dice then
  print("You guessed "..guess.." correctly! Dice value was "..dice)
else
  print("You guessed "..guess.." incorrectly! Dice value was "..dice)
end