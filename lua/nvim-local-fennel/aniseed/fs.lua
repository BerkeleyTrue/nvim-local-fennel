local nvim = require("aniseed.nvim")
local function ensure_ancestor_dirs(path)
  local parent = nvim.fn.fnamemodify(path, ":h")
  return nvim.fn.mkdir(parent, "p")
end
return {["aniseed/module"] = "aniseed.fs", ["ensure-ancestor-dirs"] = ensure_ancestor_dirs}
