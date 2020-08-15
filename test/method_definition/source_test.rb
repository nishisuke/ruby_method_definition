# frozen_string_literal: true

require 'test_helper'

describe MethodDefinition::Source do
  describe '#snip_code_at' do
    before do
      @code = <<~CODE
        def hoge
          :hoge
        end
      CODE
      @reader = MiniTest::Mock.new.expect(:readlines, @code.)
    end

    it 'successes' do
      source = MethodDefinition::Source.new()
      snippet = source.snip_code_at(1)
      assert true
    end
  end
end
