module UsersHelper
  def generate_list(num, page=nil)
    offset = calculate_offset(num, page)

    # AR stuffs
    collection = User.find(:all, :limit => num, :offset => offset)
    #

    content = []
    for i in collection
      content << "<li> #{i.name} </li>"
    end

    sleep(2)
    return content
  end
end

