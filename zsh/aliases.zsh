#!/usr/bin/env zsh

# File management and navigation
alias ll="ls -lah --color=always"
alias cat="bat --plain"
alias vim="nvim"
alias lg="lazygit"
alias reload="exec zsh"
alias path="echo \$PATH | tr ':' '\n'"

# System monitoring
alias maccpumetrics="sudo powermetrics --samplers smc |grep -i 'CPU die temperature'"
alias macgpumetrics="sudo powermetrics --samplers smc |grep -i 'GPU die temperature'"

# Development
alias nukenpm="rm -rf node_modules/ && rm package-lock.json"
alias appium-start="appium --base-path /wd/hub"

# Music
alias mnx="music next && music playing"

# Pokemon (moved from startup)
alias pokemon="pokeget \$(threeRand)" 