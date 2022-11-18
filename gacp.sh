#! /bin/sh
#script to automatically git add ., git commit -m 'some commit message' and git push 

echo "************Automating git add,commit and push************"

addcommitpush(){
    #check git status
    git status
    #perform git add operation
    git add .
    echo "Files added to the staging area"
    #check git status
    git status
    #perform git commiit with a message(taken from command line argument)
    message=\'"$@"\'
    git commit -m "$message"
    echo "Files in the staging area are snapshotted"
    #check git status
    git status
    #perform git push
    git push 
    echo "Files pushed to github"
    #check git status
    git status
}

usage(){
    echo "This is a simple script to perform git operations directly to main"
    echo "bash gacp.sh 'some commit message'"
}

usage
addcommitpush $1