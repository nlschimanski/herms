module Lang.Portuguese where

import Lang.Strings

portuguese :: String -> String
portuguese str
  | is tuiTitle       = "                                  Herm's - Adicone uma receita"
  | is tuiName        = "          Nome: "
  | is tuiDesc        = "     Descrição: "
  | is tuiServingSize = "        Porção: "
  | is tuiHeaders     = "                  qnt.   uni.               nome                atributo"
  | is tuiIngrs       = " Ingredientes: \n(um por linha)  "
  | is tuiDirs        = "   Instruções: \n(uma por linha) "
  | is tuiTags        = "          Tags: "
  | is tuiHelp1       = "                      Tab / Shift+Tab           - Próximo / Campo anterior"
  | is tuiHelp2       = "                      Ctrl + <Arrow keys>       - Navegar campos"
  | is tuiHelp3       = "                      [Meta or Alt] + <h-j-k-l> - Navegar campos"
  | is tuiHelp4       = "                      Esc                       - Salvar ou Cancelar"
  | is headerServs    = "\nPorções: "
  | is headerIngrs    = "\nIngredientes:\n"
  | is saveRecipeYesNoEdit = "Salvar receita? (S)im  (N)ão  (E)ditar"
  | is y              = "s"
  | is yCap           = "S"
  | is n              = "n"
  | is nCap           = "N"
  | is e              = "e"
  | is eCap           = "E"
  | is recipeSaved      = "Receita salva!"
  | is changesDiscarded = "Mudanças descartadas."
  | is badEntry         = "Favor entre APENAS 's', 'n' ou 'e'"
  | is doesNotExist     = " não existe\n"
  | is nothingToImport  = "Nada a importar"
  | is importedRecipes  = "Receitas importadas:"
  | is metric         = "métrico"
  | is imperial       = "imperial"
  | is more           = " [mais]"
  | is capTags        = "Tags"
  | is group          = "agrupar"
  | is removingRecipe = "Removendo receita: "
  --  | is groupShort     = "g"
  | is groupDesc      = "agrupar as receitas por tags"
  | is nameOnly       = "nome"
  --  | is nameOnlyShort  = "n"
  | is nameOnlyDesc   = "exibir apenas os nomes das receitas"
  | is tags           = "tags"
  | is tagsMetavar    = "TAGS"
  | is tagsDesc       = "exibir receitas com tags específicas"
  | is serving        = "porção"
  --  | is servingShort   = "p"
  | is servingDesc    = "especificar tamanho da porção ao exibir"
  | is servingMetavar = "INT"
  | is step           = "passo"
  --  | is stepShort      = "t"
  | is stepDesc       = "exibir um passo por vez"
  | is convert        = "converter"
  --  | is convertShort   = "c"
  | is convertDesc    = "converte as unidades das receitas para o sistema métrico ou imperial."
  | is convertMetavar = "CONV_UNIT"
  | is none           = "nenhum"
  | is recipeNameMetavar = "NOME_RECEITA"
  | is recipeNameDesc    = "nome ou índice da receita"
  | is fileNameMetavar   = "NOME_ARQUIVO"
  | is fileNameDesc      = "nome do arquivo"
  | is list           = "listar"
  | is listDesc       = "listar as receitas"
  | is view           = "ver"
  | is viewDesc       = "ver uma receita"
  | is add            = "adicionar"
  | is addDesc        = "adicionar uma nova receita (interativamente)"
  | is edit           = "editar"
  | is editDesc       = "editar uma receita"
  | is import'        = "importar"
  | is importDesc     = "importar um arquivo de receitas"
  | is remove         = "remover"
  | is removeDesc     = "remover uma receita"
  | is shopping       = "compras"
  | is shoppingDesc   = "gerar uma lista de compras para as receitas"
  --  | is datadir        = "datadir"
  | is datadirDesc    = "mostrar local das receitas e arquivos de configuração"
  | is version        = "versão"
  --  | is versionShort   = "v"
  | is versionDesc    = "exibir a versão"
  | is progDesc       = "HeRM's: um Gerenciador de Receitas feito em Haskell. Digite \"herms --help\" para opções"
  | otherwise         = str

  where is = (str ==)
