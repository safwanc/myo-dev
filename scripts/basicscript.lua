scriptId = 'com.safwanc.basicscript'

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange app: " .. app .. " title: " .. title)
	return true
end

function onPoseEdge(pose, edge)
	myo.debug("onPoseEdge: " .. pose .. ": " .. edge)

	if (pose == "thumbToPinky") then
		customFunction()
	end
end

function customFunction()
	myo.debug("Custom Function Fired!")
end