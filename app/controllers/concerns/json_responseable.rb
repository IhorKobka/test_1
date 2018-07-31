module JsonResponseable
  def json_response(object, status: :ok)
    render json: object, status: status
  end

  def json_collection_response(collection, each_serializer)
    render json: collection, each_serializer: each_serializer
  end
end