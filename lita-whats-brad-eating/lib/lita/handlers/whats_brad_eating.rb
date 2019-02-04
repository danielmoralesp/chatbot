module Lita
  module Handlers
    class WhatsBradEating < Handler
      # insert handler code here
      route(
        /^what('|’)s brad eating$/i,
        :brad_eats,     # name of handler method
        command: true,  # lita handles this as a direct command
        help: {         # help text for this method when you ask "lita help"
          "what's brad eating" => "latest post from brad's food tumblr"
        }
      )  

      def brad_eats(response)
        response.reply 'Actual results coming soon!'
      end


      Lita.register_handler(self)
    end
  end
end
