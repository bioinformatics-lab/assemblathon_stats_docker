FROM centos:7
MAINTAINER Abhinav Sharma (@abhi18av)

#########
### Aptitude packages
#########
RUN     yum install perl -y

RUN     curl -LJ0 https://raw.githubusercontent.com/ucdavis-bioinformatics/assemblathon2-analysis/master/FAlite.pm -O
RUN     curl -LJ0 https://raw.githubusercontent.com/ucdavis-bioinformatics/assemblathon2-analysis/master/assemblathon_stats.pl -O

RUN     chmod +x assemblathon_stats.pl && \
	cp FAlite.pm /usr/share/perl5/ && \
	cp assemblathon_stats.pl /usr/local/bin/

