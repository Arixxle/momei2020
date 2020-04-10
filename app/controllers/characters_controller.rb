class CharactersController < ApplicationController
  require 'json'
  def index
    # @random_race = random_race.sample
  end

  def create
    # @random_race = random("race").sample
    # @random_role = random("role").sample
    # @random_role = random_role.sample
    # render html:params[:role_creater]
    # a = params[:role_creater]
    a = params[:option]
    b = params[:option2]
    c = params[:option3]
    # @random_race = random(a[:role]).sample
    @random_op1 = random(a)
    @random_op2 = random(b)

    render :index
  end


  private
  def random(title)
    data = File.read('app/assets/momei-data.json')
    rawdata = JSON.parse(data)
    t = title
    list = []
    rawdata.each do |r|
      if r[t] != ""
        list << r[t]
      end
    end
    list.sample
  end
end
