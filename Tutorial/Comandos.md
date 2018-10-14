## Resumo dos principais comandos do Git

### Criar e Clonar
* Criar novo repositório `git init`
* Clonar repositório local `git clone CaminhoDoRepositorio` 
* Clonar repositório remoto `git clone NomeUsuario@Host:/CaminhoDoRepositorio`

### Adicionando e Removendo
* Adicionar mudanças ao Index `git add NomeDoArquivo`
* Adicionar todas as mudanças ao Index `git add *`
* Remover mudanças `git rm NomeDoArquivo`

### Commit e Sincronização
* Gerar commit `git commit -m "Descrição do Commit"`
* Enviar mudanças ao repositório remoto `git push origin NomeDoBranch`
* Conectar o repositório local ao remoto `git remote add origin <Servidor>`
* Atualizar o repositório local com mudanças do remoto `git pull`

### Branches
* Criar novo branch `git checkout -b NomeDoBranch`
* Trocar o branch atual `git checkout NomeDoBranch`
* Apagar branch local `git branch -d NomeDoBranch`
* Enviar mudanças do branch para o remoto `git push origin NomeDoBranch`

### Merge
* Dar merge `git merge NomeDoBranch`
* Ver diferenças entre dois branches `git diff BranchBase BranchTarget`

### Tags
* Criar tag `git tag NomeDaTag IDdoCommit`
* Conferir IDs dos commits `git log`

### Restaurar
* Sobrepor Index com o Head `git checkout -- NomeDoArquivo`
