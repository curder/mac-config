# 个人Mac配置

## vim

[VIM插件简单配置](.vim/README.md)

[VIM使用参考](vim.md)


## Oh My Zsh

* 安装

```
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

brew install zsh zsh-completions zsh-syntax-highlighting php-version ccat
```

* 配置

配置之前先保存之前的配置：`cp ~/.zshrc ~/.zshrc_origin`

```
ln -s ~/mac-config/.zshrc ~/.zshrc
```


## PHPStorm 配置

文件名：`phpstorm_settings.jar`

使用方式`Files`->`Import Settings`，然后正确选择`phpstorm_settings.jar`包即可。

## Sequel Pro 颜色配置

配置文件在：`sequel-pro`目录下。