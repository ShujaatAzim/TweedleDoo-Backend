class ListSerializer

  def initialize(list_object)
    @list = list_object
  end

  def to_serialized_json
    options = {
      include: {
        items: {
          except: [:list_id, :created_at, :updated_at]
        }
      },
      except: [:created_at, :updated_at]
    }
    @list.to_json(options)
  end

end