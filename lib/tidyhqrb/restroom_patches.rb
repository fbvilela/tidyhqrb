module RestroomContextExtensions
  attr_reader :base_path

  def initialize(host: nil, parent:, key: nil, **args, &block)
    @base_path = args[:base_path]
    args.delete(:base_path)
    super
  end
end

module RestroomProxyExtensions
  def resource_path
    if dsl.base_path
      expand_path(parent.resource_path, dsl.base_path, instance_id, resource)
    else
      super
    end
  end

  def delete key
    !!response_filter.call(:singular, request(:delete, singular_path(key), {}))
  end
end

module Restroom
  class Context
    prepend RestroomContextExtensions
  end
end

module Restroom
  class Proxy
    prepend RestroomProxyExtensions
  end
end
