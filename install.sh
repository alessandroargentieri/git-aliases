#! /bin/bash

# add alias per lasttag (es. v1.4.6)
# usage:
# $ git
git config --global alias.lasttag '!f() { git fetch -tp &>/dev/null; git tag -l v* --sort=v:refname | tail -1; }; f'

# add alias per avere la lista dei tag locali o remoti (git tags, git tags -r, git tags --remote)
# usage:
# $ git
git config --global alias.tags '!f() { if [ "$1" == "-r" ] || [ "$1" == "--remote" ]; then git ls-remote --tags origin;  else git tag; fi; }; f'

# add alias per git ls
# si puo' specificare un altro branch: $ git ls develop
# usage:
# $ git
git config --global alias.ls '!f() { git log $1 --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%ae,%ar]" --decorate --graph; }; f'

# add alias per git blame
# usage git bl origin/develop -- path/to/the/file
# usage:
# $ git
git config --global alias.bl 'blame -c --date=short'

# add alias checkout short
# usage:
# $ git
git config --global alias.ch 'checkout'

# add alias status typo
git config --global alias.st 'status'
git config --global alias.statsu 'status'
git config --global alias.stats 'status'
git config --global alias.tstatus 'status' 
git config --global alias.statys 'status'
git config --global alias.statyus 'status'
git config --global alias.statsy 'status'
git config --global alias.stayus 'status'
git config --global alias.sttaus 'status'
git config --global alias.sttats 'status'
git config --global alias.statuys 'status'
git config --global alias.psuh 'push'
git config --global alias.psush 'psush'
git config --global alias.brancg 'branch'

# add alias merge
# usage:
# $ git
git config --global alias.m 'merge' 

# add alias branch
# usage:
# $ git
git config --global alias.b 'branch' 
git config --global alias.br 'branch' 

# add alias commit
# usage:
# $ git
git config --global alias.com 'commit' 

# add alias add
# usage:
# $ git
git config --global alias.a 'add' 

# add alias tag
# usage:
# $ git
git config --global alias.t 'tag' 

# add alias fetch
# usage:
# $ git
git config --global alias.f 'fetch -tp' 

# add alias to restore all staged files
# usage:
# $ git
git config --global alias.unstage 'restore --staged .'

# add alias to revert a merge
# usage:
# $ git
git config --global alias.revert-merge 'revert -m 1'. # git revert-merge  <merge-commit-hash>

# add alias to compare to branches
# usage:
# $ git
git config --global alias.x 'log --oneline' # git x branch1..branch2

# add alias to add only modified files
# usage:
# $ git
git config --global alias.addmod '!f() { git ls-files --modified | xargs git add; }; f'

# add alias per fare la creazione o il checkout di un branch
# usage:
# $ git
git config --global alias.switch '!f() { git checkout $1 2>/dev/null || git checkout -b $1; }; f'

# add alias per stashare anche i file untracked con un messaggio opzionale
# usage:
# $ git
git config --global alias.wip '!f() { git stash save $1 -u ; }; f'       # git wip "saved working in progress on DASH-515"

# add alias per applicare uno stash dato il nome e non il numerello
# usage:
# $ git
git config --global alias.wip-apply '!f() { temp=$(git stash list | cut -d ':' -f 3 | grep -n -w $1 | cut -d ':' -f 1) ; stashnum=$((temp-1)) ; stashname=$(echo stash@{$stashnum}) ; git stash apply $stashname ; }; f'     # git wip-apply 'embeddedTomcat'

# add alias per vedere di quali commit il branch corrente e' indietro rispetto al branch specificato
# usage:
# $ git
git config --global alias.commits-behind '!f() { git fetch -tp > /dev/null 2>&1; git log --oneline $(git branch --show-current)..$1; }; f'

# add alias per vedere di quali commit il branch corrente e quello branch specificato differiscono
# usage:
# $ git
git config --global alias.commits-diff '!f() { git fetch -tp > /dev/null 2>&1; git log --oneline $(git branch --show-current)...$1; }; f'

# add alias per fare il checkout su un branch di cui ricordiamo solo parzialmente il nome
# usage:
# $ git
# es. 
#       $ git checkabout predicate
#       Switched to branch feature/set-predicate
# if more branches are found, gets just the first
git config --global alias.checkabout '!f() { git checkout `git branch | grep $1 | head -1 | cut -d "*" -f 2`;}; f'   

# add alias per avere il nome del branch corrente
# usage:
# $ git
git config --global alias.branch-name 'branch --show-current'

# add alias per pushare su un nuovo branch settando l'upstream
# equivalente a: git push -u origin feature/blabla
# usage:
# $ git
git config --global alias.pushnew '!f() { git push -u origin `git branch --show-current`;  }; f'  

# add alias per avere la data di un tag  (git tag-date v1.5.3)
# usage:
# $ git
git config --global alias.tag-date  '!f() { git log --tags --simplify-by-decoration --pretty="format:%ci %d" | grep $1; }; f'

# add alias per vedere di quali commit il branch corrente e' andato avanti
# usage:
# $ git
git config --global alias.behind '!f() { git fetch -tp &>/dev/null; export BRANCH_NAME=$(git branch --show-current); git log --oneline $BRANCH_NAME..origin/${BRANCH_NAME}; }; f'

# add alias per vedere i file modificati tra due commit (buono per i merge)
# usage:
# $ git
git config --global alias.commit-diff 'diff --name-status'

# add alias per fare reset hard anche dei file e cartelle untracked
# usage:
# $ git
git config --global alias.reset-hard '!f() { git reset --hard; git clean -df ; }; f'

# add alias per conoscere username e email registrati
# usage:
# $ git
git config --global alias.whoami '!f() { echo "`git config user.name` `git config user.email`"; }; f'

# add alias per conoscere l'url del remote associato
# usage:
# $ git
git config --global alias.get-url 'config --get remote.origin.url'

# add alias per sovrascrivere l'url del remote associato
# usage:
# $ git
git config --global alias.set-url '!f() { git remote set-url origin $1 ; }; f'

# add alias per sovrascrivere l'url del remote associato specificando il remote name
# usage:
# $ git
git config --global alias.set-remote-url '!f() { git remote set-url $1 $2 ; }; f'

# add alias per conoscere l'url del remote specificando il remote name
# usage:
# $ git
git config --global alias.get-remote-url '!f() { git config --get remote.$1.url; }; f'

# add alias per pushare da un branch remoto all'altro senza portarli in locale e creando un NUOVO branch o forzandone uno remoto esistente
# esempio: git remote2remote my_remote_branch new_branch
# usage:
# $ git
git config --global alias.remote2remote '!f() { git fetch -tp &>/dev/null; git checkout origin/$1 &> /dev/null; git push -f origin HEAD:refs/heads/$2; git checkout - > /dev/null; }; f'

# add alias per resettare l'autore dell'ultimo commit
# usage:
# $ git
git config --global alias.reset-author '!f() { git config user.email alexmawashi87@gmail.com; git config user.name "alessandroargentieri"; git commit --amend --reset-author; }; f'

# add alias per avere la lista degli alias
# usage:
# $ git
git config --global alias.aliases '!f() { git config --get-regexp "^alias\." | cut -d " " -f 1 | cut -d "." -f 2 ; }; f'

# add alias per avere la descrizione di un alias 
# usage:
# $ git
git config --global alias.get-alias '!f() { git config --get-regexp "^alias\." | grep $1 ; }; f'

# add alias per fare una release tramite un tag (git release --patch --snapshot)
# usage:
# $ git
git config --global alias.release '!f() {                      
    RESET=`tput sgr0`
    GREEN=`tput setaf 2`
    CYAN=`tput setaf 6`
    YELLOW=`tput setaf 3`
    BOLD=`tput bold` 
    LASTTAG=$(git lasttag | cut -d 'v' -f 2)                   
    SPLITTED=(${LASTTAG//./ })                                 
    for i in {0..2}                                            
    do                                                         
       SPLITTED[$i]=`echo ${SPLITTED[$i]} | cut -d '-' -f 1`   
       [ "${SPLITTED[$i]}" != "" ] || SPLITTED[$i]=0           
    done                                                       
                                                               
    INDEX=2  
    if [ "$1" == "--help" ] || [ "$1" == "-h" ] || [ "$1" == "--usage" ]; then 
       echo "" 
       echo "Creates a ${BOLD}${YELLOW}new tag${RESET} from the current commit."
       echo "Usage: "
       echo "  git release ${GREEN}[--patch] [--snapshot] ${CYAN}# creates a new patch release ${RESET}"
       echo "  git release  --minor  ${GREEN}[--snapshot] ${CYAN}# creates a new minor release  ${RESET}"
       echo "  git release  --major  ${GREEN}[--snapshot] ${CYAN}# creates a new major release  ${RESET}"
       exit 0
    elif [[ "$1" == "--major" ]]; then                           
       SPLITTED[0]=$((SPLITTED[0]+1))   
       SPLITTED[1]=0
       SPLITTED[2]=0                       
       INDEX=0                                                 
    elif [[ "$1" == "--minor" ]]; then                         
       SPLITTED[1]=$((SPLITTED[1]+1))   
       SPLITTED[2]=0                       
       INDEX=1                                                 
    else                                                       
       SPLITTED[2]=$((SPLITTED[2]+1))                          
    fi                                                         
                                                               
    if [ "$1" == "--snapshot" ] || [ "$2" == "--snapshot" ]; then                         
       SPLITTED[$INDEX]=${SPLITTED[$INDEX]}-SNAPSHOT           
    fi                                                         
    echo "Latest tag found: ${BOLD}${YELLOW} `git lasttag`${RESET}"                                                           
    git tag v${SPLITTED[0]}.${SPLITTED[1]}.${SPLITTED[2]}      
    echo "New release tag: ${BOLD}${GREEN} `git lasttag`${RESET}"
}; f'
