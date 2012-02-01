	--ct_smoke2
	--Smoke2
	--by Sanada

	return {
		["ct_smoke2"] = {
			bitmapmuzzlesmoke1 = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CSimpleParticleSystem]],
				count              = 1,
				underwater         = 1,
				properties = {
					emitVector		= [[0, 0, 1]],
					emitRot			= 90,
					emitRotSpread		= 1,
					emitMul			= [[0, 1, 0]],
					particleSpeed		= 0.5,
					particleSpeedSpread	= 2,

					gravity			= [[0, 0, 0]],
					airdrag			= 1,

					particleSize		= 0.25,
					particleSizeSpread	= 5,
					sizeGrowth		= 0.25,
					sizeMod			= 1,

					directional		= true,
					texture			= [[ct_smokecloud]],
					colorMap		= [[0.3 0.3 0.3 0.9	0.3 0.3 0.3 0.5	0.3 0.3 0.3 0.25		0.5 0.5 0.5 0.01]],

					numParticles		= 8,
					particleLife		= 8,
					particleLifeSpread	= 5,

					pos                     = [[0, 0, 1]]
				},
			},
		},
	}
