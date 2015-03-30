require './json_key_camelizer'

json = JSONFile::Reader.parse(ARGV[0])
camelized = JSONKeyCamelizer.camelize(json)

JSONFile::Writer.write(ARGV[1],camelized)