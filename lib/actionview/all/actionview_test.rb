# typed: true

begin
  raise
rescue ActionView::ActionViewError
rescue ActionView::EncodingError
rescue ActionView::WrongEncodingError
rescue ActionView::MissingTemplate => e
  e.path
rescue ActionView::Template::Error
rescue ActionView::TemplateError
rescue ActionView::SyntaxErrorInTemplate
end
