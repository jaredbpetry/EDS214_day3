library(httr)
library(purrr)

#querying the github rest API

r <- GET("https://api.github.com/users/jaredbpetry/repos")

r$url
r$status_code

my_repos_list <- content(r)
my_repos_list[[1]] #safer to do double square breacket to get the first element of the list

#list name of repo on list
my_repos_list[[1]]$full_name

#now try to get a list of all the repos
#pearl will iterate through the entire list

my_repos <- map_chr(my_repos_list, "full_name") #this will provide a vector of all your repos

#good news is there is a better way to do this!
