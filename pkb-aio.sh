git clone https://github.com/meteorfox/PerfKitBenchmarker
cd PerfKitBenchmarker/
git checkout openstack-cli-provider
pip install -r requirements.txt
pip install -r requirements-openstack.txt
pip install .

. /opt/stack/devstack/openrc

python pkb.py --cloud=OpenStack --benchmarks=cluster_boot --image=cirros-0.3.4-x86_64-uec --config_override=cluster_boot.vm_groups.default.vm_count=1 --openstack_image_username cirros
