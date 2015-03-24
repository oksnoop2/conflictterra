# Table of Contents #
  * [Introduction](http://code.google.com/p/conflictterra/wiki/MapsAndRocks#Introduction)
  * [Technical Details](http://code.google.com/p/conflictterra/wiki/MapsAndRocks#Technical_Details)
  * [Details](http://code.google.com/p/conflictterra/wiki/MapsAndRocks#Details)
  * [Coordinate Helper Widget](http://code.google.com/p/conflictterra/wiki/MapsAndRocks#Coordinate_Helper_Widget)
  * [Map Options & Advanced Stuff](http://code.google.com/p/conflictterra/wiki/MapsAndRocks#Map_Options_&_Advanced_Stuff)
  * [Guide With Pictures](http://code.google.com/p/conflictterra/wiki/MapsAndRocks#Guide_With_Pictures)

# Introduction #
This page explains how to add start minerals to your map.<br>
Mappers can define where they want to place mineable resources on the map with a simple config file.<br>
This is preferable for mappers who want not to rely on a <not yet added> function that will automagically place rocks at gamestart.<br>
For a TA map, you would not want your metal or geo spots placed by some script either, would you?<br>
<br>
The unitname of the startressource is: bminerals<br>
After balance, testing etc. is done it should not be changed anymore.<br>
At the moment it is worth 500 metal and a worker can carry 25 metal.<br>

<h1>Technical Details</h1>
There is a gadget: tp_resourcespawner.lua<br>
It looks for a map confile filed with the name of:<br>
MAPNAME_res.lua<br>
This map file returns a table of rock positions, the gadget reads these positions and then places them.<br>
This is different to the old way, where the map would try to spawn the rocks itself, causing problems if the mod did no have a "bminerals" unit etc.<br>
<br>
<br>
<h1>Details</h1>
Here are some example configs:<br>
<a href='http://code.google.com/p/conflictterra/source/browse/#svn/games/CT/mapconfigs'>http://code.google.com/p/conflictterra/source/browse/#svn/games/CT/mapconfigs</a>

The Lua is the same for configs that are included in the map.<br>

A map with a rock layout file:<br>
<a href='http://www.file-upload.net/download-2966227/CT_Testgebiet.sd7.html'>http://www.file-upload.net/download-2966227/CT_Testgebiet.sd7.html</a><br>
Open up the CT_Testgebiet_res.lua file<br>
NOTE: rename it to fit your own map name!<br>
ie MyCoolMap_res.lua<br>
<br>
It is adviced to use this map as an example instead of Eureka or Fishbone Ridge.<br>
They both do work but there are some problems with their Lua.<br>
For example their Lua directly spawns the rocks via Spring.CreateUnit ("bminerals")<br>
Of course this causes problems if the mod does not have such a unit.<br>
<br>
<br>
Scroll down to<br><br>

<pre><code>---coordinates go in between here---<br>
SpawnResource (1722 , 3361)   -- left start field<br>
SpawnResource (1574 , 3318)   -- <br>
SpawnResource (1880 , 3412)   -- <br>
SpawnResource (1373 , 3272)   -- <br>
SpawnResource (2042 , 3482)   -- <br>
...<br>
...<br>
---coordinates go in between here---<br>
</code></pre>


Change the numbers to where you want rocks to appear at gamestart.<br>
The coordinates are the same as displayed in Spring's ingame tooltip.<br>
Do not touch the other stuff in the file unless you know what you are doing.<br>
In this case experiments are encouraged :) <br>
Eitherwise please note that a faulty res.lua file will not stop your map from loading but no rocks will be spawned or errors might appear in the console.<br>
<br>
<h1>Coordinate Helper Widget</h1>
<a href='http://code.google.com/p/conflictterra/source/browse/games/CT/luaui/widgets/tp_coordinate_help.lua?spec=svn686&r=686'>Coordinate Helper Widget</a><br>

Press F11 and enable it.<br>
Every time you put down a marker it will log its position in infolog.txt and also<br>
in MAPNAME_coordinates.txt<br>
You can then copy the coordinates into your maps config file.<br>
NOTE: if you enter a text for the marker it will also be logged.<br>
It is probally a good idea to "name" your rocks so you do not get confused.<br>
ie like you see in the example above.<br>

<h1>Map Options & Advanced Stuff</h1>
Maps are not limited to return a static rocklayout.<br>
You could put in conditions, etc. and place more rocks based on player number or scan your heightmap for hills higher than X and only put rocks there.<br>
Or example you could return different rock layouts (res tables) based on a choice made from mapoptions. Or add more rocks if player number > 2.<br>

This will be explained in depth later, if you are somewhat familiar with Lua you can probably figure it out. <br>
If you have a special idea/trouble with your map you can also ask Knorke.<br>

The config file can also include the following in the return section of the script for the described effects:<br>
<br>
<table><thead><th>featurehandling="remove"</th><th>Remove metal features.</th></thead><tbody>
<tr><td>featurehandling="replace"||Replace metal features with bminerals.  DEFAULT if</td></tr>
this tag is missing.<br>
<tr><td>featurehandling="donothing"</td><td>Does nothing.</td></tr></tbody></table>

You can see <a href='http://code.google.com/p/conflictterra/source/browse/games/CT/mapconfigs/MoonQ20x_res.lua?spec=svn835&r=835#72'>MoonQ20x_res.lua</a> for an example.<br>
<br>
<h1>Guide With Pictures</h1>
A guide to Proper Stoning<br>
<br>
Conflict Terra’s economy is based on harvesting rocks.<br>
<br>
This guide explains how:<br>
-map makers can place CT rocks on their map<br>
-everybody<b>can put rocks on his favorite spring map</b>

<b>everybody with access to CT’s SVN<br>
/join #ct for details</b>

1) Load your map in Spring and pause at gamestart so you are not interrupted by the AI attacking, meteorites or whatever.<br>
<br>
2) You will notice that Conflict Terra’s resource spawner has already put some rocks on the metal spots. Ignore those for now, they will not appear as soon as your config is finished.<br>
<br>
3) Press f11 to show the widget menu and enable the “coordinate helper”.<br>
<br>
4)The position of each marker you place will be logged to a file. Let’s with a small rock field near the players start position. It’s a good idea to put a description  on your markers because this text will also be logged. It will be helpful when you want to modify the layout later. Notice the console output of the coordinate widget.<br>
<br>
<br>
5)The continue adding markers where ever you rocks to appear. Here I have made a line along and across the river between the mountains. Again, notice the markers with description.<br>
<br>
6)Finished your layout? Close Spring.<br>
<br>
7) Look for the output created by the coordindate widget. It will be in your spring directory, next to the infolog.txt and the maps and mods folders.<br>
<br>
8)  Create a config file named MAPNAME_res.lua. MAPNAME replaced with the name of your name. IE in this case “Terra” results in “Terra_res.lua”.<br>
<br>
9) Copy and Paste coordinates. You can get this file from the Conflict Terra wiki or use another map config.<br>
<br>
10) Save your config in the mapconfigs folder of Conflict Terra or if you are the map maker place in the maps folder of the map.<br>
<br>
<br>
note: you might have to use rightclick -> "view image" to see the image unscaled and in full resolution<br>
<img src='http://h-3.abload.de/img/properstoningr1tgm1.jpg' />

<h1>Other map settings</h1>
Properties of meteor storms can be adjusted.<br>
Map features can be replaced with rocks, removed or be ignored.<br>
<br>
See this file for details:<br>
<a href='http://code.google.com/p/conflictterra/source/browse/games/CT/mapconfigs/docu.txt'>http://code.google.com/p/conflictterra/source/browse/games/CT/mapconfigs/docu.txt</a>
Or look at the examples in mapconfigs\ folder