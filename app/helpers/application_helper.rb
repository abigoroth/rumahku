module ApplicationHelper
    def gravatar_for(user, opts = {})
      opts[:alt] = user.name      
      image_tag "http://i68.tinypic.com/24w7qeh.png/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
                opts
    end

    def gravatar_for_admin(user, opts = {})
      opts[:alt] = user.name
      image_tag "http://i65.tinypic.com/2v2ab74.png/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 10 }}",
                opts
    end

    def gravatar_for_user(user, opts = {})
      opts[:alt] = user.name
      image_tag "http://i65.tinypic.com/2my9pg9.png/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
                opts
    end
  end