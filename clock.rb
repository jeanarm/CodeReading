require 'slack-notifier'
require 'clockwork'
# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.
require 'active_support/time'
module Clockwork
 handler do |notice|
   notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
   notifier.ping('Hey!! you are on slack')
 end
 every(30.seconds, 'notice')
end