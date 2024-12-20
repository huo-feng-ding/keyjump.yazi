-- stylua: ignore
local SPECIAL_KEYS = {
	"<Space>", "<Esc>", "<Enter>",
	"<Left>", "<Right>", "<Up>", "<Down>",
	"h", "j", "k", "l",
	"J", "K",
	"<A-j>", "<A-k>",
	"z",
	"<C-j>", "<C-k>",
	"y", "p",
}

-- stylua: ignore
local SINGLE_KEYS = {
	"p", "b", "e", "t", "a", "o", "i", "n", "s", "r", "h", "l", "d", "c",
	"u", "m", "f", "g", "w", "v", "k", "j", "x", "y", "q"
}

-- stylua: ignore
local NORMAL_DOUBLE_KEYS = {
	"au", "ai", "ao", "ah", "aj", "ak", "al", "an", "su", "si", "so", "sh",
	"sj", "sk", "sl", "sn", "du", "di", "do", "dh", "dj", "dk", "dl", "dn",
	"fu", "fi", "fo", "fh", "fj", "fk", "fl", "fn", "eu", "ei", "eo", "eh",
	"ej", "ek", "el", "en", "ru", "ri", "ro", "rh", "rj", "rk", "rl", "rn",
	"cu",

	"ci", "co", "ch", "cj", "ck", "cl", "cn", "wu", "wi", "wo", "wh", "wj",
	"wk", "wl", "wn", "tu", "ti", "to", "th", "tj", "tk", "tl", "tn", "vu",
	"vi", "vo", "vh", "vj", "vk", "vl", "vn", "xu", "xi", "xo", "xh", "xj",
	"xk", "xl", "xn", "bu", "bi", "bo", "bh", "bj", "bk", "bl", "qp", "qy",
	"qm",

	"bn", "qu", "qi", "qo", "qh", "qj", "qk", "ql", "qn", "ap", "ay", "am",
	"fp", "fy", "fm", "ep", "ey", "em", "sp", "sy", "sm", "dp", "dy", "dm",
	"rp", "ry", "rm", "cp", "cy", "cm", "wp", "wy", "wm",
	"xp", "xy", "xm", "tp", "ty", "tm", "vp", "vy", "vm", "bp", "by", "bm",

}

-- stylua: ignore
local GLOBAL_CURRENT_DOUBLE_KEYS = {
	"au", "ai", "ao", "ah", "aj", "ak", "al", "an", "su", "si", "so", "sh",
	"sj", "sk", "sl", "sn", "du", "di", "do", "dh", "dj", "dk", "dl", "dn",
	"fu", "fi", "fo", "fh", "fj", "fk", "fl", "fn", "eu", "ei", "eo", "eh",
	"ej", "ek", "el", "en", "ru", "ri", "ro", "rh", "rj", "rk", "rl", "rn",
	"cu",

	-- left hand double key
	"aq", "aw", "ae",
	"qw", "qe", "qr",
	"we", "wr", "wt",
	"er", "et", "es",
	"rt", "rs", "rd",
	"ts", "td", "tf",
	"sd", "sf", "sz",
	"ar", "at", "as",
	"qt", "qs", "qd",
	"ws", "wd", "wf",
	"ed", "ef", "ez",
	"rf", "rz", "rx",
	"tz", "tx", "tc",
	"sx", "sc", "sv",
	"ad", "af", "az",
	"qf", "qz", "qx",
	"wz", "wx", "wc",
	"ex", "ec", "ev",
	"rc", "rv", "rb",
	"tv", "tb", "fz",

}

-- stylua: ignore
local GLOBAL_PREVIEW_DOUBLE_KEYS = {
	"ci", "co", "ch", "cj", "ck", "cl", "cn", "wu", "wi", "wo", "wh", "wj",
	"wk", "wl", "wn", "tu", "ti", "to", "th", "tj", "tk", "tl", "tn", "vu",
	"vi", "vo", "vh", "vj", "vk", "vl", "vn", "xu", "xi", "xo", "xh", "xj",
	"xk", "xl", "xn", "bu", "bi", "bo", "bh", "bj", "bk", "bl", "qp", "qy",
	"qm",

	-- left hand double key
	"sb", "df", "dz",
	"ax", "ac", "av",
	"qc", "qv", "qb",
	"wv", "wb", "cv",
	"eb", "xc", "xv",
	"zx", "zc", "zv",
	"fx", "fc", "fv",
	"dx", "dc", "dv",
	"ab", "ba", "cb",
	"xb", "zb", "fb",
	"db", "vb", "qa",
	"wq", "ew", "re",
	"tr", "fd", "cx",
	"st", "zf", "vc",
	"ds", "xz", "bv",
	"wa", "vx", "cf",
	"eq", "bc", "vz",
	"rw", "ea", "bx",
	"te", "rq", "ra",
	"sr", "tw", "tq",
}

-- stylua: ignore
local GLOBAL_PARRENT_DOUBLE_KEYS = {
	"bn", "qu", "qi", "qo", "qh", "qj", "qk", "ql", "qn", "ap", "ay", "am",
	"fp", "fy", "fm", "ep", "ey", "em", "sp", "sy", "sm", "dp", "dy", "dm",
	"rp", "ry", "rm", "cp", "cy", "cm", "wp", "wy", "wm", "xp", "xy", "xm", 
	"tp", "ty", "tm", "vp", "vy", "vm", "bp", "by", "bm",

	-- left hand double key
	"dt","se","sw",
	"fs","dr","de",
	"zd","ft","fr",
	"xf","zs","zt",
	"cz","xd","xs",
	"cd","cd","da",
	"vf","vf","fq",
	"bz","bz","zw",
	"ta","ta","xe",
	"sq","sq","cr",
	"dw","dw","vt",
	"fe","fe","bs",
	"zr","zr","fa",
	"xt","xt","zq",
	"cs","cs","xw",
	"ce","cw","vw",
	"vr","ve","be",
	"bt","br","ca",
	"za","xa","vq",
	"xq","cq","bw",

}

