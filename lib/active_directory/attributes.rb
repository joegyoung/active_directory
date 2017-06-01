%w[sam_account_type group_type].each do |file_name|
  require 'active_directory/attributes/' + file_name
end
