Kerenl config
sudo bash -c "echo never > /sys/kernel/mm/transparent_hugepage/enabled"
sudo bash -c "echo never > /sys/kernel/mm/transparent_hugepage/defrag
sudo bash -c "echo never > /sys/kernel/mm/transparent_hugepage/defrag"

Add the build path into the user PATH and execute

$BUILD_PATH/voltdb/bin/voltdb create
