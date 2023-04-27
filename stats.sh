#!/bin/sh
# Usage: ./stats.sh <owner> <repo>

set -e

echo "createdAt,title,upvoteCount,author,category,comments,reactions" > stats.csv
gh api graphql --paginate -F owner="$1" -F repo="$2" -F query=@query.graphql --jq '.data.repository.discussions.nodes[] | [(.createdAt | fromdateiso8601 | strftime("%Y-%m-%d")), .title, .upvoteCount, .author.login, .category.name, .comments.totalCount, .reactions.totalCount] | @csv' >> stats.csv