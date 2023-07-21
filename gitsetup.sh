git_setup() {
    validate_input() {
        local input
        read -r input
        while [[ -z "$input" ]]; do
            echo "Input cannot be empty. Please try again: "
            read -r input
        done
        echo "$input"
    }

    echo -n "Enter Readme Message > "
    read_me_message=$(validate_input)
    echo "# $read_me_message" >> README.md
    echo "Added $read_me_message to README.md"
    
    git init
    git add .
    git commit -m "first commit"
    git branch -M main

    echo -n "Enter remote origin (or leave empty to skip) > "
    read -r remote_origin

    if [[ -n "$remote_origin" ]]; then
        git remote add origin "$remote_origin"
        echo "Remote origin added: $remote_origin"
    else
        echo "Skipping remote origin setup."
    fi

    echo -n "Do you want to push now? (yes/no) > "
    read -r answer

    if [[ "$answer" == "yes" ]]; then
        git push -u origin main
        echo "Setup complete with push"
    else
        echo "Setup Complete without push"
    fi
}