local INPUT_CANDS = {
	{ on = "a" }, { on = "b" }, { on = "c" }, { on = "d" }, { on = "e" },
	{ on = "f" }, { on = "g" }, { on = "h" }, { on = "i" }, { on = "j" },
	{ on = "k" }, { on = "l" }, { on = "m" }, { on = "n" }, { on = "o" },
	{ on = "p" }, { on = "q" }, { on = "r" }, { on = "s" }, { on = "t" },
	{ on = "u" }, { on = "v" }, { on = "w" }, { on = "x" }, { on = "y" },
	{ on = "z" }, { on = "<Esc>" },{ on = "<Backspace>" },{ on = "<Space>" },
	{ on = "<Enter>" },
	{ on = "<Left>" }, { on = "<Right>" }, { on = "<Up>" }, { on = "<Down>" },
	{ on = "<A-j>" }, { on = "<A-k>" },
	{ on = "<C-j>" }, { on = "<C-k>" },
	{ on = "J" }, { on = "K" },

}

local INPUT_KEY = {
	"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
	"o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "<Esc>","<Backspace>","<Space>",
	"<Enter>",
	"<Left>", "<Right>" , "<Up>" , "<Down>" ,
	"<A-j>", "<A-k>" ,
	"<C-j>", "<C-k>" ,
	"J", "K",
}

-- stylua: ignore
local SPECIAL_CANDS = {
	{ on = "<Space>" }, { on = "<Esc>" }, { on = "<Enter>" },
	{ on = "<Left>" }, { on = "<Right>" }, { on = "<Up>" }, { on = "<Down>" },
	{ on = "h" }, { on = "j" }, { on = "k" }, { on = "l" },
	{ on = "J" }, { on = "K" },
	{ on = "<A-j>" }, { on = "<A-k>" },
	{ on = "z" },
	{ on = "<C-j>" }, { on = "<C-k>" },
	{ on = "y" }, { on = "p" },
}

-- stylua: ignore
local SIGNAL_CANDS = {
	{ on = "p" }, { on = "b" }, { on = "e" }, { on = "t" }, { on = "a" },
	{ on = "o" }, { on = "i" }, { on = "n" }, { on = "s" }, { on = "r" },
	{ on = "h" }, { on = "l" }, { on = "d" }, { on = "c" }, { on = "u" },
	{ on = "m" }, { on = "f" }, { on = "g" }, { on = "w" }, { on = "v" },
	{ on = "k" }, { on = "j" }, { on = "x" }, { on = "y" }, { on = "q" },
}

-- stylua: ignore
local NORMAL_DOUBLE_CANDS = {
	{ on = { "a", "u" } }, { on = { "a", "i" } }, { on = { "a", "o" } },
	{ on = { "a", "h" } }, { on = { "a", "j" } }, { on = { "a", "k" } },
	{ on = { "a", "l" } }, { on = { "a", "n" } }, { on = { "s", "u" } },
	{ on = { "s", "i" } }, { on = { "s", "o" } }, { on = { "s", "h" } },
	{ on = { "s", "j" } }, { on = { "s", "k" } }, { on = { "s", "l" } },
	{ on = { "s", "n" } }, { on = { "d", "u" } }, { on = { "d", "i" } },
	{ on = { "d", "o" } }, { on = { "d", "h" } }, { on = { "d", "j" } },
	{ on = { "d", "k" } }, { on = { "d", "l" } }, { on = { "d", "n" } },
	{ on = { "f", "u" } }, { on = { "f", "i" } }, { on = { "f", "o" } },
	{ on = { "f", "h" } }, { on = { "f", "j" } }, { on = { "f", "k" } },
	{ on = { "f", "l" } }, { on = { "f", "n" } }, { on = { "e", "u" } },
	{ on = { "e", "i" } }, { on = { "e", "o" } }, { on = { "e", "h" } },
	{ on = { "e", "j" } }, { on = { "e", "k" } }, { on = { "e", "l" } },
	{ on = { "e", "n" } }, { on = { "r", "u" } }, { on = { "r", "i" } },
	{ on = { "r", "o" } }, { on = { "r", "h" } }, { on = { "r", "j" } },
	{ on = { "r", "k" } }, { on = { "r", "l" } }, { on = { "r", "n" } },
	{ on = { "c", "u" } },

	{ on = { "c", "i" } }, { on = { "c", "o" } }, { on = { "c", "h" } },
	{ on = { "c", "j" } }, { on = { "c", "k" } }, { on = { "c", "l" } },
	{ on = { "c", "n" } }, { on = { "w", "u" } }, { on = { "w", "i" } },
	{ on = { "w", "o" } }, { on = { "w", "h" } }, { on = { "w", "j" } },
	{ on = { "w", "k" } }, { on = { "w", "l" } }, { on = { "w", "n" } },
	{ on = { "t", "u" } }, { on = { "t", "i" } }, { on = { "t", "o" } },
	{ on = { "t", "h" } }, { on = { "t", "j" } }, { on = { "t", "k" } },
	{ on = { "t", "l" } }, { on = { "t", "n" } }, { on = { "v", "u" } },
	{ on = { "v", "i" } }, { on = { "v", "o" } }, { on = { "v", "h" } },
	{ on = { "v", "j" } }, { on = { "v", "k" } }, { on = { "v", "l" } },
	{ on = { "v", "n" } }, { on = { "x", "u" } }, { on = { "x", "i" } },
	{ on = { "x", "o" } }, { on = { "x", "h" } }, { on = { "x", "j" } },
	{ on = { "x", "k" } }, { on = { "x", "l" } }, { on = { "x", "n" } },
	{ on = { "b", "u" } }, { on = { "b", "i" } }, { on = { "b", "o" } },
	{ on = { "b", "h" } }, { on = { "b", "j" } }, { on = { "b", "k" } },
	{ on = { "b", "l" } }, { on = { "q", "p" } }, { on = { "q", "y" } },
	{ on = { "q", "m" } },

	{ on = { "b", "n" } }, { on = { "q", "u" } }, { on = { "q", "i" } },
	{ on = { "q", "o" } }, { on = { "q", "h" } }, { on = { "q", "j" } },
	{ on = { "q", "k" } }, { on = { "q", "l" } }, { on = { "q", "n" } },
	{ on = { "a", "p" } }, { on = { "a", "y" } }, { on = { "a", "m" } },
	{ on = { "f", "p" } }, { on = { "f", "y" } }, { on = { "f", "m" } },
	{ on = { "e", "p" } }, { on = { "e", "y" } }, { on = { "e", "m" } },
	{ on = { "s", "p" } }, { on = { "s", "y" } }, { on = { "s", "m" } },
	{ on = { "d", "p" } }, { on = { "d", "y" } }, { on = { "d", "m" } },
	{ on = { "r", "p" } }, { on = { "r", "y" } }, { on = { "r", "m" } },
	{ on = { "c", "p" } }, { on = { "c", "y" } }, { on = { "c", "m" } },
	{ on = { "w", "p" } }, { on = { "w", "y" } }, { on = { "w", "m" } },
	{ on = { "x", "p" } }, { on = { "x", "y" } }, { on = { "x", "m" } },
	{ on = { "t", "p" } }, { on = { "t", "y" } }, { on = { "t", "m" } },
	{ on = { "v", "p" } }, { on = { "v", "y" } }, { on = { "v", "m" } },
	{ on = { "b", "p" } }, { on = { "b", "y" } }, { on = { "b", "m" } },


}

