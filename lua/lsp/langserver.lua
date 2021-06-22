local lspconfig = require("lspconfig")
local c = require("lsp.custom")

lspconfig.tsserver.setup(c.default({
    root_dir = vim.loop.cwd,
    settings = {
        tsserver = {
            useBatchedBufferSync = true,
        },
        javascript = {
            autoClosingTags = true,
            suggest = {
                autoImports = true,
            },
            updateImportsOnFileMove = {
                enable = true,
            },
        },
    },
}))

lspconfig.sumneko_lua.setup(c.default({
    cmd = { "lua-language-server", string.format("--logpath=%s/.cache/nvim/sumneko_lua", vim.loop.os_homedir()) },
    root_dir = vim.loop.cwd,
    settings = {
        Lua = {
            runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
            telemetry = {
                enable = false,
            },
            diagnostics = {
                enable = true,
                globals = { "vim", "awesome", "use", "client", "root", "s", "screen" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                    ["/usr/share/awesome/lib"] = true,
                    ["/usr/share/lua/5.1"] = true,
                    ["/usr/share/lua/5.3"] = true,
                    ["/usr/share/lua/5.4"] = true,
                },
            },
        },
    },
}))

lspconfig.pyright.setup(c.default({
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                typeCheckingMode = "basic",
            },
        },
    },
}))

-- lspconfig.sqls.setup({
--     cmd = { "sqls", "-config", vim.loop.os_homedir() .. "/.config/sqls/config.yml" },
--     on_init = c.custom_on_init,
--     capabilities = c.custom_capabilities(),
--     on_attach = function(client)
--         client.resolved_capabilities.execute_command = true
--         -- require("sqls").setup({ picker = "default" })
--     end,
-- })

lspconfig.gopls.setup(c.default({
    cmd = { "gopls", "serve" },
    root_dir = vim.loop.cwd,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}))

lspconfig.cssls.setup(c.default({
    root_dir = vim.loop.cwd,
}))

lspconfig.intelephense.setup(c.default({
    root_dir = vim.loop.cwd,
}))

lspconfig.yamlls.setup(c.default({
    settings = {
        yaml = {
            format = {
                enable = true,
                singleQuote = true,
                bracketSpacing = true,
            },
            editor = {
                tabSize = 2,
            },
            schemas = {
                ["https://json.schemastore.org/github-workflow.json"] = "ci.yml",
                ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose.yml",
            },
        },
    },
}))

local servers = { "dockerls", "clangd", "texlab", "bashls", "jsonls", "vimls", "vuels" }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(c.default())
end