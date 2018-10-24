alias api-go='cd ~/Documents/GitHub/Node-API && make serve'
alias api-pqa='cd ~/Documents/GitHub/Node-API && make pqa'
alias cdn-build='cd ~/Documents/GitHub/CDN/global && nvm use 6.2.1 && make build'
alias cdn-go='cd ~/Documents/GitHub/CDN/global && nvm use 6.2.1 && grunt serve'
alias cupcake-go='cd ~/Documents/GitHub/cupcake && make serve'
alias cupcake-pqa='cd ~/Documents/GitHub/cupcake && make pqa'
alias signup-go='cd ~/Documents/GitHub/signup && make serve'
alias signup-pqa='cd ~/Documents/GitHub/signup && make pqa'
alias wa-go='cd ~/Documents/GitHub/Node-Webadmin && make serve'
alias wa-pqa='cd ~/Documents/GitHub/Node-Webadmin && make pqa'

alias pm2='./node_modules/pm2/bin/pm2'

function api-token () {
    json=$(curl -X POST -H "Cache-Control: no-cache" -H "Content-Type: application/x-www-form-urlencoded" -d 'username=qa1&password=qa1&ttl=1200000000' "http://0.0.0.0:3000/api/tech/login?u")
    id=$(echo $json | grep -o '[^"]\{64\}')
    RED='\033[0;31m'
    NOCOLOR='\033[0m'
    echo -e "\n\t${RED}$id${NOCOLOR}\n"
}

function stop-all () {
    pm2 kill
    kill -9 $(ps -aucaleb.burton | grep "[g]runt" | awk '{print $2}')
    echo "\nAll pm2 and grunt processes killed.\n"
}

alias reload='source ~/.zshrc'
alias zshrc='code ~/.zshrc'
alias aliases='code ~/aliases.zsh'