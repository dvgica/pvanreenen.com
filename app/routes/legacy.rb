# to support legacy URLs
get '/*.php' do
  redirect request.path_info.chomp('.php'), 301
end
