scriptId = 'com.safwanc.basicscript'

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange app: " .. app .. " title: " .. title)
	return true
end