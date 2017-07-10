require 'paranoia'
require 'globalize'

Globalize::ActiveRecord::ActMacro.module_eval do
  def setup_translates_with_paranoia!(options)
    setup_translates_without_paranoia!(options)

    if options[:paranoia]
      # hard-coded for now
      translation_class.send(:acts_as_paranoid)
    end
  end

  alias_method_chain :setup_translates!, :paranoia
end
