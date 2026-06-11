# Helper for validating the current SXL schema files.

Encoding.default_external = Encoding::UTF_8

require 'json_schemer'

SCHEMA = JSONSchemer.schema(
  Pathname.new(File.expand_path('../../schema/rsmp.json', __dir__))
)

def validate(message)
  errors = SCHEMA.validate(message).map { |e| [e['data_pointer'], e['type'], e['details']].compact }
  errors.empty? ? nil : errors.sort
end
