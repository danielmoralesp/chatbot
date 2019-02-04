module Lita
  module Handlers
    class DoublerDaniel < Handler
      # insert handler code here
      route(
        /^double\s+(\d+)$/i,
        :respond_with_double,
        command: true,
        help: { 'double N' => 'prints N + N' }
      )

      Lita.register_handler(self)
    end
  end
end
