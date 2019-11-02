# cuda related
export CUDA_HOME=/usr/local/cuda-10.0
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

# path related
export PRJ_ROOT=$PWD/../../..
if [ -e "$PRJ_ROOT"/tools/venv/bin/activate ]; then
    # shellcheck disable=SC1090
    . "$PRJ_ROOT"/tools/venv/bin/activate
fi
export PATH=$PATH:$PRJ_ROOT/parallel_wavegan/bin:$PRJ_ROOT/utils

# python related
export OMP_NUM_THREADS=1
export PYTHONIOENCODING=UTF-8
export MPL_BACKEND=Agg

# check installation
if ! python -c "import parallel_wavegan" > /dev/null; then
    echo "Error: it seems setup is not finished." >&2
    echo "Error: please setup your environment by following README.md" >&2
    return 1
fi
