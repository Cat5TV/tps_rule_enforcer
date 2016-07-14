-- These offenses will result in a kick.
local kick = {
  "anus",
  "arse",
  "ballsack",
  "balls",
  "bastard",
  "bitch",
  "biatch",
  "bloody",
  "blowjob",
  "blow job",
  "bollock",
  "bollok",
  "boner",
  "boob",
  "bugger",
  "buttplug",
  "clitoris",
  "cock",
  "coon",
  "cunt",
  "damn",
  "dick",
  "dildo",
  "dyke",
  "fag",
  "feck",
  "fellate",
  "fellatio",
  "felching",
  "fuck",
  "f u c k",
  "fudgepacker",
  "fudge packer",
  "funk you",
  "flange",
  "Goddamn",
  "God damn",
  "homo",
  "jerk",
  "jizz",
  "knobend",
  "knob end",
  "labia",
  "lmao",
  "lmfao",
  "nigger",
  "nigga",
  "omg",
  "penis",
  "piss",
  "poop",
  "prick",
  "pube",
  "pussy",
  "queer",
  "scrotum",
  "sex",
  "shit",
  "s hit",
  "sh1t",
  "slut",
  "smegma",
  "spunk",
  "tit",
  "tosser",
  "turd",
  "twat",
  "vagina",
  "wank",
  "whore",
  "wtf",
  "dingus",
  "idiot",
  "buttpirate",
  "honkey",
  "kike",
  "b*tch",
  "rape",
}

-- These offenses will receive a warning.
local warn = {
		"how old",
		"do you live",
		"u a girl",
		"u a boy",
		"u a guy",
		"be my girlfriend",
		"be my boyfriend",
}
minetest.register_on_chat_message(function(name, message)
	if not message then return end
	local msg = message:lower()
		for _, word in pairs(kick) do
			if msg:find(word) then
				minetest.kick_player(name, "( ** WATCH YOUR LANGUAGE ** )")
				message = "-- kicked for swearing. Message removed."
				return message
			end
		end
		for _, word in pairs(warn) do
			if msg:find(word) then
				minetest.chat_send_player(name,"RULE REMINDER: If you ask that, you will be banned.")
				message = "-- needs to read the rules again. Message removed."
				return message
			end
		end
	end)
