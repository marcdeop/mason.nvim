local installer = require('nvim-lsp-installer.installer')

local root_dir = installer.get_server_root_path('bash')

return installer.Installer:new {
    name = "bashls",
    root_dir = root_dir,
    install_cmd = [[npm install bash-language-server@latest]],
    default_options = {
        cmd = { root_dir .. "/node_modules/.bin/bash-language-server", "start" },
    },
}
