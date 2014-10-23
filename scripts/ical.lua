scriptId = 'com.safwanc.ical'

-- Myo Callback Functions 

function onForegroundWindowChange(app, title)

	-- Only take control if we are on iCal
	if (app == "com.apple.iCal") then
		return true
	end

	return false
end

function onPoseEdge(pose, edge)

	-- Only fire the subroutines if edge == 'on'
	if (edge == "off") then
		return
	end

	-- Detect the gestures we are intersted in and 
	-- fire the appropriate subroutine
	if (pose == "fingersSpread") then 
		goToToday()
	elseif (pose == "waveOut") then
		moveNext()
	elseif (pose == "waveIn") then
		movePrevious()
	end

end

-- Custom Control Functions

function goToToday()
	-- Press Command + T to go to the Today View
	myo.keyboard("t", "press", "command")
	acknowledgeGesture()
end

function moveNext()
	-- Press Command + Right Arrow to go to the Today View
	myo.keyboard("right_arrow", "press", "command")
	acknowledgeGesture()
end

function movePrevious()
	-- Press Command + Left Arrow to go to the Today View
	myo.keyboard("left_arrow", "press", "command")
	acknowledgeGesture()
end

-- Helper Functions

function acknowledgeGesture()
	-- Let the user know that a gesture has been
	-- recognized by vibrating the Myo
	myo.vibrate("short")
end