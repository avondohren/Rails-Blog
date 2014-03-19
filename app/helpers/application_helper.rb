module ApplicationHelper
  def underscore(string)
    string.split(" ").join("_")
  end
  
  def expand(string)
    string.split("_").join(" ")
  end
end
