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
        New-BlogPost "how-to-create-a-blog" -AddDays 1
        nbp "new-blog-post"
    #>
    [Alias("nbp")]
    param(
        [Parameter(Mandatory=$false,Position = 0)] 
        [string]
        $Title = "new-blogpost",
        [int]$AddDays = 0)
        
    $date = (get-date).AddDays($AddDays).ToString('yyyy-MM-dd')
    
    New-Item -ItemType directory -Path ".\$date"

    Copy-Item -Path  "$profileDir\blog_template.md" -Destination ".\$date\$date-$title.md"
              
    code ".\$date\$date-$title.md"
    }