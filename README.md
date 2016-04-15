# wp_install
an oh-my-zsh plugin for downloading and extracting the latest [Wordpress](https://wordpress.org/) version.

## installation
```
git clone https://github.com/MrMartiniMo/wp_install.git $ZSH/plugins/wp_install
```

- open your .zshrc file
- search for the line `plugins=(...)`
- add wp_install

##### _example_
```
plugins=(git subl wp_install)
```

## usage
```
wp_install <install_dir>
```

##### _example_
```
cd Projects
wp_install awesome-unicorns
cd awesome-unicorns
```

---

make love, not war :heart: