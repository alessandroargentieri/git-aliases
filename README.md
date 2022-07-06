# Git aliases

```text
 ▄▄▄▄▄▄▄ ▄▄▄ ▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄ ▄▄▄     ▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ 
█       █   █       █  █       █   █   █   █      █       █       █       █
█   ▄▄▄▄█   █▄     ▄█  █   ▄   █   █   █   █  ▄   █  ▄▄▄▄▄█    ▄▄▄█  ▄▄▄▄▄█
█  █  ▄▄█   █ █   █    █  █▄█  █   █   █   █ █▄█  █ █▄▄▄▄▄█   █▄▄▄█ █▄▄▄▄▄ 
█  █ █  █   █ █   █    █       █   █▄▄▄█   █      █▄▄▄▄▄  █    ▄▄▄█▄▄▄▄▄  █
█  █▄▄█ █   █ █   █    █   ▄   █       █   █  ▄   █▄▄▄▄▄█ █   █▄▄▄ ▄▄▄▄▄█ █
█▄▄▄▄▄▄▄█▄▄▄█ █▄▄▄█    █▄▄█ █▄▄█▄▄▄▄▄▄▄█▄▄▄█▄█ █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█
```

A series of stunning git aliases to improve your productivity while using git with your terminal.

## Install the aliases

### Prerequisites

The pre-requisites to install the git aliases are:
- having [git]("https://git-scm.com/") installed (of course!)
- have [curl]("https://curl.se") installed

### Install

To install the git aliases proceed with:

```bash
$ curl -s 'https://raw.githubusercontent.com/alessandroargentieri/git-aliases/main/install.sh' | bash
```

### Enjoy!

You can take advantage of the git aliases!

```bash
# checkout on a branch you partially remember the name!
$ git checkabout oauth2
Switched to branch feature/DASH-123_implementing-oauth2-on-rest-services

# check which commits your local branch is behind the remote one!
$ git behind
1068a729b fix on login service
8fb60506a update dependencies

# add only modified files (not untracked ones)!
$ git addmod

# stage tracked and untracked files with a message!
$ git wip 'oauth2-wip'

# re-apply the changes based on the message!
$ git wip-apply 'oauth2-wip'

# get the latest semantic versioning tag
$ git lasttag
v1.2.3

# push force a remote branch into another (new or existing) WITHOUT cloning it locally!
$ git remote2remote feature1 feature1-backup

# ... and many more...
```

## Documentation

To understand which aliases are available and how to use them, check the comments in the `install.sh` file.
