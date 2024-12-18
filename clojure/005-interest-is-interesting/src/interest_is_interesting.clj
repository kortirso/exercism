(ns interest-is-interesting)

(defn interest-rate
  "Returns the interest rate based on the specified balance."
  [balance]
    (cond (>= balance 5000) 2.475
          (>= balance 1000) 1.621
          (>= balance 0) 0.5
          :else -3.213)
  )

(defn annual-balance-update
  "Returns the annual balance update, taking into account the interest rate."
  [balance]
    (bigdec (+ balance (* (* (abs balance) (bigdec (interest-rate balance))) 0.01M)))
  )

(defn amount-to-donate
  "Returns how much money to donate based on the balance and the tax-free percentage."
  [balance tax-free-percentage]
    (cond (>= balance 0) (int (* (* balance tax-free-percentage 2) 0.01M))
          :else 0)
  )
