# rubocop:disable all
module RecipesHelper
  def minute_to_time(minutes)
    hours = minutes / 60
    minutes = minutes % 60
    if (hours < 1)
      return "#{minutes} min"
    end
    if (minutes == 0)
      return "#{hours} h"
    end
    "#{hours} h #{minutes} min"
  end
end
# rubocop:enable all
