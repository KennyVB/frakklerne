TruncateHtml.configure do |config|
  config.length       = 160
  config.omission     = '...(continued)'
  config.word_boundary = false
end