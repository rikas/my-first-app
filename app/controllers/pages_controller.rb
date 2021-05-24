class PagesController < ApplicationController
  # GET '/contacts', to: 'pages#contacts'
  def contacts
    name_to_find = params[:member]

    @team = %w[Ricardo Emily Rita André João Nuno]

    if params[:member].present?
      @team = @team.select { |name| name.downcase.start_with?(name_to_find.downcase) }
    end
  end

  # http://127.0.0.1:3000/contacts?member=Ricardo&age=10&team=Rails
  # {
  #   member: 'Ricardo',
  #   age: '10',
  #   team: 'Rails'
  # }

  # GET '/about', to: 'pages#about'
  def about
  end

  # GET '/home', to: 'pages#home'
  def home
  end
end
