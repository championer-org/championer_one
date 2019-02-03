# How to Review a Staging Pull Request(PR)
## Championer One procedures for merging Pull Requests dictates one review by a fellow collaborator.
  * **This way,** before the merge takes place, we have some quality control, and allow the collaborator making the request to improve their code.

  * **So you're ready to contribute by reviewing a pull request?** *Great!* We'll walk you through the process step by step.

  * **First,** navigate to  [Championer One's repo](https://github.com/championer-org/championer_one).

  * **Click on the Pull Request tab** to see all available PR's.

  * **Find** the Pull Request you want to review and click on it. It should say something to the effect of `Merge develop into staging`.

  * **Important!** _Do not update branch at this point_.
  
  * **`develop`** should be ran manually on a local server, to verify there aren't any weird issues, because normally only Travis might be running the tests for `develop`, and no one is actually running the app to make sure that all the recent PRs are working well together in a local environment. 
So run these commands:
```
git checkout develop
git pull
cd assets && npm audit
npm ci && npm audit
cd .. && mix deps.get
mix ecto.migrate && mix credo
chromedriver & mix test && pkill chromedriver
open http://0.0.0.0:4000 && mix phx.server
```
 * **If everything checks out,** approve the PR and verify that it's safe to merge. 
 ![Screenshot 2018-06-05 17.36.58.png](https://waffleio-direct-uploads-production.s3.amazonaws.com/uploads/57e387b76082a50f00d31003/125516c66e82c728ace21e0d46db978826878dba87e6ab03f60da1cc6416713e7951e37a27cbb07ef1172343434d0eee1e020a17b8eb8339a3e43c71895f58ead0695926cf6911acb08b17b606ba20de5d99a4fedb1294b7607caddecd5d340c041083fe5831a19f43cf5ef049e24f55b65e.png) 
  
 * **Then, as long as you see "This branch has no conflicts with the base branch,"** there is no need to update a PR to `staging` from `develop`, because all that it should do is update  `develop` with previous merge commits to `staging`. If `staging` is being maintained properly--meaning that there aren't any dangling patch commits that never got properly cycled through `develop`-- then it shouldn't hurt to `Update branch`. In some cases you might see merge conflicts, if there are improperly submitted commits left on `staging`.  

  * **Clicking on** `Add your review` will take you to the page where you can see the changes and `Comment`, `Approve`, or `Request changes`, as appropriate.

  ![Screenshot 2018-06-09 15.28.47.png](https://waffleio-direct-uploads-production.s3.amazonaws.com/uploads/57e387b76082a50f00d31003/125516c66e82c728ace21e0d46db978826878dba87e6ab03f60da1cc6416713e795de37a25cbb170f1162c43434d0eee1e020a17b8eb8339a3e43c71895f58ead0695926cf6911acb08b17b606ba20de5d99a4fedb1294b7607caddecd5d340c041183fe5837a89c43ca59f64be84c57b65e.png)

  * **Assuming you approve** the Pull Request, you will be taken back to the PR and prompted to `Merge pull request` with everything in green.

  ![Screenshot 2018-06-09 15.31.46.png](https://waffleio-direct-uploads-production.s3.amazonaws.com/uploads/57e387b76082a50f00d31003/125516c66e82c728ace21e0d46db978826878dba87e6ab03f60da1cc6416713e795de37a25cbb079f1162d43434d0eee1e020a17b8eb8339a3e43c71895f58ead0695926cf6911acb08b17b606ba20de5d99a4fedb1294b7607caddecd5d340c041083fe5837a89c43ca59f64ae14450b65e.png)

  * **Then,** `Confirm merge` to finish your PR review.

  ![Screenshot 2018-06-09 15.32.15.png](https://waffleio-direct-uploads-production.s3.amazonaws.com/uploads/57e387b76082a50f00d31003/125516c66e82c728ace21e0d46db978826878dba87e6ab03f60da1cc6416713e795de37a25cbb07af1132e43434d0eee1e020a17b8eb8339a3e43c71895f58ead0695926cf6911acb08b17b606ba20de5d99a4fedb1294b7607caddecd5d340c041183fe5837a89c43ca59f64be84a51b65e.png)
  
  * **After clicking the green merge button twice,**  and `staging` passes Travis CI checks, run these terminal commands to deploy to staging:
```
heroku login
heroku git:remote -a championer-one-staging
git fetch origin staging
git checkout staging
git pull
git push heroku staging:master
open https://championer-one-staging.herokuapp.com/
```
  * **That's it!** Troubleshoot any heroku deployment issues by creating a NEW branch off of `staging`, making the necessary changes, then pushing the patch branch to heroku, until it deploys successfully (for example):
```
git checkout -b patch-npm-issue-to-heroku-staging
git commit -am "Make an npm patch change to push to staging" 
git push heroku patch-npm-issue-to-heroku-staging:master
open https://championer-one-staging.herokuapp.com/
```

Once you got it patched, make a PR to `develop` from the patch branch.

  * **Thank you for your collaboration in reviewing Pull requests. This is an essential part of working as a team to improve code.**
