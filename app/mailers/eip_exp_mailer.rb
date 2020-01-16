class EipExpMailer < ApplicationMailer
  default from: 'no-reply@recipy.com'

  def mail(headers)
    super(headers) do |format|
      format.mjml
      format.text
    end
  end

  def meal_plan(day_meals, email)
    @day_meals = day_meals

    mail(to: email, subject: '[Recipy] Votre planning de repas')
  end

end
