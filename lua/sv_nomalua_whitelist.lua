
function NOMALUA.AddWhiteListElement(filename, linenum, checktype)
	table.insert(NOMALUA.Whitelist, {file=filename, line=linenum, check=checktype})
end


function NOMALUA.AddDefaultWhiteListElements()
	-- remove false positives from own check code
	NOMALUA.AddWhiteListElement("addons/nomalua/lua/sv_nomalua_checkdefs.lua", 0, "*")

	-- CAC false positives
	--NOMALUA.AddWhiteListElement("addons/cac%-release%-.*.lua", 0, "*")

	-- ULB/ULX false positives
	--NOMALUA.AddWhiteListElement("addons/ulib/lua/ulib/server/player.lua", 0, NOMALUA.CheckTypes.BANMGMT)
end

