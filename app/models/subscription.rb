class Subscription < ApplicationRecord
  self.table_name = "ta_subscriptions"
  # ta_orders

  # STATUSES = {
  #     active: 1,
  #     canceled: 2,
  #     pause: 3,
  #     completed: 4,
  # }
  # set_enum :status, STATUSES


  # def as_json
  #   super['subscription'].merge({
  #     dropdowns: dropdowns_json,
  #     product_id: ta_data_id,
  #     can_cancel: can_cancel?,
  #     amount: amount
  #   })
  # end

end
