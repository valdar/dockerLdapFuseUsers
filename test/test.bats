#!/usr/bin/env bats
load test_helper

@test "image build" {

  run build_image
  [ "$status" -eq 0 ]

}

@test "ldapsearch new database + fuse users data" {

  run_image -e USE_TLS=false
  wait_service slapd
  run docker exec $CONTAINER_ID ldapsearch -x -h 127.0.0.1 -b dc=example,dc=org
  clear_container

  [ "$status" -eq 0 ]

}

@test "ldapsearch new database + fuse users data with strict TLS" {

  run_image
  wait_service slapd
  run docker exec $CONTAINER_ID ldapsearch -x -h ldap.example.org -b dc=example,dc=org -ZZ
  clear_container

  [ "$status" -eq 0 ]

}
