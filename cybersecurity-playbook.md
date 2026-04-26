# 🛡️ Cybersecurity Playbook

> Complete red team + blue team guide for AI Company operations

---

## 🔴 Red Team Operations

### Phase 1: Reconnaissance

```bash
# Passive Recon
amass enum -passive -d target.com
subfinder -d target.com
theHarvester -d target.com -b all

# Active Scanning
nmap -sV -sC -O target.com
nmap --script vuln target.com
```

### Phase 2: Vulnerability Assessment

```bash
# Web vulnerabilities
nuclei -u https://target.com -severity critical,high,medium
sqlmap -u "https://target.com/login" --forms
```

### Phase 3: Exploitation

```bash
# Metasploit basics
msfconsole
search type:exploit platform:linux
use exploit/multi/handler
set RHOSTS target.com
run

# Password attacks
hydra -l admin -P wordlist.txt target.com ssh
hashcat -m 0 hash.txt wordlist.txt
```

### Phase 4: Post-Exploitation

```bash
# Active Directory
BloodHound --collection All -c Neighbors
impacket-psexec domain/user:pass@target
kerberoast users.csv
```

---

## 🤖 Autonomous Pentesting (PentAGI)

```bash
# Start PentAGI
docker pull vxcontrol/pentagi
docker run -d -p 8080:8080 \
  -e OPENAI_API_KEY=$OPENAI_API_KEY \
  -e PENTAGI_POSTGRES_PASSWORD=securepass \
  vxcontrol/pentagi

# Access UI at http://localhost:8080
# Enter target URL and let AI run the full pentest
```

### PentAGI Tools (20+)
| Tool | Purpose |
|------|---------|
| nmap | Network scanning |
| nikto | Web scanning |
| sqlmap | SQL injection |
| hydra | Password brute force |
| ncrack | Network authentication |
| metasploit | Exploitation |
|Responder | LLMNR poisoning |
|Impacket | AD attacks |

---

## 🔵 Blue Team Operations

### Detection Tools

```bash
# SIEM
Splunk Forwarder
Elastic Agent
Wazuh

# EDR
CrowdStrike Falcon
Microsoft Defender for Endpoint

# Network Monitoring
zeek -i eth0 capture
suricata -i eth0
```

### Incident Response

```bash
# Forensics
autopsy disk.img
volatility -f memorydump imageinfo
```

### Log Analysis

```bash
# Linux
ausearch -k root
auditd /var/log/audit

# Network
tshark -r capture.pcap -z io,phs
```

---

## 🎯 Automated Security Scanning

### Daily Scans

```bash
# Nuclei (vulnerability scan)
nuclei -u target.com -severity critical,high \
  -json -o vulnerabilities.json

# Dependency check
npm audit
snyk test
trivy image myapp:latest
```

### CI/CD Security

```bash
# GitLeaks
gitsecrets --scan

# Infrastructure as Code
checkov -d ./terraform
tfsec .
```

---

## 📋 Compliance

| Framework | Category | Tools |
|-----------|----------|-------|
| SOC 2 | Security | Splunk, CrowdStrike |
| ISO 27001 | ISMS | OpenVAS, Nessus |
| PCI DSS | Payment | Nessus, Qualys |
| HIPAA | Healthcare | Burp Suite, Metasploit |

---

## 🚨 Emergency Contacts

| Incident | Contact |
|----------|---------|
| Data Breach | csirt@company.com |
| Malware | av-team@company.com |
| DDoS | netops@company.com |

---

## 📚 Resources

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [MITRE ATT&CK](https://attack.mitre.org/)
- [PentAGI Docs](https://docs.pentagi.com)
- [Metasploit Unleashed](https://www.offensive-security.com/metasploit-unleashed/)

---

*Last Updated: April 2026*