-- stylua: ignore
local GLOBAL_CURRENT_DOUBLE_CANDS = {
	{ on = { "a", "u" } }, { on = { "a", "i" } }, { on = { "a", "o" } },
	{ on = { "a", "h" } }, { on = { "a", "j" } }, { on = { "a", "k" } },
	{ on = { "a", "l" } }, { on = { "a", "n" } }, { on = { "s", "u" } },
	{ on = { "s", "i" } }, { on = { "s", "o" } }, { on = { "s", "h" } },
	{ on = { "s", "j" } }, { on = { "s", "k" } }, { on = { "s", "l" } },
	{ on = { "s", "n" } }, { on = { "d", "u" } }, { on = { "d", "i" } },
	{ on = { "d", "o" } }, { on = { "d", "h" } }, { on = { "d", "j" } },
	{ on = { "d", "k" } }, { on = { "d", "l" } }, { on = { "d", "n" } },
	{ on = { "f", "u" } }, { on = { "f", "i" } }, { on = { "f", "o" } },
	{ on = { "f", "h" } }, { on = { "f", "j" } }, { on = { "f", "k" } },
	{ on = { "f", "l" } }, { on = { "f", "n" } }, { on = { "e", "u" } },
	{ on = { "e", "i" } }, { on = { "e", "o" } }, { on = { "e", "h" } },
	{ on = { "e", "j" } }, { on = { "e", "k" } }, { on = { "e", "l" } },
	{ on = { "e", "n" } }, { on = { "r", "u" } }, { on = { "r", "i" } },
	{ on = { "r", "o" } }, { on = { "r", "h" } }, { on = { "r", "j" } },
	{ on = { "r", "k" } }, { on = { "r", "l" } }, { on = { "r", "n" } },
	{ on = { "c", "u" } },

	-- left hand double key
	{ on = { "a", "q" } }, { on = { "a", "w" } }, { on = { "a", "e" } },
	{ on = { "q", "w" } }, { on = { "q", "e" } }, { on = { "q", "r" } },
	{ on = { "w", "e" } }, { on = { "w", "r" } }, { on = { "w", "t" } },
	{ on = { "e", "r" } }, { on = { "e", "t" } }, { on = { "e", "s" } },
	{ on = { "r", "t" } }, { on = { "r", "s" } }, { on = { "r", "d" } },
	{ on = { "t", "s" } }, { on = { "t", "d" } }, { on = { "t", "f" } },
	{ on = { "s", "d" } }, { on = { "s", "f" } }, { on = { "s", "z" } },
	{ on = { "a", "r" } }, { on = { "a", "t" } }, { on = { "a", "s" } },
	{ on = { "q", "t" } }, { on = { "q", "s" } }, { on = { "q", "d" } },
	{ on = { "w", "s" } }, { on = { "w", "d" } }, { on = { "w", "f" } },
	{ on = { "e", "d" } }, { on = { "e", "f" } }, { on = { "e", "z" } },
	{ on = { "r", "f" } }, { on = { "r", "z" } }, { on = { "r", "x" } },
	{ on = { "t", "z" } }, { on = { "t", "x" } }, { on = { "t", "c" } },
	{ on = { "s", "x" } }, { on = { "s", "c" } }, { on = { "s", "v" } },
	{ on = { "a", "d" } }, { on = { "a", "f" } }, { on = { "a", "z" } },
	{ on = { "q", "f" } }, { on = { "q", "z" } }, { on = { "q", "x" } },
	{ on = { "w", "z" } }, { on = { "w", "x" } }, { on = { "w", "c" } },
	{ on = { "e", "x" } }, { on = { "e", "c" } }, { on = { "e", "v" } },
	{ on = { "r", "c" } }, { on = { "r", "v" } }, { on = { "r", "b" } },
	{ on = { "t", "v" } }, { on = { "t", "b" } }, { on = { "f", "z" } },

}


