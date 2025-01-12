module ApplicationHelper
  def tailwind_status_style(status)
    case status
    when "a_fazer"
      "bg-yellow-100 text-yellow-700"
    when "em_andamento"
      "bg-blue-100 text-blue-700"
    when "terminado"
      "bg-green-100 text-green-700"
    else
      "bg-gray-100 text-gray-700"
    end
  end
end
