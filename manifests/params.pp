class solr::params {

  case  $::osfamily {
    'Debian', 'Redhat': {
      $solr_version = '4.5.1'
      $solr_home = '/opt/solr'
      # needs to be full path to apache root
      $apache_mirror = "archive.apache.org/dist/" #not all mirrors have old stuff
      $zookeeper_hosts = ""
      $exec_path = '/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin'
      $java_home = '/usr/lib/jvm/default-java'
      $core_name = 'collection1'
      $solr_conf = '/etc/solr'
    }
     default: { fail("Running on an untested OS bailing out") }
  }
  # WARNING
  # We specify global path for every exec command in this class here
  Exec {
    path => $exec_path
  }
}
