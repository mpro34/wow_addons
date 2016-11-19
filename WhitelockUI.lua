print("hello there " .. UnitName("player") .. " - Level " .. UnitLevel("player"));  --Print the player's name.
--print("Your level is " .. Unit)

local function counter(...)
	local arr = {...};
	print(#arr);  --print the length of arr
end

print(counter(1, 2,"hello", 5, "world!"))