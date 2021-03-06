;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
    ;; Base distribution to use. This is a layer contained in the directory
    ;; `+distribution'. For now available distributions are `spacemacs-base'
    ;; or `spacemacs'. (default 'spacemacs)
    dotspacemacs-distribution 'spacemacs
    ;; Lazy installation of layers (i.e. layers are installed only when a file
    ;; with a supported type is opened). Possible values are `all', `unused'
    ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
    ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
    ;; lazy install any layer that support lazy installation even the layers
    ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
    ;; installation feature and you have to explicitly list a layer in the
    ;; variable `dotspacemacs-configuration-layers' to install it.
    ;; (default 'unused)
    dotspacemacs-enable-lazy-installation 'unused
    ;; If non-nil then Spacemacs will ask for confirmation before installing
    ;; a layer lazily. (default t)
    dotspacemacs-ask-for-lazy-installation t
    ;; If non-nil layers with lazy instalpackages/l support are lazy installed.
    ;; List of additional paths where to look for configuration layers.
    ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
    dotspacemacs-configuration-layer-path '("~/.config/spacemacs/")
    ;; List of configuration layers to load.
    dotspacemacs-configuration-layers
    '(
       ;; ----------------------------------------------------------------
       ;; Example of useful layers you may want to use right away.
       ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
       ;; <M-m f e R> (Emacs style) to install them.
       ;; ----------------------------------------------------------------
       ;; chat
       ;; erc
       ;; jabber
       ;; slack
       ;; checkers
       (spell-checking :variables spell-checking-enable-by-default nil)
       syntax-checking
       ;; completion
       (auto-completion :variables
         auto-completion-enable-sort-by-usage t
         auto-completion-enable-snippets-in-popup t)
       helm
       ;; emacs
       better-defaults
       org
       ;; frameworks
       ;; django
       ;; react
       ;; ruby-on-rails
       ;; lang
       asciidoc
       (c-c++ :variables c-c++-enable-clang-support t)
       clojure
       common-lisp
       ;; csharp
       csv
       d
       elixir
       elm
       emacs-lisp
       erlang
       ess
       extra-langs
       ;; fsharp
       (go :variables
         gofmt-command "goimports"
         go-use-gometalinter t
         )
       (haskell :variables
         haskell-completion-backend 'intero
         haskell-enable-hindent-style "johan-tibell"
         )
       html
       idris
       ;; java
       javascript
       (markdown :variables markdown-live-preview-engine 'vmd)
       nim
       ocaml
       ;; php
       (python :variables python-enable-yapf-format-on-save t)
       racket
       ruby
       (rust :variables rust-enable-racer t)
       scala
       scheme
       shell-scripts
       sml
       sql
       swift
       typescript
       vimscript
       windows-scripts
       yaml
       ;; os
       osx
       ;; source-control
       (git :variables
         git-gutter-use-fringe t)
       github
       version-control
       ;; tags
       ;; gtags
       ;; themes
       (colors :variables colors-colorize-identifiers 'all)
       ;; tools
       ansible
       ;; chrome
       docker
       nginx
       ;; puppet
       ranger
       ;; salt
       (shell :variables
         shell-default-term-shell "/usr/local/bin/fish"
         shell-default-shell 'eshell)
       systemd
       terraform
       vagrant
       ;; custom
       groovy
       editorconfig
       objc
       kotlin
       bazel
       )
    ;; List of additional packages that will be installed without being
    ;; wrapped in a layer. If you need some configuration for these
    ;; packages, then consider creating a layer. You can also put the
    ;; configuration in `dotspacemacs/user-config'.
    dotspacemacs-additional-packages '(
                                        direnv
                                        all-the-icons
                                        )
    ;; A list of packages that cannot be updated.
    dotspacemacs-frozen-packages '()
    ;; A list of packages that will not be installed and loaded.
    dotspacemacs-excluded-packages '(
                                )
    ;; Defines the behaviour of Spacemacs when installing packages.
    ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
    ;; `used-only' installs only explicitly used packages and uninstall any
    ;; unused packages as well as their unused dependencies.
    ;; `used-but-keep-unused' installs only the used packages but won't uninstall
    ;; them if they become unused. `all' installs *all* packages supported by
    ;; Spacemacs and never uninstall them. (default is `used-only')
    dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
    ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
    ;; possible. Set it to nil if you have no way to use HTTPS in your
    ;; environment, otherwise it is strongly recommended to let it set to t.
    ;; This variable has no effect if Emacs is launched with the parameter
    ;; `--insecure' which forces the value of this variable to nil.
    ;; (default t)
    dotspacemacs-elpa-https t
    ;; Maximum allowed time in seconds to contact an ELPA repository.
    dotspacemacs-elpa-timeout 10
    ;; If non nil then spacemacs will check for updates at startup
    ;; when the current branch is not `develop'. Note that checking for
    ;; new versions works via git commands, thus it calls GitHub services
    ;; whenever you start Emacs. (default nil)
    dotspacemacs-check-for-update nil
    ;; If non-nil, a form that evaluates to a package directory. For example, to
    ;; use different package directories for different Emacs versions, set this
    ;; to `emacs-version'.
    dotspacemacs-elpa-subdirectory nil
    ;; One of `vim', `emacs' or `hybrid'.
    ;; `hybrid' is like `vim' except that `insert state' is replaced by the
    ;; `hybrid state' with `emacs' key bindings. The value can also be a list
    ;; with `:variables' keyword (similar to layers). Check the editing styles
    ;; section of the documentation for details on available variables.
    ;; (default 'vim)
    dotspacemacs-editing-style 'hybrid
    ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
    dotspacemacs-verbose-loading nil
    ;; Specify the startup banner. Default value is `official', it displays
    ;; the official spacemacs logo. An integer value is the index of text
    ;; banner, `random' chooses a random text banner in `core/banners'
    ;; directory. A string value must be a path to an image format supported
    ;; by your Emacs build.
    ;; If the value is nil then no banner is displayed. (default 'official)
    dotspacemacs-startup-banner 'official
    ;; List of items to show in startup buffer or an association list of
    ;; the form `(list-type . list-size)`. If nil then it is disabled.
    ;; Possible values for list-type are:
    ;; `recents' `bookmarks' `projects' `agenda' `todos'."
    ;; List sizes may be nil, in which case
    ;; `spacemacs-buffer-startup-lists-length' takes effect.
    dotspacemacs-startup-lists '((recents . 15)
                                  (projects . 17))
    ;; True if the home buffer should respond to resize events.
    dotspacemacs-startup-buffer-responsive t
    ;; Default major mode of the scratch buffer (default `text-mode')
    dotspacemacs-scratch-mode 'markdown-mode
    ;; List of themes, the first of the list is loaded when spacemacs starts.
    ;; Press <SPC> T n to cycle to the next theme in the list (works great
    ;; with 2 themes variants, one dark and one light)
    dotspacemacs-themes '(
                           base16-summerfruit-dark
                           base16-tomorrow-night
                           base16-material-darker
                           base16-material
                           spacemacs-dark
                           spacemacs-light)
    ;; If non nil the cursor color matches the state color in GUI Emacs.
    dotspacemacs-colorize-cursor-according-to-state t
    ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
    ;; quickly tweak the mode-line size to make separators look not too crappy.
    dotspacemacs-default-font '("Hack Nerd Font"
                                 :size 11
                                 :weight normal
                                 :width normal
                                 :powerline-scale 1.1)
    ;; The leader key
    dotspacemacs-leader-key "SPC"
    ;; The leader key accessible in `emacs state' and `insert state'
    ;; (default "M-m")
    dotspacemacs-emacs-leader-key "M-m"
    ;; Major mode leader key is a shortcut key which is the equivalent of
    ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
    dotspacemacs-major-mode-leader-key ","
    ;; Major mode leader key accessible in `emacs state' and `insert state'.
    ;; (default "C-M-m)
    dotspacemacs-major-mode-emacs-leader-key "C-M-m"
    ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
    ;; (default "SPC")
    dotspacemacs-emacs-command-key "SPC"
    ;; These variables control whether separate commands are bound in the GUI to
    ;; the key pairs C-i, TAB and C-m, RET.
    ;; Setting it to a non-nil value, allows for separate commands under <C-i>
    ;; and TAB or <C-m> and RET.
    ;; In the terminal, these pairs are generally indistinguishable, so this only
    ;; works in the GUI. (default nil)
    dotspacemacs-distinguish-gui-tab nil
    ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
    dotspacemacs-remap-Y-to-y$ nil
    ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
    ;; there. (default t)
    dotspacemacs-retain-visual-state-on-shift t
    ;; If non-nil, J and K move lines up and down when in visual mode.
    ;; (default nil)
    dotspacemacs-visual-line-move-text nil
    ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
    ;; (default nil)
    dotspacemacs-ex-substitute-global nil
    ;; Name of the default layout (default "Default")
    dotspacemacs-default-layout-name "Default"
    ;; If non nil the default layout name is displayed in the mode-line.
    ;; (default nil)
    dotspacemacs-display-default-layout nil
    ;; If non nil then the last auto saved layouts are resume automatically upon
    ;; start. (default nil)
    dotspacemacs-auto-resume-layouts nil
    ;; Size (in MB) above which spacemacs will prompt to open the large file
    ;; literally to avoid performance issues. Opening a file literally means that
    ;; no major mode or minor modes are active. (default is 1)
    dotspacemacs-large-file-size 1
    ;; Location where to auto-save files. Possible values are `original' to
    ;; auto-save the file in-place, `cache' to auto-save the file to another
    ;; file stored in the cache directory and `nil' to disable auto-saving.
    ;; (default 'cache)
    dotspacemacs-auto-save-file-location 'cache
    ;; Maximum number of rollback slots to keep in the cache. (default 5)
    dotspacemacs-max-rollback-slots 5
    ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
    dotspacemacs-helm-resize nil
    ;; if non nil, the helm header is hidden when there is only one source.
    ;; (default nil)
    dotspacemacs-helm-no-header nil
    ;; define the position to display `helm', options are `bottom', `top',
    ;; `left', or `right'. (default 'bottom)
    dotspacemacs-helm-position 'bottom
    ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
    ;; in all non-asynchronous sources. If set to `source', preserve individual
    ;; source settings. Else, disable fuzzy matching in all sources.
    ;; (default 'always)
    dotspacemacs-helm-use-fuzzy 'always
    ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
    ;; several times cycle between the kill ring content. (default nil)
    dotspacemacs-enable-paste-transient-state nil
    ;; Which-key delay in seconds. The which-key buffer is the popup listing
    ;; the commands bound to the current keystroke sequence. (default 0.4)
    dotspacemacs-which-key-delay 0.4
    ;; Which-key frame position. Possible values are `right', `bottom' and
    ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
    ;; right; if there is insufficient space it displays it at the bottom.
    ;; (default 'bottom)
    dotspacemacs-which-key-position 'bottom
    ;; If non nil a progress bar is displayed when spacemacs is loading. This
    ;; may increase the boot time on some systems and emacs builds, set it to
    ;; nil to boost the loading time. (default t)
    dotspacemacs-loading-progress-bar t
    ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
    ;; (Emacs 24.4+ only)
    dotspacemacs-fullscreen-at-startup t
    ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
    ;; Use to disable fullscreen animations in OSX. (default nil)
    dotspacemacs-fullscreen-use-non-native nil
    ;; If non nil the frame is maximized when Emacs starts up.
    ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
    ;; (default nil) (Emacs 24.4+ only)
    dotspacemacs-maximized-at-startup nil
    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's active or selected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-active-transparency 90
    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's inactive or deselected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-inactive-transparency 90
    ;; If non nil show the titles of transient states. (default t)
    dotspacemacs-show-transient-state-title t
    ;; If non nil show the color guide hint for transient state keys. (default t)
    dotspacemacs-show-transient-state-color-guide t
    ;; If non nil unicode symbols are displayed in the mode line. (default t)
    dotspacemacs-mode-line-unicode-symbols t
    ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
    ;; scrolling overrides the default behavior of Emacs which recenters point
    ;; when it reaches the top or bottom of the screen. (default t)
    dotspacemacs-smooth-scrolling t
    ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
    ;; derivatives. If set to `relative', also turns on relative line numbers.
    ;; (default nil)
    dotspacemacs-line-numbers nil
    ;; Code folding method. Possible values are `evil' and `origami'.
    ;; (default 'evil)
    dotspacemacs-folding-method 'evil
    ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
    ;; (default nil)
    dotspacemacs-smartparens-strict-mode t
    ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
    ;; over any automatically added closing parenthesis, bracket, quote, etc…
    ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
    dotspacemacs-smart-closing-parenthesis t
    ;; Select a scope to highlight delimiters. Possible values are `any',
    ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
    ;; emphasis the current one). (default 'all)
    dotspacemacs-highlight-delimiters 'all
    ;; If non nil, advise quit functions to keep server open when quitting.
    ;; (default nil)
    dotspacemacs-persistent-server t
    ;; List of search tool executable names. Spacemacs uses the first installed
    ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
    ;; (default '("ag" "pt" "ack" "grep"))
    dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
    ;; The default package repository used if no explicit repository has been
    ;; specified with an installed package.
    ;; Not used for now. (default nil)
    dotspacemacs-default-package-repository nil
    ;; Delete whitespace while saving buffer. Possible values are `all'
    ;; to aggressively delete empty line and long sequences of whitespace,
    ;; `trailing' to delete only the whitespace at end of lines, `changed'to
    ;; delete only whitespace for changed lines or `nil' to disable cleanup.
    ;; (default nil)
    dotspacemacs-whitespace-cleanup 'trailing
    ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; (setq-default ruby-version-manager 'rbenv)
  ;; (setq-default ruby-enable-ruby-on-rails-support t)
  ;; (setq flycheck-disabled-checkers '(javascript-jshint))
  ;; (setq flycheck-checkers '(javascript-eslint))
  ;; (setq racer-cmd "~/.multirust/toolchains/beta/cargo/bin/racer")
  ;; (setq racer-rust-src-path "~/work/private/tryouts/rust/rust/src")
  (setq projectile-enable-caching t)
  (setq exec-path (append exec-path '("/usr/local/bin")))
  (setq exec-path (append exec-path '("/usr/local/sbin")))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (global-set-key (kbd "<s-left>") 'move-beginning-of-line)
  (global-set-key (kbd "<s-right>") 'move-end-of-line)
  (global-set-key (kbd "<s-up>") 'beginning-of-buffer)
  (global-set-key (kbd "<s-down>") 'end-of-buffer)
  (global-set-key (kbd "s-k") 'kill-this-buffer)
  (global-set-key (kbd "s-z") 'undo)
  (global-set-key (kbd "s-/") 'comment-dwim)
  (global-set-key (kbd "s-[") 'other-window)
  (global-set-key (kbd "s-]") 'other-window)
  (defun save-all ()
    (interactive)
    (save-some-buffers t))
  (add-hook 'focus-out-hook 'save-all)
  (direnv-mode)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(custom-safe-themes
     (quote
       ("aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "446cc97923e30dec43f10573ac085e384975d8a0c55159464ea6ef001f4a16ba" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(indent-tabs-mode nil)
 '(js-switch-indent-offset 2)
 '(js2-basic-offset 2)
 '(js2-indent-switch-body t)
 '(json-reformat:indent-width 2)
 '(json-reformat:pretty-string\? t)
 '(kotlin-tab-width 4)
 '(neo-theme (quote icons))
  '(package-selected-packages
     (quote
       (treepy graphql sesman flycheck-gometalinter memoize systemd all-the-icons bazel-mode direnv base16-theme org-mime ghub omnisharp shut-up csharp-mode org-category-capture flycheck-nimsuggest winum unfill fuzzy flycheck-credo company-ansible flycheck-kotlin csv-mode exec-path-from-shell kotlin-mode powershell ranger phpunit phpcbf php-extras php-auto-yasnippets nginx-mode fsharp-mode company-quickhelp drupal-mode php-mode go-guru slime-company ob-elixir minitest insert-shebang hide-comnt company-dcd ivy yapfify yaml-mode xterm-color ws-butler wolfram-mode window-numbering which-key web-mode web-beautify volatile-highlights vmd-mode vimrc-mode vi-tilde-fringe vagrant-tramp vagrant uuidgen utop use-package tuareg caml toml-mode toc-org tide typescript-mode thrift terraform-mode hcl-mode tagedit swift-mode stan-mode sql-indent spacemacs-theme spaceline powerline smeargle slime slim-mode shell-pop scss-mode scad-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder restart-emacs rbenv rake rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode faceup racer qml-mode pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary orgit org-projectile org-present org org-pomodoro alert log4e gntp org-plus-contrib org-download org-bullets open-junk-file ocp-indent objc-font-lock ob-sml sml-mode noflet nim-mode commenter epc concurrent deferred neotree mwim multi-term move-text mmm-mode merlin matlab-mode markdown-toc markdown-mode magit-gitflow magit-gh-pulls macrostep lorem-ipsum livid-mode skewer-mode simple-httpd live-py-mode linum-relative link-hint less-css-mode launchctl js2-refactor js2-mode js-doc jinja2-mode intero info+ indent-guide idris-mode prop-menu ido-vertical-mode hy-mode hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers parent-mode highlight-indentation help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make projectile helm-hoogle helm-gitignore request helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haskell-snippets haml-mode groovy-mode google-translate golden-ratio go-eldoc gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md geiser flyspell-correct-helm flyspell-correct flycheck-rust flycheck-pos-tip pos-tip flycheck-nim flycheck-mix flycheck-haskell flycheck-elm flycheck-dmd-dub flycheck flx-ido flx fish-mode fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree ess-smart-equals ess-R-object-popup ess-R-data-view ctable ess julia-mode eshell-z eshell-prompt-extras esh-help erlang ensime sbt-mode scala-mode emmet-mode elm-mode elisp-slime-nav editorconfig dumb-jump dockerfile-mode docker json-mode tablist magit-popup docker-tramp json-snatcher json-reformat disaster diminish diff-hl dactyl-mode d-mode cython-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-go go-mode company-ghci company-ghc ghc haskell-mode company-cabal company-c-headers company-anaconda common-lisp-snippets column-enforce-mode color-identifiers-mode coffee-mode cmm-mode cmake-mode clojure-snippets clj-refactor hydra inflections edn multiple-cursors paredit peg clean-aindent-mode clang-format cider-eval-sexp-fu eval-sexp-fu highlight cider seq spinner queue clojure-mode chruby cargo rust-mode bundler inf-ruby bind-map bind-key auto-yasnippet yasnippet auto-highlight-symbol auto-dictionary auto-compile packed arduino-mode ansible-doc ansible anaconda-mode pythonic f s alchemist company dash elixir-mode pkg-info epl aggressive-indent adoc-mode markup-faces adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup quelpa package-build color-theme-sanityinc-tomorrow)))
 '(python-indent-offset 4)
 '(ring-bell-function (quote ignore))
 '(standard-indent 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
