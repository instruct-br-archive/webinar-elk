class profile::java::jre {
  class { 'java':
    distribution => 'jre',
 }
  contain ::java
}
