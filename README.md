Playing with ansible in the homelab
==================================

# roles for :
  - config common to every node (ssh config, users, packages, security)
  - container (podman) host running on Fedora Server
    - nfs mounts, task per service

#TODO
vars in site.yml per service:
    podman_state: {running, absent}
