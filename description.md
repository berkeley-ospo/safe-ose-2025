NSF Safe-OSE: Securing the Scientific Python Ecosystem
======================================================

***Enhancing Cryptographic Practices and Supply Chain Integrity***

**PI:** **Jarrod Millman**

**Co-PI:** **Stéfan van der Walt**

# Introduction

We aim to address critical safety, security, and privacy vulnerabilities in the mature and widely-used scientific Python ecosystem (SP-OSE).
Our proposal targets both technical vulnerabilities (such as code flaws and side-channel attacks) and socio-technical vulnerabilities (including supply chain risks, insider threats, and social engineering).
By implementing comprehensive security measures across core projects and increasing awareness among the broader community, we will significantly enhance the resilience of this crucial open-source scientific computing infrastructure.
Our focus encompasses improving cryptographic practices, strengthening supply chain integrity, enhancing access controls, and fostering a culture of security awareness through targeted outreach and collaborative summits.
These efforts will ensure the continued reliability, safety, and trustworthiness of open-source scientific computing tools that are fundamental to research, education, and industry worldwide.

# Current Status

**We will fill this out later**


# National, Societal, and Economic Impacts

**We will fill this out later**

# Targeted Classes of Vulnerabilities

The pervasive use of scientific Python in research, education, and industry presents significant security risks.
The ecosystem informs government decisions, controls expensive infrastructure, and has access to health and other sensitive data, including being run on DOE clusters.
Despite its critical role, very little has been done to comprehensively improve security in the ecosystem, aside from some initial efforts by Scientific Python to hold meetings, develop SPECs, and build lightweight tools.

The SP-OSE faces several critical classes of vulnerabilities that require urgent attention, including supply chain

## Supply Chain Attacks {-}

Recent incidents like the XZ security breach highlight the vulnerability of open-source ecosystems to supply chain attacks.
The SP-OSE, with its extensive network of interdependent libraries, is particularly susceptible to such threats, potentially compromising the integrity of scientific research and data analysis pipelines.

Addressing this vulnerability class will:

- Enhance the integrity and trustworthiness of the entire scientific computing ecosystem
- Protect millions of users across academia, industry, and government from potential data breaches or malicious code execution
- Preserve the credibility of scientific research that relies on these tools

## Insufficient Cryptographic Practices {-}

Many scientific Python projects lack robust cryptographic signing and verification processes for releases, leaving them vulnerable to tampering and unauthorized modifications.

Implementing proper cryptographic practices will:

- Prevent unauthorized modifications to critical scientific libraries
- Ensure the authenticity of software used in sensitive research and applications
- Boost confidence in the reproducibility of scientific results

## Inadequate Access Controls {-}

Current contributor management systems often lack granular access controls, potentially exposing projects to insider threats and unauthorized code changes.

Improving access management will:

- Reduce the risk of malicious code insertions by compromised accounts
- Enhance project governance and accountability
- Facilitate collaboration while maintaining security

# Development Plan

To address these critical vulnerabilities and significantly enhance the safety, security, and privacy of the SP-OSE, we propose to:

## Implement End-to-End Signing for All Core Projects {-}

   - Develop a standardized signing process using modern cryptographic techniques
   - Create tools to simplify the signing process for maintainers
   - Integrate verification checks into package managers and CI/CD pipelines


## Create a Coordinated Vulnerability Disclosure, Audit, and Response Process {-}

   - Establish a centralized system for reporting and tracking vulnerabilities
   - Develop protocols for responsible disclosure and coordinated fixes across affected projects
   - Implement an automated notification system for affected downstream projects and users


## Enhance Dependency Management {-}

   - Create a centralized vulnerability database specific to scientific Python packages
   - Develop automated tools to audit and update dependencies across the ecosystem
   - Implement a system for rapid, coordinated responses to newly discovered vulnerabilities


## Improve Access Control Systems {-}

   - Design and implement a fine-grained permissions model for project repositories
   - Develop multi-factor authentication systems tailored to open-source workflows
   - Create tools for automated access audits and anomaly detection


## Form a Security Working Group {-}

   - Form a dedicated team of security experts from across the Scientific Python community
   - Develop security best practices and guidelines specific to scientific software development
   - Provide security training and resources for project maintainers and contributors


## Conduct Developer Summits {-}

   - In year 2, create comprehensive security training materials for the Scientific Python community
   - Organize a series of Scientific Python Developer Summits focused on implementing improved security processes
   - Facilitate hands-on workshops during summits to help projects adopt new security measures

# Evaluation Plan

To assess the efficacy of our security improvements, we will:

1. **Conduct Regular Security Audits**

   - Implement automated security scanning tools across the ecosystem
   - Track and analyze the number and severity of vulnerabilities discovered over time

2. **Measure Adoption of Security Practices**

   - Monitor the percentage of projects implementing end-to-end signing
   - Track the adoption rate of enhanced access control systems
   - Assess the coverage of the vulnerability database across the ecosystem

3. **Survey Community Sentiment**

   - Conduct regular surveys of maintainers, contributors, and users
   - Assess perceived improvements in security and trust in the ecosystem
   - Gather feedback on the usability and effectiveness of new security tools and processes

4. **Evaluate Developer Summit Outcomes**

   - Track the number of projects implementing improved security processes post-summit
   - Assess the effectiveness of training materials through participant feedback and follow-up surveys
   - Measure the impact of summits on overall ecosystem security through before-and-after security audits

By implementing these plans and rigorously evaluating their effectiveness, we aim to significantly enhance the security posture of the SP-OSE, ensuring its continued reliability and trustworthiness for the global scientific community.
