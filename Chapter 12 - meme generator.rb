require 'net/http'
require 'json'
require 'yaml'

def read_config
  config_file = File.join(File.dirname(__FILE__), 'config.yml')
  config = YAML.load_file(config_file)
  @api_login = config['api']['login']
  @api_password = config['api']['password']
end

def create_meme(template_id, username, password, text0, text1)
  uri = URI.parse('https://api.imgflip.com/caption_image')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  request_data = {
    template_id: template_id,
    username: username,
    password: password,
    text0: text0,
    text1: text1
  }

  request = Net::HTTP::Post.new(uri.path)
  request.set_form_data(request_data)
  response = http.request(request)
  result = JSON.parse(response.body)

  system("open", "#{result["data"]["url"]}")
end

read_config

template_id = '181913649'
username = "#{@api_login}"
password = "#{@api_password}"
text0 = 'Robienie mema w generatorze'
text1 = 'Robienie mema w vscode'

create_meme(template_id, username, password, text0, text1)
