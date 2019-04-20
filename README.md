[![Waffle.io - Columns and their card count](https://badge.waffle.io/championer-org/championer_one.svg?columns=all)](https://waffle.io/championer-org/championer_one)

# ChampionerOne
## Collaborating - Clone repo

  * Clone the repo:

      `git clone https://github.com/championer-org/championer_one.git && cd championer_one`

  * Ask to be added as a collaborator:
    * Email [federico](mailto:federico@championer.org?Subject=I%20want%20to%20collaborate%20on%20ChampionerOne) with your Github username, OR
    * Ask @lara-t or @federico in our [AgileVentures.org Slack channel](https://agileventures.slack.com/messages/phoenix_one)

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Compile the dependencies with `mix deps.compile`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm ci`
  * Move to the root directory with `cd ..` and start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Collaborating - use of WaffleBot

  * ChampionerOne uses Waffle.io as a project management tool, because it allows a high level of cooperation between developers, and collaborators in general.

  * Head over and check out [ChampionerOne's Waffle Board](https://waffle.io/championer-org/championer_one)

  * WaffleBot keeps track of progress and which collaborators are currently working on an issue, by tracking GitHub issue numbers.

  * Everything starts in the Backlog column where there is a prioritized list of issue cards. ![waffle board](https://dl.dropbox.com/s/4f6o3mqkd365huk/waffle-board.png?dl=0)

  * At the top left of an issue card, you can see numbers that reference GitHub issue #s. If you click on one of them, a short description will help you understand what the issue is.

  * Once you decide on an issue to work on (look for the *Help Wanted* or *Good First Issue* tags), create a branch from the terminal with the issue number and a short description, for example:

    ```js
    //Be sure you create your branch from an up-to-date develop branch
    //Don't modify develop. Keep it clean & in sync with this Github repo's develop branch
    git checkout develop

    //Update develop branch
    git pull

    //Create feature branch
    git checkout -b 17-add-logo
    ```

  * or you can go straight to GitHub and create a branch: ![create a   branch.](https://dl.dropbox.com/s/e3q4i7ikcz387xl/create-branch-github.png?dl=0)

  * When creating it from your terminal, remember that you need to push the branch to this GitHub repo before Waffle will know you are working on the issue you chose (e.g. `git push --set-upstream origin 17-add-logo`).

  * Now you're ready to change some code, and because your branch starts with the issue #, WaffleBot will have automatically moved the issue card to the *In Progress* column, letting people know you are working on a specific issue.

  * After you make your modifications, but before you make your last commit on your code, be sure to run the tests, to ensure no regressions have been introduced:

    `chromedriver & mix test && pkill chromedriver`

  * Commit your changes:

    `git add -A && git commit -m "Add message describing my changes"`

  * When you're ready to submit your changes in a pull-request, first update your develop & your feature branch:
      ```js
    git checkout develop

    git pull

    //Switch back to your feature branch
    git checkout 17-add-logo

    //Update your feature branch by merging develop
    git merge develop
    ```

  * Double-check the site runs normally or as intended, in your browser on [`localhost:4000`](http://localhost:4000):

    `mix phx.server`

  * Push up your changes and submit your PR:

    `git push`

    ![Make PR](https://dl.dropbox.com/s/j50pk714r3i872p/Screenshot%202018-06-07%2001.58.45.png)

  * After submitting a pull-request with a keyword such as *Fixes, Closes,* or *Resolves* and the issue # in the PR description (for example, `Fixes #17`), WaffleBot moves the issue card once again to the right, into the *Needs Review* column, where another collaborator will need to review it.

   * You can always edit and prepend Work-In-Progress to your PR title, to let the team know that your PR is not finished yet (e.g. `[WIP] 17 add logo`).

# Linux(ubuntu) Setup Instructions:
  * I highly recommend to use [asdf](https://github.com/asdf-vm/asdf/) version manager with support for Ruby, Node.js, Elixir, Erlang and few more: [List of all avaliable plugins](https://asdf-vm.github.io/asdf/#/plugins-all)
  * The most up to date installation manual can be found at [asdf installation manual](https://github.com/asdf-vm/asdf/#/core-manage-asdf-vm)
  * To check which shell you are running run `echo $0` in the command line

## Install plugins for asdf:
```
  asdf plugin-add erlang
  asdf plugin-add elixir
  asdf plugin-add nodejs
```

## We need to install elixir, erlang and  and node.js:
### erlang:
```
asdf install erlang 21.2.5
asdf local erlang 21.2.5
```
### elixir:
```
asdf install elixir 1.8.1-otp-21
asdf local elixir 1.8.1-otp-21
```
### node.js
This plugin expects the gpg package to be present to check the package signature
#### MacOS
* GNU Core Utils - `brew install coreutils`
* GnuPG - `brew install gpg`
#### Linux (Debian)
* GnuPG - `apt-get install gpg`
* dirmngr - `apt-get install dirmngr`
```
asdf install nodejs 10.15.1
asdf local nodejs 10.15.1
```

## Install Chromedriver:

To run tests you need chromedriver installed:
* You can either install chromium which has chromedriver bundled in 
    `sudo apt update && sudo apt install chromuim`
* or you can download a version supported by chrome version you use from the relaase page:
[chromedriver download page](http://chromedriver.chromium.org/downloads)
`sudo unzip ~/Downloads/chromedriver_linux64.zip -d /usr/local/bin`


