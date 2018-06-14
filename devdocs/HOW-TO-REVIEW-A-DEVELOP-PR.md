# How to Review a Develop Pull Request(PR)
## Championer One procedures for merging Pull Requests dictates one review by a fellow collaborator.
  * **This way,** before the merge takes place, we have some quality control, and allow the collaborator making the request to improve their code.  

  * **So you're ready to contribute by reviewing a pull request?** *Great!* We'll walk you through the process step by step.

  * We're going to assume the PR is for `45-add-waffle-badges`.

  * **First,** go to your terminal and make sure you are on the `develop` branch by running `git checkout develop`.

  * **Next,** fetch any new branches with `git fetch origin`.

  * **Then,** navigate to the branch which you want to provide a PR review with `git checkout 45-add-waffle-badges`.

  * **Once on the PR branch,** fetch and merge with `git pull`.

  * **Next,** run `cd assets && npm audit` to make sure there are no security vulnerabilities.

  * **Having confirmed the absence of vulnerabilities,** run `cd .. && mix deps.get` to navigate back to the root of the project and install the dependencies.

  * **Then,** you'll want to migrate the database and run _Credo_, a static code analysis tool  for the Elixir language with a focus on teaching and code consistency. `mix ecto.migrate && mix credo`.

  * **Now,** you are ready to run the tests to verify everything is passing. For this, you'll need to run `chromedriver && mix test && pkill chromedriver`.

  * **Having verified all the tests pass,** you can start the server with `mix phx.server` and navigate to `http:0.0.0.0:4000` in your browser to check that everything compiles correctly.

## Reviewing from GitHub
  * **The next step** is to navigate to  [Championer One's repo](https://github.com/championer-org/championer_one).
  
