class String
  def is_hexa?
    str = self.sub '#', ''

    if str.size == 3 || str.size == 6
      return !str[/\H/]
    end

    false
  end
end
