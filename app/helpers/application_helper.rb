module ApplicationHelper

  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      autolink: true,
      fenced_code_blocks: true,
      highlight: true,
      tables: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe

  end
end
