{
  config,
  pkgs,
  ...
}:
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "vpayno";
  home.homeDirectory = "/home/vpayno";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

    hello

    (writeShellScriptBin "my-hello" ''
      ${cowsay}/bin/cowsay "Hello, ${config.home.username}!"
    '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';

    ".hello".text = "Hello Home Manager user!";
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/vpayno/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;

    gh = {
      enable = true;
      settings = {
        version = "1";
        aliases = {
          "as" = "auth status";
          "issues-bugs" = "issue list --label='bug'";
          "issues-documentation" = "issue list --label='documentation'";
          "issues-duplicate" = "issue list --label='duplicate'";
          "issues-enhancement" = "issue list --label='enhancement'";
          "issues-noob" = "issue list --label='good first issue'";
          "issues-help-wanted" = "issue list --label='help wanted'";
          "issues-invalid" = "issue list --label='invalid'";
          "issues-question" = "issue list --label='question'";
          "issues-wontfix" = "issue list --label='wontfix'";
          "prs-all" = "pr list";
          "prs-mine" = "pr list --author '@me'";
          "gists-all" = "gist list";
          "gists-private" = "gist list --secret";
          "gists-public" = "gist list --public";
        };
      };
    };

    zsh = {
      enable = true;
    };

    fish = {
      enable = true;
    };

    fzf = {
      enable = true;
      tmux.enableShellIntegration = true;

      # these options require that we also use programs.{fish,zsh}
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
  };
}
