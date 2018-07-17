# Terminal Themes
A small repo for custom themes that I've created for my terminal.

I use [iTerm2](https://iterm2.com/) and [Oh My ZSH](http://ohmyz.sh/), which each allow for custom themes. I forked the [Cobalt2 theme](https://github.com/wesbos/Cobalt2-iterm) from [Wes Bos](https://wesbos.com), then modified it to align roughly with [Northwestern University's branding guidelines](https://www.northwestern.edu/brand/).

For the Oh My ZSH theme to work, you will also need to install the [patched powerline font](https://github.com/powerline/fonts).


## Step-by-step installation
1. Install iTerm2 and Oh My ZSH using the links above

1. Drop the `go-cats.zsh-theme` file in to the `~/.oh-my-zsh/themes/` directory

1. Open up your ZSH preferences at `~/.zshrc` and change the theme variable to `ZSH_THEME="go-cats"`

1. Install Powerline and necessary fonts, one way is using PIP
    ```
    pip install --user powerline-status
    ```

1. Install all necessary fonts by cloning the git repository
    ```
    git clone https://github.com/powerline/fonts
    cd fonts
    ./install.sh
    ```

1. In iTerm2 access the **Preferences** pane on the **Profiles** tab
    - Under the **Colors** tab import the `go-cats.itermcolors` file via the **Load Presets** drop-down
    - Under the **Text** tab change the font for both types (Regular and Non-ASCII) to **Inconsolata for Powerline (16pt)**
    - These don't necessarily relate to the theme, but In the **Text** tab I also like to change the cursor to a blinking vertical bar and in the **General** tab I turn off the "Confirm Quit" options

1. Refresh ZSH by typing `source ~/.zshrc` on the command line
