# encoding: utf-8

module RuboCop
  # This module holds the RuboCop version information.
  module Version
    STRING = '0.27.0'

    MSG = '%s (using Parser %s, running on %s %s %s)'

    module_function

    def version(debug = false)
      if debug
        format(MSG, STRING, Parser::VERSION,
               RUBY_ENGINE, RUBY_VERSION, RUBY_PLATFORM)
      else
        STRING
      end
    end
  end
end
