
return {
  ["ct_drone_energyshot"] = {
		spikes = {
			air			= true,
			class		= [[explspike]],
			count		= 3,
			ground		= true,
			underwater	= true,
			useairlos	= true,
			water		= true,
			alwaysvisible	= false,
			properties		= {
				dir			= [[-10 r20,-10 r20,-10 r20]],
				width			= 22,
				length			= 1, --60,
				alpha			= 1,
				alphadecay		= 0.35,
				color			= 0, 1, 0,

			},
 
		},

		exhale = {
			air		= true,
			class		= [[CSimpleParticleSystem]],
			count		= 1,
			ground		= true,
			underwater	= true,
			useairlos	= true,
			water		= true,
			alwaysVisibile	= false,
			properties		= {
				sizeGrowth		= 0.16,
				sizeMod			= 1.0,
				pos			= [[0, 1, 0]], 
				gravity			= [[0, 0, 0]],
		

				texture			= [[smoke]],
				airdrag			= 0.8,
				colorMap		= [[1.0 0.8 0.5 0.1	0.15 0.15 0.15 0.2	0.0 0.0 0.0 0.01]],

				particleLifeSpread	= 15, 
				particleSpeedSpread	= 1,  
				particleSizeSpread	= 1,   
		
				particleLife		= 17,
				numParticles		= 2, 
				particleSpeed		= 1, 
				particleSize		= 8,
			
		
				emitVector		= [[0, 1, 0]], 
				emitRot			= 80,
				emitRotSpread		= 5, 
				directional		= 0, 
			},

		},

		exhale2 = {
			air		= true,
			class		= [[CSimpleParticleSystem]],
			count		= 1,
			ground		= true,
			underwater	= true,
			useairlos	= true,
			water		= true,
			alwaysvisible	= false,
			properties		= {
				sizeGrowth		= 0.16,
				sizeMod			= 1.0,
				pos			= [[0, 1, 0]], 
				gravity			= [[0, 0, 0]],
		

				texture			= [[smoke]],
				airdrag			= 0.8,
				colorMap		= [[1.0 0.7 0.4 0.1	0.1 0.1 0.1 0.2	0.0 0.0 0.0 0.01]],

				particleLifeSpread	= 15, 
				particleSpeedSpread	= 1,  
				particleSizeSpread	= 1,   
		
				particleLife		= 17,
				numParticles		= 2, 
				particleSpeed		= 1, 
				particleSize		= 8,
		
		
				emitVector		= [[0, 1, 0]], 
				emitRot			= 80,
				emitRotSpread		= 5, 
				directional		= 0, 

			},
		},
	},
}