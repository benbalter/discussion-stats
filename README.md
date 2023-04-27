# Discussions stats

A quick script to pull metadata about GitHub Discussions for a repo and output it as a CSV.

## Usage

```bash
./stats.sh <owner> <repo>
```

## Output

The script will output a CSV file with the following columns:

* createdAt
* title
* upvoteCount
* author
* category
* comments
* reactions

## Requirements

Must have GitHub CLI installed and authenticated (see [the official docs](https://cli.github.com/) for more info).