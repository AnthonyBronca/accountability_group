# How To Submit

To submit homework you need to get your own branch. Run: `git checkout -b <firstname_lastname>` So for example for "Anthony Bronca" it would be `git checkout -b anthony_bronca`

Once you have a branch set, you can write your code as usual and run `git add .`, `git commit -m "finished hw"` and `git push`. This will open a Pull Request on Github for me to review.

# How to Update Branches

When you are on your own unique branch, you will not be able to retrieve any new code that is added to the `main` branch. We need to switch over to that by running `git checkout main` then you can run
the standard `git pull` command. You will want to switch back to your own branch so for example `git checkout anthony_bronca`. Then you can merge the main to the the checkout by doing: `git merge main`
