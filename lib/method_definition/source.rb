# frozen_string_literal: true

require 'method_definition/parser'

module MethodDefinition
  class Source
    def initialize(path, parser = Parser.new)
      @path = path
      @parser = parser
    end

    def snip_code_at(line)
      beginning_index = line - 1
      ending_index = (beginning_index..).find do |index|
        code = lines[beginning_index..index].join
        parser.parse(code)
      end
      snip(beginning_index..ending_index)
    end

    private

    attr_reader :path, :parser

    def lines
      @lines ||= File.readlines(path)
    end

    def snip(range)
      lines[range].join
    end
  end
end
