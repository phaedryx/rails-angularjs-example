ActiveSupport.on_load(:active_model_serializers) do
  # disable the root for serializers
  ActiveModel::Serializer.root = false
  ActiveModel::ArraySerializer.root = false
end
