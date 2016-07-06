git clone https://github.com/meteorfox/PerfKitBenchmarker
cd PerfKitBenchmarker/
git checkout openstack-cli-provider
pip install -r requirements.txt
sed -i "s/python-neutronclient==4.1.1/python-neutronclient>=4.1.1/g" perfkitbenchmarker/providers/openstack/requirements.txt
pip install -r perkitbenchmarker/providers/openstack/requirements.txt
pip install .

. /opt/stack/devstack/openrc

python pkb.py --cloud=OpenStack --benchmarks=cluster_boot --image=cirros-0.3.4-x86_64-uec --config_override=cluster_boot.vm_groups.default.vm_count=1 --openstack_image_username cirros
