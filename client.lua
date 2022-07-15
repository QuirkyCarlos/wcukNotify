function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('wcukNotify:Alert')
AddEventHandler('wcukNotify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

-- Example Commands - Delete them

RegisterCommand('success', function()
	exports['wcukNotify']:Alert("SUCCESS", "You have sent <span style='color:#47cf73'>420€</span> to Tommy!", 5000, 'success')
end)

RegisterCommand('info', function()
	exports['wcukNotify']:Alert("INFO", "The Casino has opened!", 5000, 'info')
end)

RegisterCommand('error', function()
	exports['wcukNotify']:Alert("ERROR", "Please try again later!", 5000, 'error')
end)

RegisterCommand('warning', function()
	exports['wcukNotify']:Alert("WARNING", "You are getting nervous!", 5000, 'warning')
end)

RegisterCommand('phone', function()
	exports['wcukNotify']:Alert("SMS", "<span style='color:#f38847'>Tommy: </span> Where are you?", 5000, 'phonemessage')
end)

RegisterCommand('longtext', function()
	exports['wcukNotify']:Alert("LONG MESSAGE", "Lorem ipsum dolor sit amet, consectetur adipiscing elit e pluribus unum.", 5000, 'neutral')
end)