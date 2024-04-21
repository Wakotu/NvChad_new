local opts = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    -- bash
    "shellcheck",
    "bash-language-server",
    "shfmt",
    -- c++
    "clangd",
    "clang-format",
    -- python
    "pyright",
    "ruff",
    "mypy",
    "debugpy",
    "black",
    -- rust
    "rust-analyzer",
    -- web
    "html-lsp",
    "prettier",
    "typescript-language-server",
    -- markdown
    "markdownlint",
    -- yaml
    "yaml-language-server",
    "yamllint",
    "yamlfix",
    -- docker
    "dockerfile-language-server",
    "docker-compose-language-service",
    "hadolint",
    -- haskell
    "fourmolu",
    "haskell-language-server",
    -- go
    "gopls",
    "revive",
    "gofumpt",
    "goimports-reviser",
    -- cmake
    "cmake-language-server",
    "cmakelint",
    "gersemi",
    -- java
    "jdtls",
    "java-debug-adapter",
    "java-test",
    -- meson
    "mesonlsp",
    -- kotlin
    "kotlin-language-server",
    "ktlint",
  }
}

return opts
