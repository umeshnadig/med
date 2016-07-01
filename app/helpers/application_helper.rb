module ApplicationHelper

  def bootstrap_class_for flash_type
    puts flash_type
    case flash_type
      when "notice"
        "success"
      else
        flash_type.to_s
    end
  end

end
