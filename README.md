# nix-home-manager-demo

Using this as Nix Home Manager demo/playground to help me learn how to use it.

## Initialize home-manager configuration

```bash
$ nix run home-manager -- init .
Creating ./home.nix...
Creating ./flake.nix...

$ git add ./*nix

$ nix flake lock
warning: Git tree '/home/vpayno/git_vpayno/nix-home-manager-demo' is dirty
warning: creating lock file '/home/vpayno/git_vpayno/nix-home-manager-demo/flake.lock':
• Added input 'home-manager':
    'github:nix-community/home-manager/ed030a787938cae01d693ebaad52bbb672a4a69d?narHash=sha256-R61wtNknWWejnl%2BK0l4sxu/wnLNFbNe44tNM2zbj5yE%3D' (2025-02-23)
• Added input 'home-manager/nixpkgs':
    follows 'nixpkgs'
• Added input 'nixpkgs':
    'github:nixos/nixpkgs/73cf49b8ad837ade2de76f87eb53fc85ed5d4680?narHash=sha256-EO1ygNKZlsAC9avfcwHkKGMsmipUk1Uc0TbrEZpkn64%3D' (2025-02-18)
warning: Git tree '/home/vpayno/git_vpayno/nix-home-manager-demo' is dirty

$ git add ./flake.lock

$ git commit -m 'home-manager: add initial configuration'

$ git push

$ nix run home-manager -- switch -f ./home.nix
these 17 derivations will be built:
  /nix/store/0sa4jxj4aaxapxsy3mls9g65hcbvhc9j-tray.target.drv
  /nix/store/2qlq4c3l2nnwzw4x787fmldmv6c71dc3-dummy-xdg-mime-dirs1.drv
  /nix/store/7lk9hicrgwyzpqg7k1rr47ip1y1328fw-hm-session-vars.sh.drv
  /nix/store/l2dv3r7wxhbjca0gyshrh0if3mr8xnzl-dummy-xdg-mime-dirs2.drv
  /nix/store/njgf2pb2vpdlxz7asxyk5sfr175akjqh-home-manager.drv
  /nix/store/h0rwip69vwz28icx4l333mp29z2377vx-options.json.drv
  /nix/store/v2wbl0jkjlzlgzvyjlpzp9cjw8hjwnjw-home-configuration-reference-manpage.drv
  /nix/store/2wfaqii1imk60nczbhnhl5m09id6p06z-home-manager-path.drv
  /nix/store/bxxnglicbfbjsx5m7j3hgax87qqdncaw-hm_homevpayno.cache.keep.drv
  /nix/store/v7dzwvn7ylv64nk9mw6skwgrqvwfc8bg-hm_environment.d10homemanager.conf.drv
  /nix/store/5gzdy41r92x7w9433khf1wbg76qidg6l-home-manager-files.drv
  /nix/store/d3id1nzaw1fs0wwk0wci3lgdibvw155f-hm-modules-messages.drv
  /nix/store/714nfsq13dkrdf353073wyrjnd7aivfw-link.drv
  /nix/store/gm37nxhag7iwwkyyp4jng0zv1sg0fwf0-check-link-targets.sh.drv
  /nix/store/r04alpwidm86fv9pqs0ybhmx3j1ksyqx-cleanup.drv
  /nix/store/b384351cky4r81iyk3986hdihn1dxwzv-activation-script.drv
  /nix/store/hva5z2029w8yg81ydm57nqqkbq90a45j-home-manager-generation.drv
these 13 paths will be fetched (3.62 MiB download, 18.27 MiB unpacked):
  /nix/store/339igg01vr5j5k5hvll1v2f4jwhikk0b-desktop-file-utils-0.27
  /nix/store/4d0ix5djms3n2jnjdc58l916cwack1rp-empty-directory
  /nix/store/gh49k49a9xbhlqwmf1v6b8d75ksra4xf-groff-1.23.0
  /nix/store/989mxq5xalif0v6b63077nlpxgrnaaz2-inetutils-2.5
  /nix/store/y433bl4sfbg3pfrdhfmh88g7398rqfb1-less-668
  /nix/store/l4kravw6ysr0h6npb137s4zvi9sppa00-libpipeline-1.5.8
  /nix/store/x15n8ilmba624j9f6dxlh97p0ykks4kv-lndir-1.0.5
  /nix/store/46fx9w8csmxf89sc8j5mwf9357n1hnzh-man-db-2.13.0
  /nix/store/xxdk1n3v5yss1lbanpadbjkf0mzpmwyh-nixos-option
  /nix/store/z52y1fm4lb9nkfals13vv0mhbcf2mi63-nixos-render-docs-0.0
  /nix/store/prxgf9s19y7096ha86f4rd2bs3hp2pm0-python3.12-markdown-it-py-3.0.0
  /nix/store/8yjbkf81yknvsax7lj0by2mnm9dbn8c6-python3.12-mdit-py-plugins-0.4.2
  /nix/store/0pc1isn0qp7l9ivj8w632l7x97a54krh-sd-switch-0.5.1
copying path '/nix/store/4d0ix5djms3n2jnjdc58l916cwack1rp-empty-directory' from 'https://cache.nixos.org'...
copying path '/nix/store/339igg01vr5j5k5hvll1v2f4jwhikk0b-desktop-file-utils-0.27' from 'https://cache.nixos.org'...
copying path '/nix/store/x15n8ilmba624j9f6dxlh97p0ykks4kv-lndir-1.0.5' from 'https://cache.nixos.org'...
copying path '/nix/store/0pc1isn0qp7l9ivj8w632l7x97a54krh-sd-switch-0.5.1' from 'https://cache.nixos.org'...
building '/nix/store/2qlq4c3l2nnwzw4x787fmldmv6c71dc3-dummy-xdg-mime-dirs1.drv'...
copying path '/nix/store/gh49k49a9xbhlqwmf1v6b8d75ksra4xf-groff-1.23.0' from 'https://cache.nixos.org'...
copying path '/nix/store/l4kravw6ysr0h6npb137s4zvi9sppa00-libpipeline-1.5.8' from 'https://cache.nixos.org'...
copying path '/nix/store/989mxq5xalif0v6b63077nlpxgrnaaz2-inetutils-2.5' from 'https://cache.nixos.org'...
copying path '/nix/store/y433bl4sfbg3pfrdhfmh88g7398rqfb1-less-668' from 'https://cache.nixos.org'...
copying path '/nix/store/xxdk1n3v5yss1lbanpadbjkf0mzpmwyh-nixos-option' from 'https://cache.nixos.org'...
copying path '/nix/store/prxgf9s19y7096ha86f4rd2bs3hp2pm0-python3.12-markdown-it-py-3.0.0' from 'https://cache.nixos.org'...
building '/nix/store/l2dv3r7wxhbjca0gyshrh0if3mr8xnzl-dummy-xdg-mime-dirs2.drv'...
building '/nix/store/d3id1nzaw1fs0wwk0wci3lgdibvw155f-hm-modules-messages.drv'...
copying path '/nix/store/8yjbkf81yknvsax7lj0by2mnm9dbn8c6-python3.12-mdit-py-plugins-0.4.2' from 'https://cache.nixos.org'...
building '/nix/store/7lk9hicrgwyzpqg7k1rr47ip1y1328fw-hm-session-vars.sh.drv'...
building '/nix/store/gm37nxhag7iwwkyyp4jng0zv1sg0fwf0-check-link-targets.sh.drv'...
building '/nix/store/r04alpwidm86fv9pqs0ybhmx3j1ksyqx-cleanup.drv'...
copying path '/nix/store/z52y1fm4lb9nkfals13vv0mhbcf2mi63-nixos-render-docs-0.0' from 'https://cache.nixos.org'...
building '/nix/store/v7dzwvn7ylv64nk9mw6skwgrqvwfc8bg-hm_environment.d10homemanager.conf.drv'...
building '/nix/store/bxxnglicbfbjsx5m7j3hgax87qqdncaw-hm_homevpayno.cache.keep.drv'...
copying path '/nix/store/46fx9w8csmxf89sc8j5mwf9357n1hnzh-man-db-2.13.0' from 'https://cache.nixos.org'...
building '/nix/store/njgf2pb2vpdlxz7asxyk5sfr175akjqh-home-manager.drv'...
install: creating directory '/nix/store/zjj7dmj6m7pwkdkyb1akhjsbq9cyhb9b-home-manager'
install: creating directory '/nix/store/zjj7dmj6m7pwkdkyb1akhjsbq9cyhb9b-home-manager/bin'
'/nix/store/jkbgg51q6sandvkq5sq430qncz4rmgkh-home-manager' -> '/nix/store/zjj7dmj6m7pwkdkyb1akhjsbq9cyhb9b-home-manager/bin/home-manager'
building '/nix/store/714nfsq13dkrdf353073wyrjnd7aivfw-link.drv'...
building '/nix/store/h0rwip69vwz28icx4l333mp29z2377vx-options.json.drv'...
building '/nix/store/0sa4jxj4aaxapxsy3mls9g65hcbvhc9j-tray.target.drv'...
building '/nix/store/v2wbl0jkjlzlgzvyjlpzp9cjw8hjwnjw-home-configuration-reference-manpage.drv'...
building '/nix/store/5gzdy41r92x7w9433khf1wbg76qidg6l-home-manager-files.drv'...
building '/nix/store/2wfaqii1imk60nczbhnhl5m09id6p06z-home-manager-path.drv'...
created 220 symlinks in user environment
building '/nix/store/b384351cky4r81iyk3986hdihn1dxwzv-activation-script.drv'...
building '/nix/store/hva5z2029w8yg81ydm57nqqkbq90a45j-home-manager-generation.drv'...
/nix/store/5hpkwpgykly4zj4lz6kksl7iif467izd-home-manager-generation
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Activating writeBoundary
Creating new profile generation
Activating installPackages
Activating linkGeneration
Creating home file links in /home/vpayno
Activating onFilesChange
Activating reloadSystemd
The user systemd session is degraded:
  UNIT                 LOAD   ACTIVE SUB    DESCRIPTION
● kite-updater.service loaded failed failed Kite Updater

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
Attempting to reload services anyway...
The service manager is degraded.
Failed services: kite-updater.service
Attempting to continue anyway...
this derivation will be built:
  /nix/store/wpmrjlvvl2g2mg8ppx7dc83y3473nzqd-hm-news.json.drv
building '/nix/store/wpmrjlvvl2g2mg8ppx7dc83y3473nzqd-hm-news.json.drv'...

There are 189 unread and relevant news items.
Read them by running the command "home-manager news".
```

