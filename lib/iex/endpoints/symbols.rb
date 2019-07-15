module IEX
  module Endpoints
    module Symbols
      def symbols(options = {})
        symbols = JSON.parse(File.read("symbols.json")).map do |data|
          IEX::Resources::Symbol.new(data)
        end
        # get('beta/ref-data/symbols', options).map do |data|
        #   IEX::Resources::Symbol.new(data)
        # end
      end
    end
  end
end