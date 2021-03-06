
# This code was originally written by @redgetan (https://github.com/redgetan) for Financeit.
module Haml
  class Compiler

    alias_method :orig_compile, :compile

    def compile(node)
      if node.type == :tag
        file = @options[:filename]

        if defined?(::Rails)
          file.gsub!(::Rails.root.to_s, '')
          file.gsub!(/^\//, '')
        end

        node.value.attributes.merge!(data: { source_line: "#{file}:#{node.line}" })
      end
      orig_compile(node)
    end

  end
end
