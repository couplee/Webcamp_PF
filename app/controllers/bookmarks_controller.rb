class BookmarksController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    bookmark = current_user.bookmarks.new(product_id: @product.id)
    bookmark.save
    # redirect_to product_path(product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    bookmark = current_user.bookmarks.find_by(product_id: @product.id)
    bookmark.destroy
    # redirect_to product_path(product)
  end
end
