class ActiveRecord::Base
  class << self
    def methodise associations_hash
      associations_hash.each { |association, methods| Array.new(methods).compact.each { |mthd| define_method("#{association}_#{mthd}") { send(association).try(mthd) } } }
    end
    alias_method :methodize, :methodise
  end
end
