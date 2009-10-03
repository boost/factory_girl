class Factory
  class Proxy #:nodoc:
    class Create < Build #:nodoc:
      def result
        @instance.save!
        @instance
      end
      
      def result
        run_callback(:after_build)
        @instance.save!
        run_callback(:after_create)
        @instance
      end
    end
  end
end
