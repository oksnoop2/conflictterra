--[[

Syntax is like this:
local upgradeDefs = {
	unitname = <upgrades>,
	unitname = <upgrades>,
	...
	unitname = <upgrades>
}
<upgrades>
	{
		<upgrade option 1>, -- first upgrade option
		<upgrade option 2>, -- second upgrade option
		...
		<upgrade option n>  -- nth upgrade option
	}

<upgrade options>
		{
			into  = 'unitname', -- what it upgrades into, case sensitive
			mcost = ###,        -- metal cost of upgrading. Optional, defaults to 0
			ecost = ###,        -- energy cost of upgrading. Optional, defaults to 0
			time  = ###,        -- seconds taken to upgrade. Optional, defaults to 0
			
				-- runs a function upon defined event. Optional, defaults to nothing
				-- run when a unit finishes upgrading
			onUpgrade = function(oldUnitID, newUnitID, upgradeUnit) <statments> end,
				-- run when a unit starts upgrading, or stops stalling
			onStart   = function(oldUnitID, newUnitID, upgradeUnit) <statments> end,
				-- run when the Stop command is sent if upgrading
			onStop    = function(oldUnitID, newUnitID, upgradeUnit) <statments> end,
				-- run when a unit starts stalling (ie. no resources)
			onStall   = function(oldUnitID, newUnitID, upgradeUnit) <statments> end,
		}



  Note: All unitnames are case sensitive!
]]--



