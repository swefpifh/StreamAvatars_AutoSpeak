return function()
	load()
	
	local maBubbleTextActivated = data.myAvatarBubbleTextActivated
	
	local maBubbleTextInfinite = data.myAvatarBubbleTextInfinite
	local maBubbleTextLoop = data.myAvatarBubbleTextLoop
	
	local maBubbleTextInterval = math.random(data.myAvatarBubbleTextInterval.Min, data.myAvatarBubbleTextInterval.Max)
	local maAvatar = getUser(data.myAvatarBubbleUsername)
		
	if maBubbleTextActivated == true then
		if maBubbleTextInfinite == true then
			while(true) do
				local maBubbleText = data.myAvatarBubbleText[math.random(#data.myAvatarBubbleText)]
				
				wait(maBubbleTextInterval)
				maAvatar.chatBubble(maBubbleText)
			end
		else
			for i=1,maBubbleTextLoop do
				local maBubbleText = data.myAvatarBubbleText[math.random(#data.myAvatarBubbleText)]
				
				wait(maBubbleTextInterval)
				maAvatar.chatBubble(maBubbleText)
			end
		end
	end
end
