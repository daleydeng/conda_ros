PREFIX=$CONDA_PREFIX
colcon build --symlink-install --cmake-args -DCMAKE_PREFIX_PATH=$PREFIX
