vim:
  pkg.installed:
    - pkgs:
      - vim-X11
      - vim-common
      - vim-enhanced
      - vim-minimal

/home/.vim/autoload:
  file.directory:
    - user: root
    - makedirs: True

/home/.vim/bundle:
  file.directory:
    - user: root
    - makedirs: True

git-vim-pathogen:
  git.latest:
    - name: https://github.com/tpope/vim-pathogen.git
    - target: /root/home/.vim/autoload

git-clone:
  git.latest:
    - name: https://github.com/saltstack/salt-vim.git
    - branch: master
    - target: /root/home/.vim/bundle

/root/home/.vimrc:
  file.managed:
    - makedirs: True
    - contents:
      - set nocompatible
      - filetype plugin indent on
      - syntax on
      - execute pathogen#infect()
