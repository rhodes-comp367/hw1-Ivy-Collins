module Int1 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- int a b represents (a - b).
  int : Nat → Nat → Int

-- given i, return i + 1.
isuc : Int → Int
isuc (int a b) = int (suc a) b
--I asked chatgpt to explain this logic to me

-- given i, return i - 1.
ipred : Int → Int
ipred (int a b) = int a (suc b)

-- given i, return -i.
ineg : Int → Int
ineg (int a b) = (int b a)

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (int a b) (int c d) = int (plus a c) (plus b d)

-- given i & j, return i - j.
iminus : Int → Int → Int
iminus (int a b) (int c d) = int (plus a d) (plus b c)

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (int a b) (int c d) = int (plus (times a c) (times a d)) (plus (times b c) (times b d))
--I also asked chatgpt to explain it to me but I didn't understand the logic behind it. I spoke with Ellen
--and though hers was populating an error message, it insioired me to approach it with the way I have above.
 