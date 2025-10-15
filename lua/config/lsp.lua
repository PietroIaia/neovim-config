local lsps = {
    { "lua_ls", {
        capabilities = require('blink.cmp').get_lsp_capabilities()
    }},
    { "html" },
    { "rust-analyzer" },
    { "pyright" },
    { "dockerls" },
    { "docker_compose_language_service" }
}

for _, lsp in pairs(lsps) do
    local name, config = lsp[1], lsp[2]
    vim.lsp.enable(name)
    if config then
        vim.lsp.config(name, config)
    end
end

