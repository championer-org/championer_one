# ChampionerOne

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Move to the root directory with `cd ..` and start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).
## Collaborating- use of WaffleBot
  * ChampionerOne uses Waffle.io as a project management tool because it allows a high level of cooperation between developers, and collaborators in general.

  * Head over and check out ChampionerOne's [Waffle.io](https://waffle.oi/championer-org/championer_one)

  * WaffleBot keeps track of progress and which collaborators are currently working on an issue by tracking GitHub issue numbers.

  * Everything starts in the Backlog column where there is a list of tags. ![waffle board](https://dl.dropbox.com/s/4f6o3mqkd365huk/waffle-board.png?dl=0)

  * At the top left, you can see numbers that reference GitHub issue #s. If you click on one of them, a short description will help you understand what the issue is.

  * You can create a branch from the terminal with this number and a short description, for example `git checkout -b 17-add-logo`, or you can go straight to GitHub and create a branch. ![create a   branch.](https://dl.dropbox.com/s/e3q4i7ikcz387xl/create-branch-github.png?dl=0)
  * If creating it from your terminal, remember that you need to push some changes to this GitHub branch before Waffle will know you are working on the issue you chose.

  * Now you're ready to change some code, and WaffleBot automatically moves it to the In Progress tab, letting people know you are working on a specific issue.

  * You can always add the work in progress tag to let people know it's not intended to be finished. `[WIP] 17-add-logo`

  * After making a pull request with a key word such as Fixes, Closes, or Resolves and the issue #,
  `Fixes #17`, WaffleBot moves the tag again to the right where another collaborator can review it.

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
