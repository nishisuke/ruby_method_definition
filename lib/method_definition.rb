# frozen_string_literal: true

require "method_definition/version"

module MethodDefinition
  class Error < StandardError; end

  autoload :Source, 'method_definition/source'
  autoload :Definition, 'method_definition/definition'

  module Extension
    def definition
      path, line = source_location
      snippet = Source.new(path).snip_code_at(line)
      Definition.new(snippet)
    end
  end
end

[Method, UnboundMethod].each do |klass|
  klass.include(MethodDefinition::Extension)
end
