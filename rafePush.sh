rafe_push() {
	git add .
	echo "Added Git"
	echo -n "Enter commit message > " 
       	read -r commit_message
  	git commit -m "$commit_message"
  	echo "Added commit message: $commit_message"
  	git status
	git push origin main
  	echo "Pushed"
}

