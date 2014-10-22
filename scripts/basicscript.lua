scriptId = 'com.safwanc.basicscript'

function onForegroundWindowChanged(app, title)
	myo.debug("onForegroundWindowChanged app: " .. app .. " title: " ..title)
	return true
end