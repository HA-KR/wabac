require "wabac/version"

module WABAC

  module Model

    def self.included(base)
      base.send :extend, ClassMethods
    end

    module ClassMethods
      def greet
        text =  <<GREETING
Sherman: Where are we going Mr. Peabody?
Mr. Peabody: Sherman, don't ask 'where are we going', ask when.
GREETING
      end
    end

  end

end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.send :include, WABAC::Model
end

#if defined?(ActionView::Base)
#ActionView::Base.send :include, ActsAsTaggableOn::TagsHelper
#end

#before_save :set_new_version
#after_save :save_version
#after_save :clear_old_versions

