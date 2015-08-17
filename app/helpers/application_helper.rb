module ApplicationHelper
  def model_name
    name = "Bienvenido"
    if controller_name == "clients"
      if action_name == "index"
        name = "Registrar Cliente"
      else 
        name = "Regresar a Clientes"
      end
    end
    return name;
  end
  def path_name
    name = "root_path"
    if controller_name == "clients"
      if action_name == "index"
        name = "new_client_path"
      else 
        name = "clients_path"
      end
    end
    return name;
  end
  def show_flash?
    return  (flash[:notice] or flash[:error] or flash[:warning] or flash[:alert] or flash[:success]) ? true : false
  end
  def flash_msg
    flash_collection = []
    if flash[:notice]
      flash_collection << content_tag(:div, flash[:notice], :class => "alert alert-info")    
    elsif flash[:error]
      flash_collection << content_tag(:div, flash[:error], :class => "alert alert-danger")
    elsif flash[:warning]
      flash_collection << content_tag(:div, flash[:warning], :class => "alert alert-warning")
    elsif flash[:alert]
      flash_collection << content_tag(:div, flash[:alert], :class => "alert alert-warning")
    elsif flash[:success]
      flash_collection << content_tag(:div, flash[:success], :class => "alert alert-success")
    else
    end
    return flash_collection.join.html_safe
  end
  def has_index?(model)
    model = to_controller_name(model)
    if (Rails.application.routes.recognize_path model).to_s.include? ("index") and File.exists?("#{Rails.root}/app/views/#{model}/index.html.erb") and controller_name != "welcome"
      return true
    else
      return false
    end
  rescue
    return false
  end
  def show_action_links?
    if ["new", "create", "edit", "update", "index", "show", "destroy"].include?(action_name) and is_model?(controller_name)
      return true
    else
      return false
    end 
  end
  def is_model?(model)
    if File.exist?("app/models/#{to_model_file_name(model)}.rb")
      return true
    else
      return false
    end
  end
  def to_model(model)
    name = eval("#{to_model_name(model)}")
    return name
  rescue
    "Error on to_model: " + model.to_s
  end
  def to_model(model)
    name = eval("#{to_model_name(model)}")
    return name
  rescue
    "Error on to_model: " + model.to_s
  end
  def to_model_name(model)
    name = model.to_s.gsub("_id", "").singularize.camelize
    return name
  rescue
    "Error on to_model_name: " + model.to_s
  end
  def to_model_file_name(model)
    name = model.to_s.gsub("_id", "").tableize.singularize
    return name
  rescue
    "Error on to_model_file_name: " + model.to_s
  end
  def to_controller_name(model)
    name = model.to_s.gsub("_id", "").tableize
    return name
  rescue
    "Error on to_controller_name: " + model.to_s
  end
end
