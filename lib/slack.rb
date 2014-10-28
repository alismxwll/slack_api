require "httparty"
Dir[File.dirname(__FILE__) + '/slack/*.rb'].each do |file|
  require file
end
