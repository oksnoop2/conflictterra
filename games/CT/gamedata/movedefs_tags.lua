-- names are lowercase to save effort
tagList = {
	defaults = {
		crushstrength	= 10, 
		minwaterdepth	= 10,
		maxwaterdepth	= 0,
		submarine		= 0,
		maxslope		= 60,
		depthmod		= 0.1,
		slopemod		= 4.0,
		heatmapping		= 1,
		heatmod			= 50,
		heatproduced	= 60,
		footprintx		= 1,
		footprintz		= 1,
	},
	-- tags that have a same name but 0 relevance to the unit def.
	tagIgnoreList = {
		minwaterdepth	= 1,
		maxwaterdepth	= 1,
		maxslope		= 1,
	},

}
return tagList
