local options = {
  {
    key    = 'rocklayout',
    name   = 'Minerals Layout',
    desc   = 'Choose different mineral layouts',
    type   = 'list',
    def    = '0',
    items  = {
			{ key = '0', name = "Normal", desc = "Normal mineral density" },
			{ key = '1', name = "Hill", desc = "Minerals on the hills" },
  		 },
  }


}
return options