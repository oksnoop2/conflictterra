-- $Id: ModOptions.lua 3323 2008-11-29 19:55:06Z reivanen $

--  Custom Options Definition Table format

--  NOTES:
--  - using an enumerated table lets you specify the options order

--
--  These keywords must be lowercase for LuaParser to read them.
--
--  key:      the string used in the script.txt
--  name:     the displayed name
--  desc:     the description (could be used as a tooltip)
--  type:     the option type
--  def:      the default value
--  min:      minimum value for number options
--  max:      maximum value for number options
--  step:     quantization step, aligned to the def value
--  maxlen:   the maximum string length for string options
--  items:    array of item strings for list options
--  scope:    'all', 'player', 'team', 'allyteam'      <<< not supported yet >>>
--


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local opts= {
	{
		key="comm",
		name="Choose start unit.",
		desc="Choose the unit every player starts with",
		type="list",
		def="standard",
		items = {
			{ key = "standard", name = "Flagship", desc = "Start with the flagship."  },
			{ key = "base", name = "Moblie HQ", desc = "Start with the Mobile HQ." },
			{ key = "bengineer2", name = "Advanced Engineer", desc = "Start with the advanced engineer." },
			
		},
	},
    

}

return opts
