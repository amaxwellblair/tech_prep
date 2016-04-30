# 1250-120 - got pretty distracted
# 1034 1104 - wasn't sure what the point of this problem was...got burned
# it is worth your time though.

# I'm making a search engine called MillionGazillion™.
# I wrote a crawler that visits web pages, stores a few keywords in a database,
# and follows links to other web pages. I noticed that my crawler was wasting a
# lot of time visiting the same pages over and over, so I made a hash visited
# where I'm storing URLs I've already visited. Now the crawler only visits a
# URL if it hasn't already been visited.
#
# Thing is, the crawler is running on my old desktop computer in my parents'
# basement (where I totally don't live anymore), and it keeps running out of
# memory because visited is getting so huge.
#
# How can I trim down the amount of space taken up by visited?

visited = {"www.getfluxed.com/hi/mom/i/program" => 1}
visited["www.getfluxed.com/hello"] = 1
visited["www.getfluxed.com/bacon/cheese"] = 1
visited["www.faker.com/bacon"] = 1
visited["www.faker.com/cheese"] = 1

def make_visit_great_again(url)
  subdomain = {}
  broken = url.split(/([\/\.])/)
  paths = broken.last.split("/")

  subdomain[broken.first] = {broken[0] => {broken[1] => {paths[0] => recur_path(paths[1..-1])}}}
end

def recur_path(paths)
  list = {}
  path = paths.shift
  if path.nil?
    return 1
  else
    list[path] = recur_path(paths)
  end

  return list
end

puts make_visit_great_again visited.first.first
