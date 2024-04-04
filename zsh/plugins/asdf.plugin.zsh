# for golang
export ASDF_GOLANG_DEFAULT_PACKAGES_FILE=$DOT_DIR/config/asdf/default-golang-pkgs
__env_file=~/.asdf/plugins/golang/set-env.zsh
if [ -f ${__env_file} ]; then
    source ${__env_file}
fi

# for java
__env_file=~/.asdf/plugins/java/set-java-home.zsh
if [ -f ${__env_file} ]; then
    source ${__env_file}
fi

# for nodejs
export NODEJS_ORG_MIRROR=https://mirrors.ustc.edu.cn/node/
export ASDF_NODEJS_NODEBUILD_HOME=$DOT_DIR/3rd/node-build
export ASDF_NPM_DEFAULT_PACKAGES_FILE=$DOT_DIR/config/asdf/default-npm-packages

# for python
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE=$DOT_DIR/config/asdf/default-python-packages

# for asdf
source $DOT_DIR/3rd/asdf/asdf.sh
# source $ZSH_DIR/.asdf/completions/asdf.bash
fpath=(${ASDF_DIR}/completions $fpath)

unset __env_file
