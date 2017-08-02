#/srv/pillar/apt/listchanges.sls
{% if grains['os_family'] == 'Debian' %}

apt_listchanges:
  pkg.installed
    - name: apt-listchanges

/etc/apt/apt.conf.d/20listchanges:
  file.managed:
    - source: salt://apt/conf/20listchanges.sls

