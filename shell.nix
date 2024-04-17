# py311fhs.nix
{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSUserEnv {
  name = "py311fhs";
  targetPkgs = pkgs: with pkgs; [
    coreutils
    poetry
    git
    curl
    jq
    gh
    which
    python311
    python311Packages.pip
    python311Packages.virtualenv
#    blas
#    lapack
    openssl
    sqlite
    azure-cli
    mc
    nodejs
  ];
  multiPkgs = pkgs: with pkgs; [
    zlib
  ];
  runScript = "bash";
  profile = ''
    export FHS=1
    export OPENAI_API_KEY=$VUS_OPENAI_API_KEY
    export MYPS1='\n\[\033[1;35m\](py311npm)[\[\e]0;\u@\h: \w\a\]\u@\h:\w]\$\[\033[0m\] '
    export PS1=$MYPS1
  '';
}).env