-- stylua: ignore
local GLOBAL_PREVIEW_DOUBLE_CANDS = {

	{ on = { "c", "i" } }, { on = { "c", "o" } }, { on = { "c", "h" } },
	{ on = { "c", "j" } }, { on = { "c", "k" } }, { on = { "c", "l" } },
	{ on = { "c", "n" } }, { on = { "w", "u" } }, { on = { "w", "i" } },
	{ on = { "w", "o" } }, { on = { "w", "h" } }, { on = { "w", "j" } },
	{ on = { "w", "k" } }, { on = { "w", "l" } }, { on = { "w", "n" } },
	{ on = { "t", "u" } }, { on = { "t", "i" } }, { on = { "t", "o" } },
	{ on = { "t", "h" } }, { on = { "t", "j" } }, { on = { "t", "k" } },
	{ on = { "t", "l" } }, { on = { "t", "n" } }, { on = { "v", "u" } },
	{ on = { "v", "i" } }, { on = { "v", "o" } }, { on = { "v", "h" } },
	{ on = { "v", "j" } }, { on = { "v", "k" } }, { on = { "v", "l" } },
	{ on = { "v", "n" } }, { on = { "x", "u" } }, { on = { "x", "i" } },
	{ on = { "x", "o" } }, { on = { "x", "h" } }, { on = { "x", "j" } },
	{ on = { "x", "k" } }, { on = { "x", "l" } }, { on = { "x", "n" } },
	{ on = { "b", "u" } }, { on = { "b", "i" } }, { on = { "b", "o" } },
	{ on = { "b", "h" } }, { on = { "b", "j" } }, { on = { "b", "k" } },
	{ on = { "b", "l" } }, { on = { "q", "p" } }, { on = { "q", "y" } },
	{ on = { "q", "m" } },

	-- left hand double key
	{ on = { "s", "b" } }, { on = { "d", "f" } }, { on = { "d", "z" } },
	{ on = { "a", "x" } }, { on = { "a", "c" } }, { on = { "a", "v" } },
	{ on = { "q", "c" } }, { on = { "q", "v" } }, { on = { "q", "b" } },
	{ on = { "w", "v" } }, { on = { "w", "b" } }, { on = { "c", "v" } },
	{ on = { "e", "b" } }, { on = { "x", "c" } }, { on = { "x", "v" } },
	{ on = { "z", "x" } }, { on = { "z", "c" } }, { on = { "z", "v" } },
	{ on = { "f", "x" } }, { on = { "f", "c" } }, { on = { "f", "v" } },
	{ on = { "d", "x" } }, { on = { "d", "c" } }, { on = { "d", "v" } },
	{ on = { "a", "b" } }, { on = { "b", "a" } }, { on = { "c", "b" } },
	{ on = { "x", "b" } }, { on = { "z", "b" } }, { on = { "f", "b" } },
	{ on = { "d", "b" } }, { on = { "v", "b" } }, { on = { "q", "a" } },
	{ on = { "w", "q" } }, { on = { "e", "w" } }, { on = { "r", "e" } },
	{ on = { "t", "r" } }, { on = { "f", "d" } }, { on = { "c", "x" } },
	{ on = { "s", "t" } }, { on = { "z", "f" } }, { on = { "v", "c" } },
	{ on = { "d", "s" } }, { on = { "x", "z" } }, { on = { "b", "v" } },
	{ on = { "w", "a" } }, { on = { "v", "x" } }, { on = { "c", "f" } },
	{ on = { "e", "q" } }, { on = { "b", "c" } }, { on = { "v", "z" } },
	{ on = { "r", "w" } }, { on = { "e", "a" } }, { on = { "b", "x" } },
	{ on = { "t", "e" } }, { on = { "r", "q" } }, { on = { "r", "a" } },
	{ on = { "s", "r" } }, { on = { "t", "w" } }, { on = { "t", "q" } },
}

-- stylua: ignore
local GLOBAL_PARENT_DOUBLE_CANDS = {
	{ on = { "b", "n" } }, { on = { "q", "u" } }, { on = { "q", "i" } },
	{ on = { "q", "o" } }, { on = { "q", "h" } }, { on = { "q", "j" } },
	{ on = { "q", "k" } }, { on = { "q", "l" } }, { on = { "q", "n" } },
	{ on = { "a", "p" } }, { on = { "a", "y" } }, { on = { "a", "m" } },
	{ on = { "f", "p" } }, { on = { "f", "y" } }, { on = { "f", "m" } },
	{ on = { "e", "p" } }, { on = { "e", "y" } }, { on = { "e", "m" } },
	{ on = { "s", "p" } }, { on = { "s", "y" } }, { on = { "s", "m" } },
	{ on = { "d", "p" } }, { on = { "d", "y" } }, { on = { "d", "m" } },
	{ on = { "r", "p" } }, { on = { "r", "y" } }, { on = { "r", "m" } },
	{ on = { "c", "p" } }, { on = { "c", "y" } }, { on = { "c", "m" } },
	{ on = { "w", "p" } }, { on = { "w", "y" } }, { on = { "w", "m" } },
	{ on = { "x", "p" } }, { on = { "x", "y" } }, { on = { "x", "m" } },
	{ on = { "t", "p" } }, { on = { "t", "y" } }, { on = { "t", "m" } },
	{ on = { "v", "p" } }, { on = { "v", "y" } }, { on = { "v", "m" } },
	{ on = { "b", "p" } }, { on = { "b", "y" } }, { on = { "b", "m" } },

	-- left hand double key
	{ on = { "d", "t" } }, { on = { "s", "e" } }, { on = { "s", "w" } },
	{ on = { "f", "s" } }, { on = { "d", "r" } }, { on = { "d", "e" } },
	{ on = { "z", "d" } }, { on = { "f", "t" } }, { on = { "f", "r" } },
	{ on = { "x", "f" } }, { on = { "z", "s" } }, { on = { "z", "t" } },
	{ on = { "c", "z" } }, { on = { "x", "d" } }, { on = { "x", "s" } },
	{ on = { "c", "d" } }, { on = { "c", "d" } }, { on = { "d", "a" } },
	{ on = { "v", "f" } }, { on = { "v", "f" } }, { on = { "f", "q" } },
	{ on = { "b", "z" } }, { on = { "b", "z" } }, { on = { "z", "w" } },
	{ on = { "t", "a" } }, { on = { "t", "a" } }, { on = { "x", "e" } },
	{ on = { "s", "q" } }, { on = { "s", "q" } }, { on = { "c", "r" } },
	{ on = { "d", "w" } }, { on = { "d", "w" } }, { on = { "v", "t" } },
	{ on = { "f", "e" } }, { on = { "f", "e" } }, { on = { "b", "s" } },
	{ on = { "z", "r" } }, { on = { "z", "r" } }, { on = { "f", "a" } },
	{ on = { "x", "t" } }, { on = { "x", "t" } }, { on = { "z", "q" } },
	{ on = { "c", "s" } }, { on = { "c", "s" } }, { on = { "x", "w" } },
	{ on = { "c", "e" } }, { on = { "c", "w" } }, { on = { "v", "w" } },
	{ on = { "v", "r" } }, { on = { "v", "e" } }, { on = { "b", "e" } },
	{ on = { "b", "t" } }, { on = { "b", "r" } }, { on = { "c", "a" } },
	{ on = { "z", "a" } }, { on = { "x", "a" } }, { on = { "v", "q" } },
	{ on = { "x", "q" } }, { on = { "c", "q" } }, { on = { "b", "w" } },
}