Hmm, `home-manager` really wants to be in `${HOME}/.config/home-manager`
directory.

```bash
$ git clone git@github.com:vpayno/nix-home-manager-demo ${HOME}/.config/home-manager

$ cd ${HOME}/.config/home-manager

$ home-manager switch --flake .#vpayno
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Activating writeBoundary
Creating new profile generation
Activating installPackages
nix profile remove /nix/store/f38wkfcazdnmxvh91incaddd6sskha7p-home-manager-path
removing 'home-manager-path'
Activating linkGeneration
Cleaning up orphan links from /home/vpayno
Creating home file links in /home/vpayno
Activating onFilesChange
Activating reloadSystemd
The user systemd session is degraded:
  UNIT                 LOAD   ACTIVE SUB    DESCRIPTION
● kite-updater.service loaded failed failed Kite Updater

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
Attempting to reload services anyway...
The service manager is degraded.
Failed services: kite-updater.service
Attempting to continue anyway...
error: file 'home-manager/home-manager/build-news.nix' was not found in the Nix search path (add it using $NIX_PATH or -I)

$ home-manager switch --flake .#vpayno
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Activating writeBoundary
No change so reusing latest profile generation
Activating installPackages
nix profile remove /nix/store/0ldxdriyx62k6wz04708rgnw6xqn7s9g-home-manager-path
removing 'home-manager-path'
Activating linkGeneration
Cleaning up orphan links from /home/vpayno
Creating home file links in /home/vpayno
Activating onFilesChange
Activating reloadSystemd
The user systemd session is degraded:
  UNIT                 LOAD   ACTIVE SUB    DESCRIPTION
● kite-updater.service loaded failed failed Kite Updater

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
Attempting to reload services anyway...
The service manager is degraded.
Failed services: kite-updater.service
Attempting to continue anyway...
```

