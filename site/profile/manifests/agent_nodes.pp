
class { 'docker':
  use_upstream_package_source => false,
  service_overrides_template  => false,
  docker_ce_package_name      => 'docker',
}

class profile::agent_nodes {
 include dockeragent
 dockeragent::node {'web.puppet.vm':}
 dockeragent::node {'db.puppet.vm':}

}

