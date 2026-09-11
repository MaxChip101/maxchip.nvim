environment.systemPackages = with pkgs; [
    tree-sitter
    pkgs.clang-tools
    gopls
    pyright
    zls
    rust-analyzer
    nixd
    lua-language-server


];
