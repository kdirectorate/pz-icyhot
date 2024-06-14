
function OnApply_IcyHot(food, player, percent)

	-- Amount of stiffness we'll take away on a body part for each
	-- application of goo.
	local STIFFNESS_REDUCTION = 60;
	-- Amount of stiffness in a body part that we will refuse to apply
	-- goo for.
	local STIFFNESS_FLOOR = 30;
	-- How much goo we use on each body part. Currently this results
	-- in 10 uses per tube. Which is probably enough to take away all
	-- but STIFFNESS_FLOOR from doing max burpees 12 hours ago.
	-- Changing any of the values though will alter that.
	local GOO_USED_EACH_TIME = 0.01;

	local curWeight = food:getWeight();

	-- Go through all of the body parts looking for stiffness.
	local bodyParts = player:getBodyDamage():getBodyParts()
	for i=1, bodyParts:size() do
		local bodyPart = bodyParts:get(i-1)
		local stiffness = bodyPart:getStiffness()
		-- if the part is stiff enough and we have more product to use.
		if (stiffness > STIFFNESS_FLOOR) and (curWeight > 0) then
			curWeight = curWeight - GOO_USED_EACH_TIME;
			stiffness = stiffness - STIFFNESS_REDUCTION
			if stiffness < STIFFNESS_FLOOR then
				stiffness = STIFFNESS_FLOOR
			end
			-- Set the new stiffness for this body part.
			bodyPart:setStiffness(stiffness)
		end
	end

	-- No matter what, we're taking some of the goo out of the tube.
	-- If the player has no exercise fatigue, they shouldn't use it.
	if (curWeight == food:getWeight()) then
		curWeight = curWeight - .01;
	end

	-- If the tube is empty, delete it.
	if(math.floor(curWeight * 100) <= 0) then
		local usedItem = food:getContainer():getParent()
		food:getContainer():Remove(food)
	end

	-- Set the tube's new weight.
	food:setWeight(curWeight);
	food:setActualWeight(curWeight);
	food:setCustomWeight(true);

end
