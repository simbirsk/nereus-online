class DateIsPastValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value < Time.now
      record.errors[attribute] << 'Date must be in past.'
    end
  end
end