module Main where

import Control.Monad
import CMark
import Data.List
import Data.MultiSet (MultiSet)
import qualified Data.MultiSet as MultiSet
import qualified Data.Text as Text
import System.Directory

gatherLinks :: Node -> [Url]
gatherLinks (Node _ (LINK url _) ns) = url : concatMap gatherLinks ns
gatherLinks (Node _ _ ns) = concatMap gatherLinks ns

isMarkdown :: FilePath -> Bool
isMarkdown = isSuffixOf ".md"

filterUnique :: Ord a => MultiSet a -> MultiSet a
filterUnique = MultiSet.fromOccurList . filter (\x -> snd x > 1) . MultiSet.toOccurList

type Named a = (String, a)

getLinkSetInMarkdown :: FilePath -> IO (Named (MultiSet String))
getLinkSetInMarkdown path = do
  node <- commonmarkToNode [] . Text.pack <$> readFile path
  pure (path, MultiSet.fromList (map Text.unpack $ gatherLinks node))

checkDuplicated :: FilePath -> IO ()
checkDuplicated path = do
  (name, links) <- fmap filterUnique <$> getLinkSetInMarkdown path
  when (not $ MultiSet.null links) $ do
    putStrLn $ name ++ " に以下のリンクが重複して存在します。"
    forM_ (MultiSet.toOccurList links) $ \(link, number) ->
      putStrLn $ "    " ++ show number ++ "箇所: " ++ link

checkDuplicatedAll :: [FilePath] -> IO ()
checkDuplicatedAll paths = do
  linkSets <- mapM getLinkSetInMarkdown paths
  let duplicatedLinkSet = filterUnique $ foldr MultiSet.union MultiSet.empty $ map snd linkSets
  putStrLn "ドキュメント全体の中で以下のリンクが重複して存在します。"
  forM_ (MultiSet.toOccurList duplicatedLinkSet) $ \(link, number) ->
    putStrLn $ "    " ++ show number ++ "箇所: " ++ link

main :: IO ()
main = do
  files <- ("./README.md":) . map ("./docs/"++) . filter isMarkdown <$> listDirectory "./docs/"
  mapM_ checkDuplicated files
  checkDuplicatedAll files
