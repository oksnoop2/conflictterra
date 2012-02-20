--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Custom Icon & Caption",
    desc      = "Sets a custom icon and caption for CT on your OS's task bar.",
    author    = "Sanada, using examples from Knorke and co.",
    date      = "20 Feb 2012",
    license   = "GNU GPL, v2 or later",
    layer     = 5,
    enabled   = true
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


Spring.SetWMCaption("Conflict Terra")
Spring.SetWMIcon("bitmaps\\ct_custom_icon.bmp")


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------