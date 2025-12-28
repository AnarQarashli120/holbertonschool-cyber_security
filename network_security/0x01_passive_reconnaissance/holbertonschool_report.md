# Passive Reconnaissance Analysis

## Target Domain: holbertonschool.com

---

## 1. Overview

This document presents the results of a passive reconnaissance activity
conducted against **holbertonschool.com**.
The data was gathered exclusively through publicly available sources,
specifically the Shodan search engine, without performing any direct
interaction or active probing of the target systems.

---

## 2. Identified IP Addresses

According to Shodan intelligence, the domain and its related services are
linked to the following IP addresses:

* 35.180.27.154
* 52.47.143.83

### Hosting and Network Details

* Cloud Provider: Amazon Web Services (AWS)
* Platform: EC2
* Geographical Location: Paris, France

This suggests that the infrastructure of holbertonschool.com is deployed
within AWS cloud environments.

---

## 3. Subdomain Enumeration

Passive discovery methods revealed several subdomains associated with the
target domain:

* holbertonschool.com
* [www.holbertonschool.com](http://www.holbertonschool.com)
* yriry.holbertonschool.com

Notably, **yriry.holbertonschool.com** appears to be used as a Level 2 forum,
indicating a separate functional component within the domain structure.

---

## 4. Observed Technologies

Shodan data analysis exposed the following technologies and configurations:

### Server Software

* Nginx running on Ubuntu

### Infrastructure

* Amazon EC2 cloud services

### Encryption and Security

* Support for TLS versions 1.2 and 1.3
* SSL/TLS certificates issued by Let’s Encrypt

### Network Behavior

* Permanent redirections (HTTP 301)
* Open ports detected:

  * 80 (HTTP)
  * 443 (HTTPS)

---

## 5. Assessment Summary

The passive reconnaissance phase provided meaningful insight into the
technical setup of holbertonschool.com.
The target utilizes a modern cloud-based infrastructure, applies up-to-date
encryption protocols, and enforces secure communication over HTTPS.
Additionally, multiple subdomains were identified, suggesting a segmented
service architecture.

---

## 6. Reconnaissance Tool

* Shodan – Public search engine for internet-connected devices
  [https://www.shodan.io](https://www.shodan.io)
