# class AvailabilityValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     rents = Rent.where(["developer_id =?", record.developer_id])
#     date_ranges = bookings.map { |b| b.reservation_date_begin..b.reservation_date_end }

#     date_ranges.each do |range|
#       if range.include? value
#         record.errors.add(attribute, "not available")
#       end
#     end
#   end
