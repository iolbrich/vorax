module Vorax

  # Handler for <p> nodes.
  class PreTagHandler < AbstractTagHandler

    def visit(node, handlers)
      buffer = ''
      if node.name == 'pre'
        node.children.each { |n| buffer << CGI.unescapeHTML(n.to_s.gsub(/[\r]/, '')) if n.text? }
      end
      buffer
    end

  end

end

