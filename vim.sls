vim:
  pkg.installed

/home/.vim/autoload:
  file.directory:
    - user: root
    - makedirs: True

/home/.vim/bundle:
  file.directory:
    - user: root
    - makedirs: True

git-clone:
  git.cloned:
    - name: https://github.com/saltstack/salt-vim.git
    - branch: master
    - target: /home/.vim/bundle