local upgradeDefs = {

	bflagship2 = {
		{
			into = 'bflagshipbase',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Deploy',
			name = 'Mobile Headquarters',
			desc = 'Deploys into Mobile Headquarters.  Can lift back off as Flagship.',
			notext = false,
			buildpic = 'bflagshipbase.png',
		},
		{
			into = 'bbattleflagship',
			mcost = 9600,
			ecost = 12000,
			time = 120,
			buttonname = 'Upgrade',
			name = 'Battle Flagship',
			desc = 'Upgrades into Battle Flagship.  Cannot deploy into Mobile Headquarters.',
			notext = false,
			buildpic = 'bbattleflagship.png',
		},
	},

	bflagshipbase = {
		{
			into = 'bflagship2',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Lift Off',
			name = 'Flagship',
			desc = 'Lifts off as Flagship.  Can deploy back into Mobile Headquarters.',
			notext = false,
			buildpic = 'bflagship2.png',
		},
	},

	bmex = {
		{
			into = 'badvmex',
			mcost = 400,
			ecost = 500,
			time = 60,
			buttonname = 'Upgrade',
			name = 'Advanced Extractor',
			desc = 'Upgrades into Advanced Extractor.',
			notext = false,
			buildpic = 'badvmex.png',
		},
	},

	baatruck = {
		{
			into = 'baatruckturret',
			mcost = 0,
			ecost = 0,
			time = 2,
			buttonname = 'Deploy',
			name = 'Anti-Air Truck Turret Mode',
			desc = 'Deploys into Anti-Air Truck Turret Mode.',
			notext = false,
			buildpic = 'baatruckturret.png',
		},
	},

	baatruckturret = {
		{
			into = 'baatruck',
			mcost = 0,
			ecost = 0,
			time = 2,
			buttonname = 'Pack Up',
			name = 'Anti-Air Truck',
			desc = 'Packs up into Anti-Air Truck.',
			notext = false,
			buildpic = 'baatruck.png',
		},
	},

	bempcannon = {
		{
			into = 'bempcannonturret',
			mcost = 0,
			ecost = 0,
			time = 3,
			buttonname = 'Deploy',
			name = 'EMP Cannon Turret Mode',
			desc = 'Deploys into EMP Cannon Turret Mode.',
			notext = false,
			buildpic = 'bempcannonturret.png',
		},
	},


	bempcannonturret = {
		{
			into = 'bempcannon',
			mcost = 0,
			ecost = 0,
			time = 3,
			buttonname = 'Pack Up',
			name = 'EMP Cannon',
			desc = 'Packs up into EMP Cannon.',
			notext = false,
			buildpic = 'bempcannon.png',
		},
	},

	bmetaltruck = {
		{
			into = 'bmetaltruckdepot',
			mcost = 0,
			ecost = 0,
			time = 2,
			buttonname = 'Deploy',
			name = 'Metal Supply Truck Depot',
			desc = 'Deploys into Metal Supply Truck Depot.',
			notext = false,
			buildpic = 'bmetaltruckdepot.png',
		},
	},


	bmetaltruckdepot = {
		{
			into = 'bmetaltruck',
			mcost = 0,
			ecost = 0,
			time = 2,
			buttonname = 'Pack Up',
			name = 'Metal Supply Truck',
			desc = 'Packs up into Metal Supply Truck.',
			notext = false,
			buildpic = 'bmetaltruck.png',
		},
	},

	benergytruck = {
		{
			into = 'benergytruckdepot',
			mcost = 0,
			ecost = 0,
			time = 2,
			buttonname = 'Deploy',
			name = 'Power Supply Truck Depot',
			desc = 'Deploys into Power Supply Truck Depot.',
			notext = false,
			buildpic = 'benergytruckdepot.png',
		},
	},


	benergytruckdepot = {
		{
			into = 'benergytruck',
			mcost = 0,
			ecost = 0,
			time = 2,
			buttonname = 'Pack Up',
			name = 'Power Supply Truck',
			desc = 'Packs up into Power Supply Truck.',
			notext = false,
			buildpic = 'benergytruck.png',
		},
	},

	bmetalsupplyship = {
		{
			into = 'bmetalsupplyshipdepot',
			mcost = 0,
			ecost = 0,
			time = 4,
			buttonname = 'Deploy',
			name = 'Metal Supply Cruiser Depot',
			desc = 'Deploys into Metal Supply Cruiser Depot.',
			notext = false,
			buildpic = 'bmetalsupplyshipdepot.png',
		},
	},


	bmetalsupplyshipdepot = {
		{
			into = 'bmetalsupplyship',
			mcost = 0,
			ecost = 0,
			time = 4,
			buttonname = 'Pack Up',
			name = 'Metal Supply Cruiser',
			desc = 'Packs up into Metal Supply Cruiser.',
			notext = false,
			buildpic = 'bmetalsupplyship.png',
		},
	},

	benergysupplyship = {
		{
			into = 'benergysupplyshipdepot',
			mcost = 0,
			ecost = 0,
			time = 4,
			buttonname = 'Deploy',
			name = 'Power Supply Cruiser Depot',
			desc = 'Deploys into Power Supply Cruiser Depot.',
			notext = false,
			buildpic = 'benergysupplyshipdepot.png',
		},
	},


	benergysupplyshipdepot = {
		{
			into = 'bmetalsupplyship',
			mcost = 0,
			ecost = 0,
			time = 4,
			buttonname = 'Pack Up',
			name = 'Power Supply Cruiser',
			desc = 'Packs up into Power Supply Cruiser.',
			notext = false,
			buildpic = 'benergysupplyship.png',
		},
	},

	bmechfactory = {
		{
			into = 'badvmechfactory',
			mcost = 800,
			ecost = 1000,
			time = 60,
			buttonname = 'Upgrade',
			name = 'Advanced Mech Factory',
			desc = 'Upgrades into Advanced Mech Factory.',
			notext = false,
			buildpic = 'badvmechfactory.png',
		},
	},

	btankfactory = {
		{
			into = 'badvtankfactory',
			mcost = 800,
			ecost = 1000,
			time = 60,
			buttonname = 'Upgrade',
			name = 'Advanced Tank Factory',
			desc = 'Upgrades into Advanced Tank Factory.',
			notext = false,
			buildpic = 'badvtankfactory.png',
		},
	},

	bairport = {
		{
			into = 'badvairport',
			mcost = 800,
			ecost = 1000,
			time = 60,
			buttonname = 'Upgrade',
			name = 'Advanced Airport',
			desc = 'Upgrades into Advanced Airport.',
			notext = false,
			buildpic = 'badvairport.png',
		},
	},

	bshipyard = {
		{
			into = 'badvshipyard',
			mcost = 800,
			ecost = 1000,
			time = 60,
			buttonname = 'Upgrade',
			name = 'Advanced Shipyard',
			desc = 'Upgrades into Advanced Shipyard.',
			notext = false,
			buildpic = 'badvshipyard.png',
		},
	},

	bsubpens = {
		{
			into = 'badvsubpens',
			mcost = 800,
			ecost = 1000,
			time = 60,
			buttonname = 'Upgrade',
			name = 'Advanced Sub Pens',
			desc = 'Upgrades into Advanced Sub Pens.',
			notext = false,
			buildpic = 'badvsubpens.png',
		},
	},

	blanddefship = {
		{
			into = 'blanddefmobileship',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Mobile Mode',
			name = 'Anti-Land Defense Ship (Mobile Mode)',
			desc = 'Changes to Anti-Land Defense Ship (Mobile Mode).  Cannot attack.',
			notext = false,
			buildpic = 'blanddefmobileship.png',
		},
	},

	blanddefmobileship = {
		{
			into = 'blanddefship',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Attack Mode',
			name = 'Anti-Land Defense Ship',
			desc = 'Changes to Anti-Land Defense Ship.  Cannot move.',
			notext = false,
			buildpic = 'blanddefship.png',
		},
	},

	bairdefship = {
		{
			into = 'bairdefmobileship',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Mobile Mode',
			name = 'Anti-Air Defense Ship (Mobile Mode)',
			desc = 'Changes to Anti-Air Defense Ship (Mobile Mode).  Cannot attack.',
			notext = false,
			buildpic = 'bairdefmobileship.png',
		},
	},

	bairdefmobileship = {
		{
			into = 'bairdefship',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Attack Mode',
			name = 'Anti-Air Defense Ship',
			desc = 'Changes to Anti-Air Defense Ship.  Cannot move.',
			notext = false,
			buildpic = 'bairdefship.png',
		},
	},

	bnavydefship = {
		{
			into = 'bnavydefmobileship',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Mobile Mode',
			name = 'Anti-Navy Defense Ship (Mobile Mode)',
			desc = 'Changes to Anti-Navy Defense Ship (Mobile Mode).  Cannot attack.',
			notext = false,
			buildpic = 'bnavydefmobileship.png',
		},
	},

	bnavydefmobileship = {
		{
			into = 'bnavydefship',
			mcost = 0,
			ecost = 0,
			time = 5,
			buttonname = 'Attack Mode',
			name = 'Anti-Navy Defense Ship',
			desc = 'Changes to Anti-Navy Defense Ship.  Cannot move.',
			notext = false,
			buildpic = 'bnavydefship.png',
		},
	},
	

}


-------------------------------------------------
-- Dont touch below here
-------------------------------------------------

for _, upgrades in pairs(upgradeDefs) do
	for _, upgrade in ipairs(upgrades) do
		if (upgrade.mcost == nil) then upgrade.mcost = 0 end
		if (upgrade.ecost == nil) then upgrade.ecost = 0 end
		if (upgrade.time == nil)  then upgrade.time  = 0 end
	end
end

return upgradeDefs