local GO_MENU_CAND = {
	{ on = { "g"} },
}


-- TODO: the async jump is too fast, the current folder may cannot be found


-- FIXME: refactor this to avoid the loop
local function rel_position(file, view)
	local folder

	folder = cx.active.current
	if folder then
		for i, f in ipairs(folder.window) do
			if f.url == file.url then
				return i, "current"
			end
		end
	end

	if view == "current" then
		return nil, nil
	end

	folder = cx.active.parent
	if folder then
		for i, f in ipairs(folder.window) do
			if f.url == file.url then
				return i, "parent"
			end
		end
	end

	folder = cx.active.preview.folder
	if folder then
		for i, f in ipairs(folder.window) do
			if f.url == file.url then
				return i, "preview"
			end
		end
	end

	return nil, nil
end

-- FIXME: find a better way to do this
local function count_files(url, max)
	local cmd
	if ya.target_family() == "windows" then
		cmd = cx.active.pref.show_hidden and "dir /b /a " or "dir /b "
		cmd = cmd .. ya.quote(tostring(url))
	else
		cmd = cx.active.pref.show_hidden and "ls -A  " or "ls "
		cmd = "test -r " .. ya.quote(tostring(url)) .. "&&" .. cmd .. ya.quote(tostring(url)) .. " | wc -l"
	end

	if ya.target_family() == "windows" then
		local i, handle = 0, io.popen(cmd)
		for _ in handle:lines() do
			i = i + 1
			if i == max then
				break
			end
		end
		handle:close()
		return i
	else
		local f = io.popen(cmd)
		local output = f:read("*all")
		local num = tonumber(output)
		f:close()

		if num == nil then
			return 0
		end

		if num > max then
			return max
		else
			return num
		end
	end
end

local toggle_ui = ya.sync(function(st)

	if st.keep_hook then
		ya.render()
		return
	end

	if st.icon or st.mode then
		Entity.icon, Status.mode, st.icon, st.mode = st.icon, st.mode, nil, nil
		if st.type == "global" and cx.active.preview.folder then
			ya.manager_emit("peek", { force = true })
		end
		ya.manager_emit("peek", { force = true })
		ya.render()
		return
	end

	st.icon, st.mode = Entity.icon, Status.mode

	Entity.icon = function(self)
		local file = self._file
		local icon = file:icon()
		local span_icon_before = file:is_hovered() and ui.Span(file:icon().text .. " ") or ui.Span(file:icon().text .. " "):style(icon.style)
		
		if st.type == "global" then
			local pos, view = rel_position(file, "all")
			if pos == nil then
				return st.icon(self, file)
			elseif view == "current" then
				if st.double_first_key ~= nil and GLOBAL_CURRENT_DOUBLE_KEYS[pos]:sub(1,1) == st.double_first_key then
					return ui.Line {span_icon_before, ui.Span(GLOBAL_CURRENT_DOUBLE_KEYS[pos]:sub(1,1)):fg(st.opt_first_key_fg),ui.Span(GLOBAL_CURRENT_DOUBLE_KEYS[pos]:sub(2,2) .. " "):fg(st.opt_icon_fg)}
				else
					return ui.Line {span_icon_before, ui.Span(GLOBAL_CURRENT_DOUBLE_KEYS[pos].." "):fg(st.opt_icon_fg)}
				end
			elseif view == "parent" then
				if st.double_first_key ~= nil and GLOBAL_PARRENT_DOUBLE_KEYS[pos]:sub(1,1) == st.double_first_key then
					return ui.Line {span_icon_before, ui.Span(GLOBAL_PARRENT_DOUBLE_KEYS[pos]:sub(1,1)):fg(st.opt_first_key_fg),ui.Span(GLOBAL_PARRENT_DOUBLE_KEYS[pos]:sub(2,2) .. " "):fg(st.opt_icon_fg)}
				else
					return ui.Line {span_icon_before, ui.Span(GLOBAL_PARRENT_DOUBLE_KEYS[pos].." "):fg(st.opt_icon_fg)}
				end
			elseif view == "preview" then
				if st.double_first_key ~= nil and GLOBAL_PREVIEW_DOUBLE_KEYS[pos]:sub(1,1) == st.double_first_key then
					return ui.Line {span_icon_before, ui.Span(GLOBAL_PREVIEW_DOUBLE_KEYS[pos]:sub(1,1)):fg(st.opt_first_key_fg),ui.Span(GLOBAL_PREVIEW_DOUBLE_KEYS[pos]:sub(2,2) .. " "):fg(st.opt_icon_fg)}
				else
					return ui.Line {span_icon_before, ui.Span(GLOBAL_PREVIEW_DOUBLE_KEYS[pos].." "):fg(st.opt_icon_fg)}
				end
			end
		else
			local pos = rel_position(file, "current")
			if not pos then
				return st.icon(self, file)
			elseif st.current_num > #SINGLE_KEYS then
				if st.double_first_key ~= nil and NORMAL_DOUBLE_KEYS[pos]:sub(1,1) == st.double_first_key then
					return ui.Line {span_icon_before, ui.Span(NORMAL_DOUBLE_KEYS[pos]:sub(1,1)):fg(st.opt_first_key_fg),ui.Span(NORMAL_DOUBLE_KEYS[pos]:sub(2,2) .. " "):fg(st.opt_icon_fg)}
				else
					return ui.Line {span_icon_before, ui.Span(NORMAL_DOUBLE_KEYS[pos].." "):fg(st.opt_icon_fg)}
				end
			else
				return ui.Line {span_icon_before,ui.Span(SINGLE_KEYS[pos].." "):fg(st.opt_icon_fg)}
			end
		end
	end

	Status.mode = function(self)
		local style = self:style()
		return ui.Line {
			ui.Span(" KJ-" .. tostring(cx.active.mode):upper() .. " "):style(style.main),
		}
	end

	if st.type == "global" and cx.active.preview.folder then
		ya.manager_emit("peek", { force = true })
	end

	ya.render()
end)


