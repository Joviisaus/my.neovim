-- 这里要修改为你的绝对路径
local extension_path =
  "/Users/29033/AppData/Local/nvim-data/site/pack/packer/start/vimspector/gadgets/windows/download/CodeLLDB/v1.7.4/root/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

return {
  adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
}
