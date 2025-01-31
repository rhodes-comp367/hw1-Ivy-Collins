module Int2 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- (+ n) represents positive n.
  + : Nat → Int
  -- (- n) represents negative n.
  - : Nat → Int
  -- 0 can be represented as (+ zero) or (- zero).

-- given i, return i + 1.
isuc : Int → Int
isuc (+ n) = + (suc n)
isuc (- zero) = + (suc zero)
isuc (- (suc n)) = - n

-- given i, return i - 1.
ipred : Int → Int
ipred (- n) = - (suc n)
ipred (+ zero) = - (suc zero)
ipred (+ (suc n)) = + n

-- given i, return -i.
ineg : Int → Int
ineg (+ n) = - n
ineg (- n) = + n
--ineg (+ zero) =
--When i try to do + zero like i did in the above clause, it gives me a warning 
--"unreachable clause when checking the definition of ineg"


-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (+ a) (+ b) = + (plus a b)
iplus (- a) (- b) = - (plus a b)
iplus (+ a) (- b) = + (plus a b)
--This line above works but I don't understand why it isn't the line below this
--iplus (+ a) (- b) = {! + (minus a b) !}
iplus (- a) (+ b) = - (plus a b)
--Ellen tried helping me with this one but I clarified above where 
--I don't understand why it isn't my original answer

-- given i & j, return i - j.
iminus : Int → Int → Int
iminus a b = iplus a (ineg b)
--This one confused me but chat gpt made me realize I could use iplus and ineg since I already established them

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (+ a) (+ b) = + (times a b)
itimes (- a) (- b) = + (times a b)
itimes (+ a) (- b) = - (times a b)
itimes (- a) (+ b) = - (times a b)

