class Admin::BaseAdminController < ApplicationController
  before_action :check_if_admin!
end