local function split_yazi_cmd_arg(cmd)
	local cmd_table = {}
	local i = string.find(cmd, " ")
	if i then
		local first = string.sub(cmd, 1, i - 1)
		local second = string.sub(cmd, i + 1)
		table.insert(cmd_table, first)
		table.insert(cmd_table, second)
		return cmd_table
	end
	return nil
end

local function count_preview_files(st)
	local folder = cx.active.current
	-- TODO:under_cursor_file maybe nil,because aync task,floder may not ready
	local under_cursor_file = folder.window[folder.cursor - folder.offset + 1]
	if under_cursor_file and under_cursor_file.cha.is_dir then
		st.preview_num = count_files(tostring(under_cursor_file.url), ui.Rect.default.h)
	else
		st.preview_num = 0
	end
end

local apply = ya.sync(function(state, arg_cand, arg_current_num, arg_parent_num, arg_preview_num)

	local cand = tonumber(arg_cand)
	local current_entry_num = tonumber(arg_current_num)
	local parent_entry_num = tonumber(arg_parent_num)
	local preview_entry_num = tonumber(arg_preview_num)
	local go_num = state.type == "global" and #GO_MENU_CAND or 0
	local folder = cx.active.current

	-- hit specail key
	if cand > (current_entry_num + parent_entry_num + preview_entry_num + go_num) then
		local special_key_str = SPECIAL_KEYS[cand - current_entry_num - parent_entry_num - preview_entry_num - go_num]
		if special_key_str == "<Esc>" then
			return true
		elseif special_key_str == "z" then
			return true
		elseif special_key_str == "<Enter>" then
			ya.manager_emit("open", {})
			return true
		elseif special_key_str == "<Left>" then
			ya.manager_emit("leave", {})
			return false
		elseif special_key_str == "<Right>" then
			ya.manager_emit("enter", {})
			return false
		elseif special_key_str == "<Up>" then
			ya.manager_emit("arrow", { "-1" })
			return false
		elseif special_key_str == "<Down>" then
			ya.manager_emit("arrow", { "1" })
			return false
		elseif special_key_str == "<Space>" then
			local under_cursor_file = cx.active.current.window[folder.cursor - folder.offset + 1]
			local toggle_state = under_cursor_file:is_selected() and "false" or "true"
			ya.manager_emit("toggle", { state = toggle_state })
			ya.manager_emit("arrow", { 1 })
			return false
		elseif special_key_str == "h"then
			if state.type == "global" then
				ya.manager_emit("leave", {})
			end
			return false
		elseif special_key_str == "j"then
			if state.type == "global" then
				ya.manager_emit("arrow", { "1" })
			end
			return false
		elseif special_key_str == "k"then
			if state.type == "global" then
				ya.manager_emit("arrow", { "-1" })
			end
			return false
		elseif special_key_str == "l"then
			if state.type == "global" then			
				ya.manager_emit("enter", {})
			end
			return false
		elseif special_key_str == "J" then
			ya.manager_emit("arrow", { "5" })
			return false
		elseif special_key_str == "K" then
			ya.manager_emit("arrow", { "-5" })
			return false
		elseif special_key_str == "<A-j>" then
			ya.manager_emit("seek", { "5" })
			return false
		elseif special_key_str == "<A-k>" then
			ya.manager_emit("seek", { "-5" })
			return false
		elseif special_key_str == "<C-j>" then
			ya.manager_emit("arrow", { "100%" })
			return false
		elseif special_key_str == "<C-k>" then
			ya.manager_emit("arrow", { "-100%" })
			return false
		elseif special_key_str == "y"then
			if state.type == "global" then
				ya.manager_emit("yank", {})
			end
			return false
		elseif special_key_str == "p"then
			if state.type == "global" then
				ya.manager_emit("paste", {})
			end
			return false

		end
	end

	-- apply global mode
	if state.type == "global" then
		-- hit current area
		if cand <= current_entry_num then -- hit normal key
			local current_folder = cx.active.current
			ya.manager_emit("arrow", { cand - 1 + current_folder.offset - current_folder.cursor })
		-- hit parent area
		elseif cand > current_entry_num and cand <= (current_entry_num + parent_entry_num) then
			local parent_folder = cx.active.parent
			ya.manager_emit("leave", {})
			ya.manager_emit("arrow", { cand - current_entry_num - 1 + parent_folder.offset - parent_folder.cursor })
		-- hit preview area
		elseif
			cand > (current_entry_num + parent_entry_num) and cand <= (current_entry_num + parent_entry_num + preview_entry_num) then
			local preview_folder = cx.active.preview.folder
			ya.manager_emit("enter", {})
			ya.manager_emit(
				"arrow",
				{ cand - current_entry_num - parent_entry_num - 1 + preview_folder.offset - preview_folder.cursor }
			)

		-- hit go
		elseif cand > (current_entry_num + parent_entry_num + preview_entry_num) and cand <= (current_entry_num + parent_entry_num + preview_entry_num + go_num) then
			return nil
		end

		-- whether continue global
		if state.times == "once" then
			return true
		else
			return false
		end
	end

	-- apply select mode
	if state.type == "select" then
		if cand <= current_entry_num then -- hit normal key
			local folder = cx.active.current
			ya.manager_emit("arrow", { cand - 1 + folder.offset - folder.cursor })
		end

		return false
	end

	-- apply keep mode and normal mode
	if (state.type == "keep" or not state.type) and folder.window[cand] then
		ya.manager_emit("arrow", { cand - 1 + folder.offset - folder.cursor })
	end

	-- keep mode will auto enter when select folder and continue keep mode
	if state.type == "keep" and folder.window[cand] and folder.window[cand].cha.is_dir then
		ya.manager_emit("enter", {})
		return false
	elseif folder.window[cand] == nil then
		return false
	else
		return true
	end

end)

