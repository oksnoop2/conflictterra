	--Armor Defs


	local armorDefs = {

		Cruiser  =  {
			--NKG--


			--combat cruisers
			"bprimarycruiser",
			"bflagship",
			"bmissilecruiser",
			"bbattlecruiser",
			"btransportcruiser",

			--economy cruisers
			"bsupplydepotmobile",

			--factory cruisers
			"bmechcruiser2",
			"btankcruiser",
			"baircruiser",
  		},


		Building  =  {
			--NKG--


			--landed cruisers
			--T1
			"bprimarycruiserbase",
			"bprimarycruiserbaseai",
			"bsupplydepot",
			"bsupplydepotai",
			"bmechcruiserfactory",
			"btankcruiserfactory",
			"baircruiserfactory",

			--economy buildings
			"bmex",
			"bpowerplant",
			"badvpowerplant",
			"bseapowerplant",

			--defenses
			--T1
			"bantitankmine",
			"bcameratower",
			"bradartower",
			"bjammertower",
			"blandturret",
			"bairturret",
			"blandnavalturret",
			"bgatlingturret",
			"bsearadartower",
			"btorpedoturret",
			--T2
			"badvlandturret",
			"badvairturret",
			"badvlandnavalturret",
			"badvgatlingturret",
			"badvsearadartower",
			"badvtorpedoturret",

			--factory
			--T1
			"bbeacon",
			"bshipyard",


			--DRONE--


			"kgrounddronestructure",
			"kdroneminingtower",
			"kairdronestructure",	
		},

		Mech  =  {
			--NKG--


			--T1
			"bengineer",
			"bscoutmech",
			"bbasicmech",
			"bmissilemech",
			"bantitankmech",
			"bhovermech",
			"bsiegemech",
			"bsnipermech",
			"bacemech",
			--T2
			"bassaultmech",
			"bheavymissilemech",
			"bheavysiegemech",
			"badvhovermech",
			"bheavyassaultmech",


			--DRONE--


			"kdroneengineer",
			"kdronewarrior",
			"klightdrone",
		},

		Tank = {
			--NKG--


			--T1
			"bminer",
			"bscoutvehicle",
			"bassaulttank",
			"bmissiletank",
			"baabuggy",
			"breztank",
			"bartillery",
			"bgeneraltank",
			--T2
			"bheavyassaulttank",
			"bheavymissiletank",
			"baatruck",
			"baatruckturret",
			"bvhsa",
			"bempcannon",


			--DRONE--


			"kdroneroller",
			"ktridroneroller",
		},

		Aircraft = {
			--NKG--


			--flying mechs
			"bflyingmech",
			"bheavyflyingmech",

			--aircraft
			"bscoutplane",
			"bfighter",
			"blaserplane",
			"brocketplane",
			"bbomber",


			--DRONE--


			"kairdrone",
			"kdiairdrone",
			"ktriairdrone",


			--PNF--

			--T1
			"pnfighter",		
		},

		Ship = {
			--NKG--


			"bseaengineer1",
			"bseaengineer2",
			"bbattleship",
			"brocketbattleship",
			"bartilleryship",
			"baaship",
			"bradarship",
		},

		Sub = {
			--NKG--


			"bsubmarine",
		},

		Meteor = {
			"bmeteorimpact",
			"bmeteorimpact_big",
			"bminerals",
		},

		Drone = {
		},

		Spare1 = {
		},

		Spare2 = {
		},

		Spare3 = {
		},

	}

	for categoryName, categoryTable in pairs(armorDefs) do
		local t = {}
		for _, unitName in pairs(categoryTable) do
			t[unitName] = 1
		end
		armorDefs[categoryName] = t
	end

	return armorDefs