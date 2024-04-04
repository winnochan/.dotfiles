export NODEJS_ORG_MIRROR=https://mirrors.ustc.edu.cn/node/
export ASDF_NODEJS_NODEBUILD_HOME=$DOT_DIR/3rd/node-build
export ASDF_NPM_DEFAULT_PACKAGES_FILE=$DOT_DIR/config/asdf/default-npm-packages

source $DOT_DIR/3rd/asdf/asdf.sh
# source $ZSH_DIR/.asdf/completions/asdf.bash
fpath=(${ASDF_DIR}/completions $fpath)
