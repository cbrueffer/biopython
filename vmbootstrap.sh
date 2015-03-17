#!/usr/bin/env bash

apt-get update
apt-get install -y \
	git \
	vim \
	bwa \
	clustalo \
	clustalw \
	dialign \
	dssp \
	emboss \
	fasttree \
	mafft \
	muscle \
	ncbi-blast+ \
	paml \
	phyml \
	postgresql \
	prank \
	probcons \
	python-matplotlib \
	python-mysql.connector \
	python-networkx \
	python-psycopg2 \
	python-rdflib \
	python-reportlab \
	python-scipy \
	raxml \
	samtools \
	wise

# no packages available for these
#cd /root
#wget http://cmpg.unibe.ch/software/fastsimcoal2/downloads/fsc_linux64.zip
#wget http://xxmotif.genzentrum.lmu.de/index.php?id=download&version=64

# install Biopython
cd /vagrant
python setup.py install

# run tests
cd Tests
python run_tests.py --offline
