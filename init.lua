minetest.register_privilege("tps_rules", "Perform commands related to tps_rule_enforcer.")

minetest.register_chatcommand("tps_warn", {
	description = "Warn a player that they are breaching or coming close to breaching the rules.",
	privs = {tps_rules=true},
	func = tps_warn
})

local function tps_warn(player)
	local pname = minetest.get_player_by_name(player)
	local target_coords=pname:getpos()
	minetest.sound_play("alert", {
		to_player = player:get_player_name(),
		gain = 1.0,
	})
	minetest.chat_send_player(player, pname .. " *** THIS IS A WARNING *** Follow the rules of this server or a moderator will retaliate in kind.")
end


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
  "s.e.x.",
  "shit",
  "s hit",
  "sh1t",
  "slut",
  "smegma",
  "spunk",
  "tits",
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
		"ur phone num",
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
