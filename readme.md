This is my personal PowerShell profile, saved here to quickly initialize any new machines.  Feel free to use as you see fit, and file a PR for any improvements (Please and thank you).

## Install

Copy down the zip of this repo to your machine and extract into your preferred `$profile | select *` folder.

https://github.com/hawzy/powershell-profile/archive/refs/heads/main.zip


I use this command: `copy-item -Path C:\github\powershell-profile\* -D C:\Users\nickh\OneDrive\Documents\Powershell\ -Recurse`
### Cmdlet List

|Script|Description|alias|category|
|---|---|---|---|
|`Invoke-GitAddCommit`| Shortcut for adding and committing files using git.| `gac`| dev|
|`New-BlogPost`| Shortcut for creating a folder and file in jekyll date format. | `nbp` | dev |



