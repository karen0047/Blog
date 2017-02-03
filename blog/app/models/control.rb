class Control < ApplicationRecord

  belongs_to :article

  def control
    @article = Article.published
    if @article.destroy
      errors.add(:destroy, "Невозможно удалить")
      return false
      redirect_to root_path
    end
  end

end