# instalar e configurar pyenv

# instalar bibliotecas no ubuntu/mint
sudo apt install -y make\
  build-essential\
  libssl-dev\
  zlib1g-dev\
  libbz2-dev\
  libreadline-dev\
  libsqlite3-dev\
  wget\
  curl\
  llvm\
  libncurses5-dev\
  libncursesw5-dev\
  xz-utils\
  tk-dev\
  libffi-dev\
  liblzma-dev\
  python-openssl\
  git

# instalar o pyenv
curl https://pyenv.run | bash

# editar 
gedit ~/.bashrc

# adicionar ao final do arquivo
export PYTHON_BUILD_ARIA2_OPTS="-x 10 -k 1M"

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# salve o arquivo e feche o gedit
# fechar todos os terminais para poder aplicar a configuracao
# abra novamente um terminal

# ver as versoes do interpretador python que podem ser instalados
pyenv install -l

# atualizar a base de dados de versoes do interpretadores rodando pyenv
pyenv update

# instalar o pyenv (usando a versao 3.8.1 e 2.7.17)
pyenv install -v 3.8.1

# definir o python 3.8.1 como o python padrao do seu usuario
pyenv global 3.8.1

# verificar a versao instalada
python -V
