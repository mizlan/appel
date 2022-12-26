module Ch1Exercises where

type Key = String
data Tree = Leaf | Tree Tree Key Tree
  deriving (Show)

empty = Leaf

insert key Leaf = Tree Leaf key Leaf
insert key (Tree l k r)
  | key < k = Tree (insert key l) k r
  | key > k = Tree l k (insert key r)
  | otherwise = Tree l key r

member key Leaf = False
member key (Tree l k r)
  | key < k = member key l
  | key > k = member key r
  | otherwise = key == k

data Tree' a = Leaf' | Tree' (Tree' a) Key a (Tree' a)
  deriving Show

insert' key val Leaf' = Tree' Leaf' key val Leaf'
insert' key val (Tree' l k a r)
  | key < k = Tree' (insert' key val l) k a r
  | key > k = Tree' l k a (insert' key val r)
  | otherwise = Tree' l key val r

lookup' key Leaf' = Nothing
lookup' key (Tree' l k a r)
  | key < k = lookup' key l
  | key > k = lookup' key r
  | key == k = pure a
  | otherwise = Nothing

t1 = foldr insert empty $ pure <$> "tspipfbst"
t2 = foldr insert empty $ pure <$> "abcdefghi"
