module RecipesHelper
  def minute_to_time(minutes)
    hours = minutes / 60
    minutes = minutes % 60
    if (hours < 1)
      return "#{minutes} m"
    end
    if (minutes == 0)
      return "#{hours} h"
    end
    "#{hours} h #{minutes} m"
  end
end
