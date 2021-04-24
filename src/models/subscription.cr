class Subscription < BaseModel
  table do
    column stripe_id : String
    column is_active : Bool
    column stripe_data : JSON::Any
    belongs_to team : Team
  end

  module Monthly
    def self.price_cents
      199
    end

    def self.stripe_price_id
      if Lucky::Env.production?
        "price_1Ijr1pBR9CrjHMLPd0ETbvfH"
      else
        "price_1IjrNUBR9CrjHMLPuqJaJHzJ"
      end
    end
  end

  module Annual
    def self.price_cents
      1499
    end

    def self.stripe_price_id
      if Lucky::Env.production?
        "price_1Ijr1pBR9CrjHMLP4N9Igdw6"
      else
        "price_1IjrNUBR9CrjHMLPnUffvlWU"
      end
    end
  end
end
