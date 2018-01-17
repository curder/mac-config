# 个人Mac配置

## vim

[VIM插件简单配置](.vim/README.md)

[VIM使用参考](vim.md)

## 隐藏`Last login`提示


```
ln -s ~/mac-config/.hushlogin ~/.hushlogin
```
> 上面的操作将会移除类似"Last login: Wed Jan 10 09:18:08 on ttys004"的字符显示

## Oh My Zsh

* 安装

```
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

brew install zsh zsh-completions zsh-syntax-highlighting php-version ccat autojump
```

* 配置

配置之前先保存之前的配置：`cp ~/.zshrc ~/.zshrc_origin`

```
ln -s ~/mac-config/.zshrc ~/.zshrc
```

## 安装node版本管理nvm

```
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
```

## 命令行自动补全


```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```


## PHPStorm 配置

文件名：`phpstorm_settings.jar`

使用方式`Files`->`Import Settings`，然后正确选择`phpstorm_settings.jar`包即可。

## Sequel Pro 颜色配置

配置文件在：`sequel-pro`目录下。
