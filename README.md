Webinar Construindo Modulos Puppet - Elasticsearch, Logstash e Kibana
=====================================================================

Siga as instruções abaixo para montar o ambiente como foi feito no webinar.

Configuração do Vagrant
-----------------------

Tenha instalado o box `puppetlabs/centos-7.0-64-puppet`.

Utilize o `Vagrantfile` fornecido nesse repositório. Ele criará duas VMs: `master` e `node`.

Preparação do ambiente
----------------------

Em ambas as VMs, atualizar o pacote `puppet`.

Na VM master, instalar o pacote `puppet-server`.

Copie o diretório `puppet/` que existe nesse repositório para `/etc` na VM master.

Inicie o serviço `puppetmaster` e siga normalmente para o registro da VM `node`.

Qualquer dúvida acompanhe o webinar em nosso canal no YouTube: [https://youtube.com/instructbr].

