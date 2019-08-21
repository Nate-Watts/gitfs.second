vim:
  pkg.installed

/home/.vim/autoload:
  file.directory:
    - user: root

/home/.vim/bundle:
  file.directory:
    - user: root

pathogen:
  pkg.installed
    - name: 

git-clone:
  git.cloned:
    - name: https://github.com/saltstack/salt-vim.git
    - branch: master
    - target: /home/.vim/bundle
