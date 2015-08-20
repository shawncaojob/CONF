#!/usr/bin/python
# Author: Shiyan Cao
# Date: 2015.08.17
# JIRA Ticket: TECHOPS-351
# Usage: Use the script to insert row in the Dev/Stg/Prod authnz table
# Sample CSV file format:
# id,redirect_uri,scope,name,grant_type_id
# 'prod_clmjobs','http://localhost','enrollmentservice_all','Credit Line Management Jobs','2'
# 'prod_clmservice','prod_clmservice','enrollmentservice_all,creditprofileservice_all','Credit Line Management Service','2'


import argparse
import subprocess
import csv
from collections import namedtuple

parser = argparse.ArgumentParser(description='This Python script generate SQL for modifying authnz table. See sample.csv in the same directory for the format' )

parser.add_argument("-i", dest="filename", required=True, help="Input CSV file. Or modify sample.csv", metavar="csvFile")

args = parser.parse_args()

def upsert(table, **kwargs):
    """ update/insert rows into objects table (update if the row already exists)
        given the key-value pairs in kwargs """
    keys = ["%s" % k for k in kwargs]
    values = ["'%s'" % v for v in kwargs.values()]
    sql = list()
    sql.append("INSERT INTO %s (" % table)
    sql.append(", ".join(keys))
    sql.append(") VALUES (")
    sql.append(", ".join(values))
    sql.append(");")
    return "".join(sql)

with open(args.filename) as f:
    f_csv = csv.reader(f, quotechar="'")
    headings = next(f_csv)
    Row = namedtuple('Row', headings)
    for row in f_csv:
        secret=subprocess.check_output("echo $(uuidgen) | base64" , shell=True)
        print ""
        print upsert("client", id=row[0], redirect_uri=row[1], scope=row[2], name=row[3])[:-2] + ", deactivated=False, secret='" + secret[:-4] + "');"
        print upsert("client_grant_type", grant_type_id=row[4], client_id=row[0])
