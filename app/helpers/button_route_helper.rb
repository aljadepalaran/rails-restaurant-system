module ButtonRouteHelper
  def admin_button_routes
    {
      'Users' => admin_users_path,
      'Products' => root_path,
      'Bookings' => root_path,
      'Inventory' => root_path,
      'Theme' => root_path,
      'Orders' => root_path,
      'Users' => admin_users_path,
      'Blogs' => admin_blogs_path
    }
  end

  def main_button_routes
    {
      'Book Now' => root_path,
      'Blogs' => blogs_path
    }
  end
end