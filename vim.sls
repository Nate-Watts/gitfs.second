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

git-clone:
  git.latest:
    - name: https://github.com/saltstack/salt-vim.git
    - branch: master
    - target: /root/home/.vim/bundle
