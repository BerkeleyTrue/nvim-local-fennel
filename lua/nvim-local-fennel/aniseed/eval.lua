local _0_0 = nil
do
  local name_23_0_ = "nvim-local-fennel.aniseed.eval"
  local loaded_23_0_ = package.loaded[name_23_0_]
  local module_23_0_ = nil
  if ("table" == type(loaded_23_0_)) then
    module_23_0_ = loaded_23_0_
  else
    module_23_0_ = {}
  end
  module_23_0_["aniseed/module"] = name_23_0_
  module_23_0_["aniseed/locals"] = (module_23_0_["aniseed/locals"] or {})
  module_23_0_["aniseed/local-fns"] = (module_23_0_["aniseed/local-fns"] or {})
  package.loaded[name_23_0_] = module_23_0_
  _0_0 = module_23_0_
end
local function _1_(...)
  _0_0["aniseed/local-fns"] = {require = {compile = "nvim-local-fennel.aniseed.compile", core = "nvim-local-fennel.aniseed.core", fennel = "nvim-local-fennel.aniseed.fennel", fs = "nvim-local-fennel.aniseed.fs", nvim = "nvim-local-fennel.aniseed.nvim"}}
  return {require("nvim-local-fennel.aniseed.core"), require("nvim-local-fennel.aniseed.fs"), require("nvim-local-fennel.aniseed.fennel"), require("nvim-local-fennel.aniseed.nvim"), require("nvim-local-fennel.aniseed.compile")}
end
local _2_ = _1_(...)
local core = _2_[1]
local fs = _2_[2]
local fennel = _2_[3]
local nvim = _2_[4]
local compile = _2_[5]
do local _ = ({nil, _0_0, nil})[2] end
local str = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function str0(code, opts)
      local function _3_()
        return fennel.eval(compile["macros-prefix"](code), opts)
      end
      return xpcall(_3_, fennel.traceback)
    end
    v_23_0_0 = str0
    _0_0["str"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["str"] = v_23_0_
  str = v_23_0_
end
return nil
