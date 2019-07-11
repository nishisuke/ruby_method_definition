# frozen_string_literal: true

require 'ripper'

module MethodDefinition
  class Parser
    def parse(code)
      parser = Ripper.new(code)
      parser.parse
      !parser.error?
    end
  end
end
