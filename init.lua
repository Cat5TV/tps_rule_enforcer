-- These offenses will result in a kick.
local kick = {
	"anal",
  "anus",
  "arse",
  "ass",
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
  "bum",
  "butt",
  "buttplug",
  "clitoris",
  "cock",
  "coon",
  "crap",
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
  "flange",
  "Goddamn",
  "God damn",
  "hell",
  "homo",
  "jerk",
  "jizz",
  "knobend",
  "knob end",
  "labia",
  "lmao",
  "lmfao",
  "muff",
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
  "hell",
  "dingus",
  "idiot",
  "buttpirate",
  "honkey",
  "kike"
  
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
