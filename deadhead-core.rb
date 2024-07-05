module DeadHead_Core
  ($imported ||= {})[:deadhead_core] = true

  Module.class_eval do

    def patch(method_name, &new_body)
      old_body = instance_method(method_name)
      class_exec do
        define_method method_name do |*args, &block|
          new_body.call_as(self, old_body.bind(self), *args, &block)
        end
      end
    end

  end

  Proc.class_eval do

    def call_as(caller, *args, &block)
      temp_name = "unbound"
      while caller.singleton_class.method_defined?(temp_name)
        temp_name.concat("_")
      end
      caller.define_singleton_method(temp_name, &self)
      unbound = caller.singleton_class.instance_method(temp_name)
      caller.singleton_class.send(:remove_method, temp_name)
      unbound.bind(caller)[*args, &block]
    end

  end

  IO.class_eval do

    patch(:p) do |super_, first, *rest|
      super_[first.to_s, *rest]
    end

    patch(:puts) do |super_, first, *rest|
      super_[first.to_s, *rest]
    end

  end

  Object.class_eval do

    def invar_get(name)
      instance_variable_get(name)
    end

    def invar_set(name, val)
      instance_variable_set(name, val)
    end

    def call_method_as(source, method_name, *args, &block)
      unbound = source.instance_method(method_name)
      unbound.bind(self)[*args, &block]
    end

  end

  NilClass.class_eval do

    def to_s
      'nil'
    end

  end

  Numeric.class_eval do

    def clamp(s, e)
      [s, self, e].sort[1]
    end

  end
end