local update_double_first_key = ya.sync(function(state, str)
	state.double_first_key = str
end)

local function read_input_todo (arg_current_num,arg_parent_num,arg_preview_num,arg_type)

	local current_num = tonumber(arg_current_num)
	local parent_num = tonumber(arg_parent_num~= nil and arg_parent_num or "0")
	local preview_num = tonumber(arg_preview_num ~= nil and arg_preview_num or "0")
	local type = arg_type
	local current_cands, parent_cands, preview_cands, cands = {}, {}, {}, {}
	local cand = nil
	local is_signal_cand = true
	local pos,pos2
	local key_num_count = 0
	local key,double_key
	local first_key_of_lable = {}
	local special_and_go_key = {}
	local cands_count = 0


	-- generate cands of entry of current window
	if current_num == 0 then
		current_cands = {}
	elseif type == "global" then -- global mode disable signal key
		is_signal_cand = false
		current_cands = { table.unpack(GLOBAL_CURRENT_DOUBLE_CANDS, 1, current_num) }
	elseif current_num > #SINGLE_KEYS then
		is_signal_cand = false
		current_cands = { table.unpack(NORMAL_DOUBLE_CANDS, 1, current_num) }
	else
		current_cands = { table.unpack(SIGNAL_CANDS, 1, current_num) }
	end

	-- generate cands of entry of parent window
	if parent_num ~= nil and parent_num ~= 0 then
		is_signal_cand = false
		parent_cands = { table.unpack(GLOBAL_PARENT_DOUBLE_CANDS, 1, parent_num) }
	else
		parent_cands = {}
		parent_num = 0
	end

	-- generate cands of entry of preview window
	if preview_num ~= nil and preview_num ~= 0 then
		is_signal_cand = false
		preview_cands = { table.unpack(GLOBAL_PREVIEW_DOUBLE_CANDS, 1, preview_num) }
	else
		preview_cands = {}
		preview_num = 0
	end

	--attach current cands to cands table
	for i = 1, #current_cands do
		local sec1 = is_signal_cand and current_cands[i].on.."-" or current_cands[i].on[1]
		local sec2 = is_signal_cand and "" or current_cands[i].on[2] or ""
		local seca = sec1 .. sec2
		first_key_of_lable[sec1] = ""
		cands_count =  cands_count + 1
		cands[seca] = cands_count
	end

	--attach parent cands to cands table
	for i = 1, #parent_cands do
		local sec1 = parent_cands[i].on[1]
		local sec2 = parent_cands[i].on[2] or ""
		local seca = sec1 .. sec2
		first_key_of_lable[sec1] = ""
		cands_count =  cands_count + 1
		cands[seca] = cands_count
	end

	--attach preview cands to cands table
	for i = 1, #preview_cands do
		local sec1 = preview_cands[i].on[1]
		local sec2 = preview_cands[i].on[2] or ""
		local seca = sec1 .. sec2
		first_key_of_lable[sec1] = ""
		cands_count =  cands_count + 1
		cands[seca] = cands_count
	end

	--attach go cands to cands table
	if type == "global" then
		for i = 1, #GO_MENU_CAND do
			local sec1 = GO_MENU_CAND[i].on[1]
			local sec2 = GO_MENU_CAND[i].on[2] or ""
			local seca = sec1 .. sec2
			first_key_of_lable[sec1] = ""
			cands_count =  cands_count + 1
			cands[seca] = cands_count
			special_and_go_key[sec1] = ""
		end
	end

	--attach special cands to cands table
	for i = 1, #SPECIAL_CANDS do --attach special key
		local sec1 = SPECIAL_CANDS[i].on
		local seca = sec1
		first_key_of_lable[sec1] = ""
		cands_count =  cands_count + 1
		cands[seca] = cands_count
		special_and_go_key[sec1] = ""
	end

	while true do
		cand = ya.which { cands = INPUT_CANDS, silent = true }
		-- not candy key, continue get input
		if cand == nil then
			goto nextkey
		end

		-- hit exit easyjump
		if INPUT_KEY[cand] == "<Esc>" or INPUT_KEY[cand] == "z"  then
			key = INPUT_KEY[cand]	
			pos = cands[key]
			break
		end

		-- hit singal key or specail key in singal label mode
		if is_signal_cand then
			key = INPUT_KEY[cand]	
			pos = cands[key.."-"]
			pos2 = cands[key]
			if pos then
				break
			elseif pos2 then
				pos = pos2
				break
			else
				goto nextkey
			end
		end

		-- hit special key in double label mode
		if key_num_count == 0 and special_and_go_key[INPUT_KEY[cand]] then
			key = INPUT_KEY[cand]
			pos = cands[key]
			break
		end

		-- hit backout a double key
		if INPUT_KEY[cand] == "<Backspace>" and not is_signal_cand then
			key_num_count = 0 -- backout to get the first double key
			update_double_first_key(nil) -- apply to the render change for first key
			goto nextkey
		end

		-- hit the first double key
		if key_num_count == 0 and not is_signal_cand then
			key = INPUT_KEY[cand]
			if first_key_of_lable[key] then	 
				key_num_count =  key_num_count + 1		
				update_double_first_key(key) -- apply to the render change for first key
				ya.manager_emit("peek", { force = true })
			else
				key_num_count = 0 -- get the first double key fail, continue to get it
			end
			goto nextkey
		end

		-- hit the second double key
		if key_num_count == 1 and not is_signal_cand then

			double_key = key .. INPUT_KEY[cand]
			pos = cands[double_key]

			if pos == nil then -- get the second double key fail, continue to get it
				goto nextkey
			else
				update_double_first_key(nil)
				ya.manager_emit("peek", { force = true })
				break
			end
		end

		::nextkey::
	end
	return apply(pos, current_num, parent_num, preview_num)

