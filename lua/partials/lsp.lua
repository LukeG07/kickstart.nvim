local nvim_lsp = require("lspconfig")

local servers = {
    "gopls",
    "lua_ls",
}

for _, lsp in ipairs(servers) do
    local settings = {}

    local setup = {
        on_attach = on_attach,
        capabilities = capabilities,
        -- root_dir = function(fname)
        --   return nvim_lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
        -- end;
        flags = {
            debounce_did_change_notify = 250
        },
        settings = settings
    }

    nvim_lsp[lsp].setup(setup)
end
