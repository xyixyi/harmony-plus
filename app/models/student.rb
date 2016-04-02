class Student < ActiveRecord::Base
    validates :first_name, presence: true, length: { maximum: 20}
    validates :last_name, presence: true, length: { maximum: 20}
    validate :first_name_is_letters, :last_name_is_letters
    validates :email, presence: true, uniqueness: true
    validates :phone_number, presence: true, length: { minimum: 10 }
    validate  :validates_phone_number
    validates :age, numericality: { only_integer: true }, length: {maximum: 3}
    
    def first_name_is_letters
        is_chinese = false
        # first_name = :first_name

        if first_name.contains_cjkv?
            is_chinese = true
        end
        if !is_chinese
            is_letter = first_name =~ /[A-Za-z]/
        end
        if !is_letter and !is_chinese
            errors.add(:first_name, "is invalid.")
        end
    end
    
    def last_name_is_letters
        is_chinese = false
        # last_name = :last_name
        if last_name.contains_cjkv?
            is_chinese = true
        end
        
        if !is_chinese
            is_letter = last_name =~ /[A-Za-z]/
        end

        if !is_letter and !is_chinese
            errors.add(:last_name, "is invalid.")
        end
    end
    
    def validates_phone_number
        # phone_number = :phone_number
        phone_number.delete("-")
        if :phone_number.present? && phone_number.to_i.to_s != phone_number
             errors.add(:phone_number, "is not vaild.")
        end
    end
    
end


class String
  CJKV_RANGES = [
    (0x4E00..0x9FFF),
    (0x3400..0x4DBF),
    (0x20000..0x2A6DF),
    (0x2A700..0x2B73F),
  ]

  def contains_cjkv?
    unpack("U*").any? { |char|
      CJKV_RANGES.any? { |range| range.member?(char) }
    }
  end
end