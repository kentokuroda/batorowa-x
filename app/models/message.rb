# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  message    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#  user_id    :integer
#
# Indexes
#
#  index_messages_on_room_id  (room_id)
#  index_messages_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (room_id => rooms.id)
#  fk_rails_...  (user_id => users.id)
#
class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
end