# 个人Mac配置

## VIM

[VIM插件简单配置](.vim/README.md)

[VIM使用参考](vim.md)

## 隐藏`Last login`提示


```
ln -s ~/mac-config/.hushlogin ~/.hushlogin
```
> 上面的操作将会移除类似"Last login: Wed Jan 10 09:18:08 on ttys004"的字符显示，在CentOS和mac上测试有效，其他平台请自行搜索有效解决方案。

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

* 通过[nvm](https://github.com/creationix/nvm)安装node

```
nvm install node

NVM_NODEJS_ORG_MIRROR=https://nodejs.org/dist nvm install 8.8.1 # 安装指定版本的node
```


## 命令行自动补全


```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```


## PHPStorm 配置

文件名：`jetbrains/PhpStorm2020.3_settings.zip`

使用方式`Files`->`Import Settings`，然后正确选择`PhpStorm2020.3_settings.zip`包即可。

## Sequel Pro 颜色配置

配置文件在：`sequel-pro`目录下。

## MacVim

### 下载
```bash
brew install macvim
brew linkapps
```

### 配置
将`./.gvimrc`复制到电脑的`~/.gvimrc`。

## Sublime Text 3 配置

项目参考地址[syncing](https://packagecontrol.io/docs/syncing)
将文档中的`~/Dropbox`替换为当前项目所在目录即可。[更多用法参考](https://github.com/curder/blog/blob/master/tools/sublime/README.md) 

### 安装

安装如下两个php的代码规范检查命令。

```
composer global require "squizlabs/php_codesniffer=*"
composer global require friendsofphp/php-cs-fixer
```

https://macvim-dev.github.io/macvim/

### 配置
为了能够正常使用自动格式化代码的功能，需要简单配置自定义项，新建phpcsfixer的配置文件`~/.phpcsfixer`，内容如下:
```
<?php
$finder = PhpCsFixer\Finder::create()
          ->exclude('tests/')
          ->in(__DIR__)
;

return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2' => true,
        'align_multiline_comment' => true,
        'no_trailing_whitespace' => true,
        'no_short_echo_tag'=> true,
        'array_syntax' => ['syntax' => 'short'],
        'no_unused_imports' => true,
        'ordered_imports' => ['sortAlgorithm' => 'length']
    ])
    ->setFinder($finder)
;
```

