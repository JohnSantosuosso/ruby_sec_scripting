require 'json'
file_name = ARGV[0]
#read file and parse to JSON
json_vulnerabilities = JSON.parse(File.read(file_name))

puts json_vulnerabilities

puts json_vulnerabilities["Vulnerability"].each {|vuln| puts vuln['name']}
