#1.5 Tracking Changes#

* How does tracking and adding changes make developers' lives easier?
* What is a commit?
* What are the best practices for commit messages?
* What does the HEAD^ argument mean?
* What are the 3 stages of a git change and how do you move a file from one stage to the other?
* Write a handy cheatsheet of the commands you need to commit your changes?
* What is a pull request and how do you create and merge one?
* Why are pull requests preferred when working with teams?

Tracking and adding changes made to files and directories allow developers to monitor their project as it develops and grows. Before a specific change is ready to be permanently saved or committed, keeping tabs of the files in a sort of suspended staging area, allows them to work on different files without these changes affecting the overall project.

Once all the changes are done and have been staged, a commit allows a snapshot of the whole project to be placed in a sort of historical outline. Every commit represents an update or change or adds that contribute to the whole project.

When saving or doing a commit, it is good practice to add a message detailing the changes that are represented in the commit. A message can be written similar to an email with the first line (being limited to around 50 characters) acting as the subject and small summary of the commit, and then leaving an empty line followed by the body of the commit if a longer description is needed. Furthermore it is common practice to use the imperative form of verbs (fix instead of fixed or fixing) to coincide with git terminology but also to view the commit as a state that would enact that particular change.

The HEAD^ represents the previous commit, or state the project was in. Allowing changes to be backtracked and re-edited if need be.

What this boils down to is a representation of the three stages of a git change, tracking, add, and commit. When a file or directory is first created it is essentially untracked, this means git will not be aware of any of the changes being made, typing "git status" will reveal any untracked files or directories. To begin tracking a file one would simply type, "git add" followed by the file name or directory. Once the file is being tracked, making any changes will alert git and the status would reveal the file as modified. Once again, typing "git add" followed by the modified file will contain it in a staging area ready to be fully saved. Finally, "git commit -m" followed by a message, saves the state of everything that has been placed in the staging area.

git add [file or directory] - add changes from a single tracked or untracked file

git add -A - add changes from all tracked or untracked files

git commit -m "Write message" - create a save and add to the history of implemented changes

git commit -a -m "Write message" - add changes from all tracked files and save the state to the history of implemented changes

git log - view past commits

git status - view any changes or adds ready to be committed

git reset --soft HEAD^ - return to the previous commit in order to make further changes to the files

Moving forward, once all the commits have been made and pushed to the remote repository a pull request can be made. A pull request is a GitHub feature that allows one to present the changes made to a repository to other people and allow for review and upon approval, finally merge the changes into the original master state. A pull request is initiated through the remote repository, while on the branch that contains the changes, clicking "New Pull Request" will start this process. After reviewing the changes and approving them, merging is just a matter of revisiting the pull request and clicking on the "Merge pull request" button.

Pull requests are great when working on teams because it allows developers to peer review the files and changes and only allowing the files to be approved and merged by another member of the team. This will ensure that:
A. The master state remains clean and untouched
B. The changes are as accurate as possible before merging with the original files
C. Allow the other members of the team to assess the progress of the project 