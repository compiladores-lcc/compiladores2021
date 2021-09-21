{-|
Module      : Global
Description : Define el estado global del compilador
Copyright   : (c) Mauro Jaskelioff, Guido Martínez, 2020.
License     : GPL-3
Maintainer  : mauro@fceia.unr.edu.ar
Stability   : experimental

-}
module Global where

import Lang

data GlEnv = GlEnv {
  inter :: Bool,           --  ^ True, si estamos en modo interactivo.
  lfile :: String,         -- ^ Último archivo cargado.
  cantDecl :: Int,         -- ^ Cantidad de declaraciones desde la última carga
  glb :: [Decl Term],   -- ^ Entorno con declaraciones globales
  tyEnv :: [(Name,Ty)],    -- ^ Entorno de tipado de declaraciones globales
  typeDefs :: [(Name, Ty)] -- ^ Entorno de tipos definidos (TODO: Cambiar para poder recuperar los nombres de los tipos)
}

-- | Valor del estado inicial
initialEnv :: GlEnv
initialEnv = GlEnv True "" 0 [] [] []
