module Lib
  ( prompt,
    editIndex,
  )
where

import Data.List

putTodo :: (Int, String) -> IO ()
putTodo (n, todo) = putStrLn (show n ++ ": " ++ todo)

prompt :: [String] -> IO ()
prompt todos = do
  putStrLn ""
  putStrLn "Comandos: +(crear), -(borrar), s(mostrar), e(editar), l(listar), r(revertir), c(limpiar), q(salir)"
  command <- getLine
  if "e" `isPrefixOf` command
    then do
      print "¿Cuál es el nuevo texto?"
      newTodo <- getLine
      editTodo command todos newTodo
    else interpret command todos

interpret :: String -> [String] -> IO ()
interpret ('+' : ' ' : todo) todos = prompt (todo : todos)
interpret ('-' : ' ' : num) todos =
  case deleteOne (read num) todos of
    Nothing -> do
      putStrLn "Número no encontrado"
      prompt todos
    Just todos' -> prompt todos'
interpret ('s' : ' ' : num) todos =
  case showOne (read num) todos of
    Nothing -> do
      putStrLn "Número no encontrado"
      prompt todos
    Just todo -> do
      print $ num ++ ". " ++ todo
      prompt todos
interpret "l" todos = do
  let n = length todos
  print $ show n ++ " en total"
  mapM_ putTodo (zip [0 ..] todos)
  prompt todos
interpret "r" todos = do
  let n = length todos
  print $ show n ++ " en total"
  mapM_ putTodo (zip [0 ..] (reverseTodos todos))
  prompt todos
interpret "c" _ = do
  print "Lista limpiada."
  prompt []
interpret "q" _ = return ()
interpret command todos = do
  putStrLn ("Comando inválido: `" ++ command ++ "`")
  prompt todos

deleteOne :: Int -> [a] -> Maybe [a]
deleteOne 0 (_ : as) = Just as
deleteOne n (a : as) = do
  as' <- deleteOne (n - 1) as
  return (a : as')
deleteOne _ [] = Nothing

showOne :: Int -> [a] -> Maybe a
showOne n todos =
  if (n < 0) || (n > length todos) then Nothing
  else Just (todos !! n)

editIndex :: Int -> a -> [a] -> [a]
editIndex i x xs = take i xs ++ [x] ++ drop (i + 1) xs

editTodo :: String -> [String] -> String -> IO ()
editTodo ('e' : ' ' : num) todos newTodo =
  case showOne (read num) todos of
    Nothing -> do
      putStrLn "Número no encontrado"
      prompt todos
    Just old -> do
      print $ "Antes: " ++ old
      print $ "Después: " ++ newTodo
      let newTodos = editIndex (read num :: Int) newTodo todos
      mapM_ putTodo (zip [0 ..] newTodos)
      prompt newTodos
editTodo _ todos _ = prompt todos

reverseTodos :: [a] -> [a]
reverseTodos xs = go xs []
  where
    go [] ys = ys
    go (x : xs) ys = go xs (x : ys)