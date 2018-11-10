platform "el-7-x86_64" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  plat.add_build_repository "http://pl-build-tools.delivery.puppetlabs.net/yum/pl-build-tools-release-#{plat.get_os_name}-#{plat.get_os_version}.noarch.rpm"
  plat.provision_with "yum install --assumeyes autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign which"
  plat.install_build_dependencies_with "yum install --assumeyes"
  plat.vmpooler_template "centos-7-x86_64"

  # TODO (Puppercon): Maybe try a different
  # base image
  plat.base_docker_image "centos:7"
end
