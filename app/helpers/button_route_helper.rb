module ButtonRouteHelper
  def admin_button_routes
    {
      'Users' => root_path,
      'Products' => root_path,
      'Bookings' => root_path,
      'Inventory' => root_path,
      'Theme' => root_path,
      'Orders' => root_path
    }
  end
end