
module GitHub

import Base.show

import JSON
using Dates
using HttpCommon
using Requests
using Codecs #only until julia 0.4 introduces base function for base64 encoding???

abstract GitHubType
abstract Owner <: GitHubType


# types
export User,
       Organization,
       Repo,
       Issue,
       Comment,
       File,
       Commit,
       HttpError,
       AuthError,
       StatsError

# methods
export authenticate,
       set_api_endpoint,
       set_web_endpoint,
       user,
       star,
       unstar,
       stargazers,
       starred,
       forks,
       fork,
       contributors,
       contributor_stats,
       commit_activity,
       code_frequency,
       participation,
       punch_card,
       collaborators,
       iscollaborator,
       add_collaborator,
       remove_collaborator,
       watchers,
       watched,
       watching,
       watch,
       unwatch,
       followers,
       following,
       org,
       orgs,
       repo,
       repos,
       issue,
       create_issue,
       edit_issue,
       issues,
       comments,
       contents,
       create_file,
       update_file,
       delete_file,
       readme



include("utils.jl")
include("endpoint.jl")
include("error.jl")
include("auth.jl")
include("users.jl")
include("organizations.jl")
include("repos.jl")
include("issues.jl")
include("comments.jl")
include("starring.jl")
include("forks.jl")
include("statistics.jl")
include("collaborators.jl")
include("watching.jl")
include("contents.jl")


end
