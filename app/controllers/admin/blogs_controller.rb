class Admin::BlogsController < Admin::BaseAdminController
  def index
    @blogs = Blog.all
    @blogs = @blogs.paginate(page: params[:page], per_page: 10)
  end
end