Check the home-manager generations:

```bash
$ home-manager switch generations
2025-02-22 23:24 : id 2 -> /nix/store/xkv2lk1ppp3bj1dqx61l1rckwb6s6sgm-home-manager-generation
2025-02-22 22:57 : id 1 -> /nix/store/5hpkwpgykly4zj4lz6kksl7iif467izd-home-manager-generation
```

## File Conflicts

When Home Manager encounters a file collision with existing files you are now
managing with Home Manager, you'll need to either rename or delete the targets
manually or use the `-b extension` argument to have Home Manager rename them for
you. Using `-b backup` makes it easy to find all the files renamed by Home
Manager.

## Adding a package, file, and a script

Adding the package `hello`, a file `~/.hello` and a script `my-script` using
Home Manager.

```bash
$ home-manager switch --flake .#vpayno
warning: Git tree '/home/vpayno/.config/home-manager' is dirty
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Activating writeBoundary
Creating new profile generation
Activating installPackages
nix profile remove /nix/store/z30lalrc0dvr26xf5hr91z3h0hhs4qmq-home-manager-path
removing 'home-manager-path'
Activating linkGeneration
Cleaning up orphan links from /home/vpayno
Creating home file links in /home/vpayno
Activating onFilesChange
Activating reloadSystemd
The user systemd session is degraded:
  UNIT                 LOAD   ACTIVE SUB    DESCRIPTION
● kite-updater.service loaded failed failed Kite Updater

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
Attempting to reload services anyway...
The service manager is degraded.
Failed services: kite-updater.service
Attempting to continue anyway...

$ which hello
/home/vpayno/.nix-profile/bin/hello

$ hello
Hello, world!

$ which my-hello
/home/vpayno/.nix-profile/bin/my-hello

$ my-hello
 ________________
< Hello, vpayno! >
 ----------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

$ ls -lh ~/.hello
lrwxrwxrwx 1 vpayno vpayno 69 Feb 23 23:00 /home/vpayno/.hello -> /nix/store/7rypkqjfg0622dx9lyhpr4d3wk0hd6df-home-manager-files/.hello

$ ls -lh /nix/store/7rypkqjfg0622dx9lyhpr4d3wk0hd6df-home-manager-files/.hello
lrwxrwxrwx 1 root root 53 Dec 31  1969 /nix/store/7rypkqjfg0622dx9lyhpr4d3wk0hd6df-home-manager-files/.hello -> /nix/store/llmlr3mc7qyqqgvxm90znvxnzlddvmg6-hm_.hello

$ ls -lh /nix/store/llmlr3mc7qyqqgvxm90znvxnzlddvmg6-hm_.hello
-r--r--r-- 1 root root 24 Dec 31  1969 /nix/store/llmlr3mc7qyqqgvxm90znvxnzlddvmg6-hm_.my-hello

$ cat ~/.hello  # oops, forgot the newline character
Hello Home Manager user!
```

