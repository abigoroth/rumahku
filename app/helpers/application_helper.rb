module ApplicationHelper
    def gravatar_for_user(user, opts = {})
      opts[:alt] = user.name
      image_tag "https://i.imgur.com/hCtKNX7.png/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
                opts
    end

    def gravatar_for_admin(user, opts = {})
      opts[:alt] = user.name
      image_tag "https://i.imgur.com/YOSE1u1.png/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
                opts
    end

    def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "https://i.imgur.com/CqRSQAa.png/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
              opts
  end
           
  end