platform "el-7-x86_64_generic" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  plat.install_build_dependencies_with "false #"
  plat.vmpooler_template "centos-7-x86_64"
  plat.base_docker_image "agent-runtime-master-201810110.15.gbc9159d:latest"
end
