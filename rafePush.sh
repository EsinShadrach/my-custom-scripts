rafe_push() {
  git add .
  echo "ADDED GIT"
  echo "Enter a commit message > "
  read commit_message
  git commit -m "$commit_message"
  echo "ADDED COMMIT MESSAGE: $commit_message"
  git status
  git push origin main
  echo "PUSHED"
}

