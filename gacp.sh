#! /bin/sh
#script to automatically git add ., git commit -m 'some commit message' and git push 

echo "****************Automating git add,commit and push****************"
echo "------------------------------------------------------------------"

addcommitpush(){
    #check git status
    git status
    #perform git add operation
    git add .
    echo "------------------------------------------------------------------"
    echo "Files added to the staging area"
    echo "------------------------------------------------------------------"
    #check git status
    git status
    #perform git commiit with a message(taken from command line argument)
    message="$@"
    git commit -m "$message"
    echo "------------------------------------------------------------------"
    echo "Files in the staging area are snapshotted"
    echo "------------------------------------------------------------------"
    #check git status
    git status
    #perform git push
    git push
    echo "------------------------------------------------------------------" 
    echo "Files pushed to github"
    echo "------------------------------------------------------------------"
    #check git status
    git status
    echo "------------------------------------------------------------------" 
    echo "Github Automation Completed"
    echo "------------------------------------------------------------------"
   
}

usage(){
    echo "This is a simple script to perform git operations directly to main"
    echo "Usage : bash gacp.sh 'some commit message'"
    echo "------------------------------------------------------------------"
}

usage
addcommitpush $1