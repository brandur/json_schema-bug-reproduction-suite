require 'active_record'
require 'active_support'
require 'json_schema'
require 'rails'

schema_data = JSON.parse(File.read('./data.json'))
schema = JsonSchema.parse!(schema_data)
schema.expand_references!
puts schema.definitions['app'].links
