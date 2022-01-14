function Invoke-GitAddCommit {
    <#
    .SYNOPSIS
        Shortcut for adding and committing files using git.
    .EXAMPLE
        Invoke-GitAddCommit "initial commit"
        gac "my commit" .\myFile.ps1
    #>
    [Alias("gac")]
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]
        $Message,
        [Parameter(Position = 1)]
        [string]
        $File
    )
    if ($File) {
        git add $File
    }
    else {
        git add .
    }
    git commit -m $Message }

function New-Blogpost {
    <#
    .SYNOPSIS
        Shortcut for creating new folder and file in the jekyll date format
    .EXAMPLE
        New-BlogPost
        New-BlogPost -AddDays 1
    #>
        param([int]$AddDays = 0)
        
        $date = (get-date).AddDays($AddDays).ToString('yyyy-MM-dd')
    
        New-Item -ItemType directory -Path ".\$date"
    
    $filedata = 
    "---
    title: 
    tags:
    - 100DaysOfCode
    categories:
    - Blog
    comments: true
    ---"
    
        New-Item -ItemType File -Value $filedata -Path ".\$date\$date-blogpost.md"
    
        code ".\$date\$date-blogpost.md"
    }