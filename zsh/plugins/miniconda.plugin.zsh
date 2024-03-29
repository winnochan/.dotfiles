if [ -d $HOME/miniconda3 ]; then
  export CONDA_HOME=$HOME/miniconda3
elif [ -d /opt/miniconda3 ]; then
  export CONDA_HOME=/opt/miniconda3
elif [ -d /usr/local/Caskroom/miniconda/base ]; then
  export CONDA_HOME=/usr/local/Caskroom/miniconda/base
fi

if [ -d $CONDA_HOME ]; then

    if [ $? -eq 0 ]; then

        if [ ! -d $ZSH_CACHE/conda ]; then
            mkdir -p $ZSH_CACHE/conda
        fi
        __conda_setup_file=$ZSH_CACHE/conda/setup.zsh
        if [ -f $__conda_setup_file ]; then
            source $__conda_setup_file
        else
            $CONDA_HOME/bin/conda shell.zsh hook 2> /dev/null > $__conda_setup_file
            source $__conda_setup_file
        fi
        unset __conda_setup_file

    else

        if [ -f "$CONDA_HOME/etc/profile.d/conda.sh" ]; then
            . "$CONDA_HOME/etc/profile.d/conda.sh"
        else
            export PATH="$CONDA_HOME/bin:$PATH"
        fi

    fi
fi
