module Encrypt

  def encrypt_text(text, int)
    text = text.try(:scan, /\S/)
    unless text.blank? || text.length <= 2 || int <= 1
      slicing = 2*(int-1)
      arr = Array.new(int){[]}
      text.each_slice(slicing) do |s| 
        i = -1
        s.each_with_index do |letter, index| 
          if index + 1 <= int
            arr[index].push(letter)
          else
            i -= 1
            arr[i].push(letter)
          end
        end
      end
      arr.flatten.join("")
    else
      text.join("")
    end
  end

end