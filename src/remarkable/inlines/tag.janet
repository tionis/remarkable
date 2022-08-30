(use ../globals)
(use ../utilities)


## Grammar

(defn- tag [name]
  [:tag @{:name name}])

(def grammar
  ~{:tag {:main (/ (* "#" (capture (some :a))) ,tag)}})