## programs option

We can also use `programs` to not only `enable` (install) a package, but
configuring it as well.

Don't use `pkgs` and `file` to manage a package while also using `programs`
since there may be conflicts.

### programs.gh

Instead of installing `gh` (GitHub CLI) with `go install`, let's use Home
Manager.

```bash
$ home-manager switch --flake .#vpayno
warning: Git tree '/home/vpayno/.config/home-manager' is dirty
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Existing file '/home/vpayno/.config/gh/config.yml' is in the way of '/nix/store/slmra9sghvg23bplsjqn9v8mr16qvd42-home-manager-files/.config/gh/config.yml'
Please do one of the following:
- Move or remove the above files and try again.
- In standalone mode, use 'home-manager switch -b backup' to back up
  files automatically.
- When used as a NixOS or nix-darwin module, set
    'home-manager.backupFileExtension'
  to, for example, 'backup' and rebuild.

$ home-manager switch -b backup --flake .#vpayno
warning: Git tree '/home/vpayno/.config/home-manager' is dirty
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Existing file '/home/vpayno/.config/gh/config.yml' is in the way of '/nix/store/slmra9sghvg23bplsjqn9v8mr16qvd42-home-manager-files/.config/gh/config.yml', will be moved to '/home/vpayno/.config/gh/config.yml.backup'
Activating writeBoundary
Creating new profile generation
Activating installPackages
nix profile remove /nix/store/09jx1df4i2s3fys86f99bww3g2a38q1k-home-manager-path
removing 'home-manager-path'
Activating migrateGhAccounts
Activating linkGeneration
Cleaning up orphan links from /home/vpayno
Creating home file links in /home/vpayno
Activating onFilesChange
Activating reloadSystemd
The user systemd session is degraded:
  UNIT                 LOAD   ACTIVE SUB    DESCRIPTION
● kite-updater.service loaded failed failed Kite Updater

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
Attempting to reload services anyway...
The service manager is degraded.
Failed services: kite-updater.service
Attempting to continue anyway...
warning: Git tree '/home/vpayno/.config/home-manager' is dirty

$ yq . ~/.config/gh/config.yml
aliases:
  as: auth status
  gists-all: gist list
  gists-private: gist list --secret
  gists-public: gist list --public
  issues-bugs: issue list --label='bug'
  issues-documentation: issue list --label='documentation'
  issues-duplicate: issue list --label='duplicate'
  issues-enhancement: issue list --label='enhancement'
  issues-help-wanted: issue list --label='help wanted'
  issues-invalid: issue list --label='invalid'
  issues-noob: issue list --label='good first issue'
  issues-question: issue list --label='question'
  issues-wontfix: issue list --label='wontfix'
  prs-all: pr list
  prs-mine: pr list --author '@me'
editor: ''
git_protocol: https
version: '1'
```

### programs.fzf

To enable fzf correctly, we need to also manage the shells we're integrating
with because Home Manager needs to manage the user's shell profile files.

```bash
 home-manager switch --flake .#vpayno
warning: Git tree '/home/vpayno/.config/home-manager' is dirty
Starting Home Manager activation
Activating checkFilesChanged
Activating checkLinkTargets
Activating writeBoundary
Creating new profile generation
Activating installPackages
nix profile remove /nix/store/77vl27iwnmrh9lws1g3fc905yqvpg73w-home-manager-path
removing 'home-manager-path'
Activating migrateGhAccounts
Activating linkGeneration
Cleaning up orphan links from /home/vpayno
Creating home file links in /home/vpayno
Activating onFilesChange
Activating reloadSystemd
warning: Git tree '/home/vpayno/.config/home-manager' is dirty

$ ls -lh ~/.zshrc
lrwxrwxrwx 1 vpayno vpayno 69 Feb 24 08:43 /home/vpayno/.zshrc -> /nix/store/9cc4l8lh00m2vbilrlwgx0ksvxha7cl5-home-manager-files/.zshrc
```
