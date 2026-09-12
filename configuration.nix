environment.systemPackages = with pkgs; [
    # neovim & lazy.vim & plugin dependencies
    neovim
    git
    tree-sitter
    gcc
    gnumake
    curl
    ripgrep
    fd

    # keyboards
    wl-clipboard
    xclip

    # lsps & fmts
    clang-tools
    gopls
    pyright
    zls
    rust-analyzer
    nixd
    lua-language-server
    stylua
    black
    go
    rustfmt
    zig_0_16
];

fonts.packages = with pkgs; [
    nerd-fonts/jetbrains-mono
];
