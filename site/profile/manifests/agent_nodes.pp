class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.jeff':}
  dockeragent::node {'db.jeff':}
}
