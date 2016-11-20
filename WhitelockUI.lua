print("hello there " .. UnitName("player") .. " - Level " .. UnitLevel("player"));  --Print the player's name.
--print("Your level is " .. Unit)

local function counter(...)
	local arr = {...};
	print(#arr);  --print the length of arr
end

local tbl = {
	--index part:
	"hello", 50, 40, 30, 20, "bye",

	--hash table:
	["hashValue_1"] = 100,
	["hashValue_2"] = 200,
	["hashValue_3"] = 300,
	["hashValue_4"] = 400,
	hashValue_5 = 500,
}

for key, value in ipairs(tbl) do   -- Only prints Array values.
	print (key .. " : " .. value);
end

for key, value in pairs(tbl) do   -- print all values.
	print (key .. " : " .. value);
end

print ("next val: " .. next(tbl))   --print 1
print ("next val2: " .. next(tbl))  --print 1

local value;
local func, tbl, id = pairs(tbl);
id, value = func(tbl, id);
print (func(tbl, id+5));            --print the key and value from tbl in the form "key value", based on id.
  
--Print i in a while loop
local i = 0;
while (i <= 10) do 
	i = i + 1;
	print (i);
end


--print(options["size"]);   --Print value from key "size"
--print(options.class); --Print the class 
--print(#options); --Get the length of the Array part, Not Hash. Return 4, since 4 items in array part.

--'Widget' is a table that acts as an object with its own methods and data.
--frame:SetFrameStata("MEDIUM"); --This local var holds a reference to Blizzard's Frame Widget (frame)