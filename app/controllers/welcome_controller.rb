class WelcomeController < ApplicationController
  def index
  end
  def erd
    if params[:regenerate]
      rake = "rake erd filetype=dot " +
        "disconnected=#{params[:disconnected]} " +
        "title='#{params[:title]}' notation='bachman'"
      system(rake)
      system("dot -Tpdf erd.dot > erd.pdf")
    else
      `rake erd filetype=dot notation='bachman'`
      `dot -Tpdf erd.dot > erd.pdf`
    end
    FileUtils.mv("#{Rails.root.join('erd.pdf').to_s}", "#{Rails.root.join('app', 'assets', 'images/').to_s}") if File.exist?("#{Rails.root.join('erd.pdf').to_s}")
  end
end
