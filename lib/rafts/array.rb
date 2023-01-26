# A deeply un-useful monkey patch
class Array
  def deeply_empty?
    empty? || all?(&:empty?)
  end
end
