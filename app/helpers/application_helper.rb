# frozen_string_literal: true

module ApplicationHelper
  def res_start_time(res)
    res.event.time_start.strftime('%l:%M %p')
  end
end
