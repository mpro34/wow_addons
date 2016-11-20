print("hello there " .. UnitName("player") .. " - Level " .. UnitLevel("player"));  --Print the player's name.
--print("Your level is " .. Unit)

local function counter(...)
	local arr = {...};
	print(#arr);  --print the length of arr
end

local options = {
	--Array Part
    1, 2, 3, 4 , 5,

	--Hash Part
	["size"] = 10,
	["xOffset"] = 10,
	["yOffset"] = 10,
	["color"] =  {r = 0.5, g = 0.2, b=0.6, a = 1},
	class = "Warrior",

	local function push(self, arg)
		local  n = #self;       --Return Size Of self (a reference to the object)
		self[n + 1] = arg;
	end

	pop = function(self)
		local n = #self         --Return Size Of self (a reference to the object)
		if (n > 0) then
			local rtn = self[n];
			self[n] = nil;
			return rtn;
		end
	end
}




print (options:push(options, 50));  -- ':' after colon it knows its a function. Knows it's from the option table.
print (options:push(4))

print (options:pop(options));  -- ':' after colon it knows its a function. Knows it's from the option table.
print (options:pop())
print (options:pop())



print(options["size"]);   --Print value from key "size"
print(options.class); --Print the class 
print(#options); --Get the length of the Array part, Not Hash. Return 4, since 4 items in array part.

--'Widget' is a table that acts as an object with its own methods and data.
--frame:SetFrameStata("MEDIUM"); --This local var holds a reference to Blizzard's Frame Widget (frame)