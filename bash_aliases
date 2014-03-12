alias l="clear && pwd && ls -FGlh"
alias u="cd .. && l"

alias tamr-postgres-login="sudo su - postgres"
alias tamr-javasrc="cd /Users/apagan/IntelliJ/javasrc/datatamer"
alias tamr-rebase-against-develop="git remote update && git rebase upstream/develop"
alias tamr-branch="git checkout -b "
alias tamr-start-tomcat='MVN_OPTS="-Xmx1024m -XX:MaxPermSize=1024m" mvn clean tomcat7:run'