end


local init_global_action = ya.sync(function(state,arg_times)

	-- "once" or nil,nil means to don't auto exit
	state.times = arg_times
	state.type = "global"
	-- caculate file numbers of current window
	state.current_num = #cx.active.current.window
	if state.current_num <= ui.Rect.default.h then -- Maybe the folder has not been full loaded yet
		state.current_num = count_files(cx.active.current.cwd, ui.Rect.default.h)
	end

	-- caculate file numbers of parent window
	if cx.active.parent ~= nil then
		state.parent_num = #cx.active.parent.window
		if state.parent_num <= ui.Rect.default.h then -- Maybe the folder has not been full loaded yet
			state.parent_num = count_files(cx.active.parent.cwd, ui.Rect.default.h)
		end
	else
		state.parent_num = 0
	end

	-- caculate file numbers of preview window
	if cx.active.preview.folder ~= nil then
		state.preview_num = #cx.active.preview.folder.window
		if state.preview_num <= ui.Rect.default.h then -- Maybe the folder has not been full loaded yet
			count_preview_files(state)
		end
	else
		count_preview_files(state)
	end

	return {state.current_num, state.parent_num, state.preview_num}

end)

local init_normal_action = ya.sync(function(state,action)

	state.current_num = #cx.active.current.window
	if state.current_num < ui.Rect.default.h then -- Maybe the folder has not been full loaded yet
		state.current_num = count_files(cx.active.current.cwd, ui.Rect.default.h)
	end

	state.type = action
	return state.current_num
end)

local go_again = ya.sync(function(state)
	state.again = true
end)

local set_keep_hook = ya.sync(function(state,status)
	state.keep_hook = status
end)

local remove_cwd_status_watch = ya.sync(function(state)
	Header:children_remove(state.header_status_id)
end)

local clear_state = ya.sync(function (state)
	state.again = nil
	state.keep_hook = nil
	state.header_status_id = nil
	state.times = nil
	state.current_num = nil
	state.parent_num = nil
	state.parent_num = nil
	state.type = nil
	state.double_first_key = nil
end)

local get_go_table = ya.sync(function (state)
	return state.opt_go_table
end)


local add_cwd_status_watch = ya.sync(function(state)

	if state.header_status_id ~= nil then
		return
	end

	local function cwd_status(self)
		if (#cx.active.current.window >0 or state.preview_num == 0) and state.again then
			state.again = false
			local times = state.times and state.times or ""
			ya.manager_emit("plugin", { "keyjump", args = ya.quote(state.type).." "..times})	
		end
		return ui.Line{}
	end
	state.header_status_id = Header:children_add(cwd_status,200,Header.LEFT)
end)

return {
	setup = function(state, opts)
		if (opts == nil or opts.icon_fg == nil) then
			state.opt_icon_fg = "#fda1a1"
		else
			state.opt_icon_fg  = opts.icon_fg
		end
		if (opts == nil or opts.first_key_fg == nil) then
			state.opt_first_key_fg = "#ffff33"
		else
			state.opt_first_key_fg  = opts.first_key_fg
		end
		

		if (opts == nil or opts.go_table == nil) then
			state.opt_go_table = {}

		else
			state.opt_go_table = opts.go_table
		end
	end,

	entry = function(_, job)
		add_cwd_status_watch()

		local args = job.args
		local action = args[1]
		local want_exit = false

		-- enter normal, keep or select mode
		if not action or action == "keep" or action == "select" then
			local current_num = init_normal_action(action)
			toggle_ui()
			want_exit = read_input_todo(current_num, "0", "0", action)
		end
		-- enter global mode
		if action == "global" then
			local times = args[2]
			local data = init_global_action(times)
			toggle_ui()
			want_exit = read_input_todo(data[1], data[2], data[3], action)
		end
		
		if want_exit == nil then
			local go_table = get_go_table()
			local cand
			while true do
				cand = ya.which { cands = go_table, silent = false }
				if cand ~= nil then
					break
				end
			end
			local cmd = split_yazi_cmd_arg(go_table[cand].run)
			ya.manager_emit(cmd[1], { cmd[2] }) 
			set_keep_hook(true)
			go_again()
		elseif want_exit == false and action and action ~= "" then
			set_keep_hook(true)
			go_again()
		else
			set_keep_hook(false)
			remove_cwd_status_watch()
			clear_state()
		end

		toggle_ui()

	end
}
