# typed: strict

# sourced from https://lostisland.github.io/faraday/usage/

response = Faraday.get 'http://sushi.com/nigiri/sake.json'
response.status
# => 200
response.headers
# => {"server"=>"sushi.com", "content-type"=>"text/html; charset=utf-8"...
response.body
# => "<html lang=\"en\">...


url = 'http://sushi.com/nigiri/sake.json'
resp = Faraday.get(url, {a: 1}, {'Accept' => 'application/json'})
# => GET http://sushi.com/nigiri/sake.json?a=1


# POST 'application/x-www-form-urlencoded' content
url = 'http://sushi.com/fave'
resp = Faraday.post(url, "choice=sake")
# POST JSON content
resp = Faraday.post(url, '{"choice": "sake"}', "Content-Type" => "application/json")


url = 'http://sushi.com/fave'
resp = Faraday.post(url, choice: 'sake')
# => POST 'choice=sake' to http://sushi.com/fave


resp = Faraday.get('http://sushi.com/search') do |req|
  req.params['limit'] = 100
  req.headers['Content-Type'] = 'application/json'
  req.body = JSON.dump({query: 'salmon'})
end
# => GET http://sushi.com/search?limit=100


conn = Faraday.new(
  url: 'http://sushi.com',
  params: {param: '1'},
  headers: {'Content-Type' => 'application/json'}
)

resp = conn.get('search') do |req|
  req.params['limit'] = 100
  req.body = JSON.dump({query: 'salmon'})
end
# => GET http://sushi.com/search?param=1&limit=100


conn = Faraday.new(
  url: 'http://sushi.com',
  params: {param: '1'},
  headers: {'Content-Type' => 'application/json'}
)
resp = conn.get('search') do |req|
  req.params['limit'] = 100
  req.body = JSON.dump({query: 'salmon'})
end
# => GET http://sushi.com/search?param=1&limit=100
