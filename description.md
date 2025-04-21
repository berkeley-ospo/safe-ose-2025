# Introduction

With its vast array of open-source tools, frameworks, and libraries, the **Scientific Python Open Source Ecosystem ($\spose$)** \citep{millman2011python, perez2011python} has become an indispensable pillar of modern scientific computing, data analysis, and machine learning.
The ecosystem supports the entire computational science lifecycle, from data gathering, to analysis, to publication and dissemination, and varies in generality from fundamental data structures, to general scientific algorithms, to domain-specific routines.
Together with the *Jupyter Open Source Ecosystem ($\jupyterose$)* \citep{Kluyver2016jupyter}, it enables cutting-edge research across disciplines, from astrophysics \citep{astropy:2013, astropy:2018, astropy:2022} to seismology \citep{Beyreuther2010, Megies2011, Krischer2015}.
Python's recent ascension to the #1 programming language on GitHub \citep{Octoverse2024}, surpassing JavaScript, underscores the critical importance and widespread use of these ecosystems.
That surge in popularity also reflects the increasing centrality of data-driven approaches in science, education, industry, and defense, making the security and reliability of these ecosystems paramount to national and global scientific and technological progress.

# Current Status

<!--
1. Describe the current status of the targeted OSE and provide pointers to the OSE managing organization and the public repositories for the open-source product. As the PAPPG does not permit URLs in the Project Description, use the References Cited section of the proposal to identify the appropriate resources.
-->

The $\spose$ is a mature, vibrant open-source ecosystem of independent, interconnected projects used by researchers across diverse scientific disciplines to perform complex analyses, simulations, and visualizations.
The $\spose$ brings together people from around the world who work together to solve new scientific challenges.
It employs a decentralized governance structure, with individual projects retaining autonomy over their leadership, decision-making, and development processes.
This community-driven approach allows for rapid innovation while seeking community consensus around ecosystem-wide decisions and standards.

Consider a physicist studying particle collisions at the Large Hadron Collider (LHC) to investigate questions about the interactions of matter and the fundamental forces of Nature and search for evidence of new physics.
They might use a deployment of the Institute for Research and Innovation in Software for High Energy Physics \citep{Bockelman:2023gbj} (IRIS-HEP)'s Elastic Analysis Facility---a cloud-based platform that provides shared computing environments for high energy physics (HEP) researchers to process and analyze massive datasets, share code and results, and collaborate with colleagues globally.
Then, to analyze collision data, the physicist might rely on tools from Scikit-HEP (see Figure \ref{fig:scikit-hep}), a $\spose$ sub-ecosystem specifically designed for Pythonic high energy physics analysis \citep{Rodrigues:2020syo}.
Scikit-HEP intentionally builds on a \emph{stack} of packages, including foundational scientific Python libraries like NumPy for numerical computing \citep{vanderwalt2011numpy, harris2020array}, SciPy for general scientific computing algorithms \citep{virtanen2020scipy}, Matplotlib for data visualization \citep{hunter2007matplotlib}, and Pandas for data manipulation \citep{mckinney-proc-scipy-2010}.
From this core stack, Scikit-HEP builds interoperable packages that collectively address more domain-specific computing operations.
Physics driven data patterns and reduction choices are addressed through Awkward Array for handling complex hierarchical data structures \citep{Pivarski_Awkward_Array_2018} and boost-histogram and Hist for advanced multidimensional histogramming \citep{henry_schreiner-proc-scipy-2020,scikit-hep_boost_histogram_1_5_2}.
Successively more HEP specific operations additionally use Uproot for I/O with the HEP-specific ROOT binary data format \citep{scikit-hep_uproot3_3_14_4}, Vector for physical and Lorentz vector transformations and operations \citep{vector_v0_10_0}, and Particle \citep{scikit_hep_particle_v0_25_3} for accessing particle properties from the Particle Data Group database \citep{PhysRevD.110.030001}.

\begin{figure}
  \begin{center}
    \includegraphics[width=13cm]{figures/shells-hep.pdf}
  \end{center}
  \caption{The components of the Python-based analysis ecosystem for HEP that form the Scikit-HEP domain stack.
  The bottom ring consists of the foundational computational libraries in the Scientific Python ecosystem.
  The successive rings contain tools that are more specifically designed for particle physics analysis and applications; while the first HEP-specific layer is broadly used across the field of particle physics, each layer becomes more operation- or experiment-specific.
  Collectively, the Scientific Python ecosystem and the Scikit-HEP domain stack enable the next generation of LHC analysis infrastructure developed by IRIS-HEP \citep{Bockelman:2023gbj}.}
  \label{fig:scikit-hep}
\end{figure}

This example illustrates the concept of a \emph{domain stack} in the scientific Python ecosystem, where libraries are built in layers, with foundational packages at the bottom and more specialized, domain-specific packages at the top.
The foundational libraries provide basic functionality needed across many domains, while the upper-level packages build upon these foundational libraries to provide domain specific tooling to address the specific needs of researchers working in particular fields.
There are many such domain stacks like Scikit-HEP, including Astropy (astronomy), NIPY (neuroimaging), PySAL (geospatial data science), scverse (single-cell biology), and Biopython (bioinformatics).
Inside a domain stack, each package typically has its own developer community, communication channels, websites, road maps, documentation, engineering and packaging solutions, and governance structures.
While this loosely coupled development model has some advantages, it also means that there are redundancies due to inherent fragmentation in the scientific Python ecosystem.
This fragmentation poses significant challenges in terms of sustainability, direction, compatibility, user experience, collaboration, efficiency, performance, and deployment.

## Scientific Python Project (\spp) {-}

\begin{figure}
  \begin{center}
    \includegraphics[width=16cm]{figures/scientific-python.org.pdf}
  \end{center}
  \caption{Homepage of the Scientific Python Project showcasing its mission to coordinate and support the ecosystem through community-driven efforts, resources like lecture notes, development guides, and SPECs, as well as events such as developer summits.}
  \label{fig:scientific-python.org}
\end{figure}

To address these challenges, the PIs founded the **Scientific Python Project ($\spp$)** \citep{spp}, the managing organization that steers the development of the $\spose$, and the essential infrastructure needed to keep the ecosystem running (see Figure \ref{fig:scientific-python.org}).
$\spp$'s mission is to better coordinate the $\spose$ and support its community of contributors and maintainers.
Through the $\spp$, the PIs recruited a governing team of community leaders and managers, established central community spaces, brought developers together for cross-project Developer Summits, updated and maintained classic community-owned learning resources, aggregated and disseminated best development practices, and built and supported common maintainer tooling.
$\spp$ has grown rapidly, with 80 team members and 356 followers for our GitHub organization, 29 affiliated Python libraries in our nightly wheel-hosting infrastructure, 332 subscribers to our YouTube channel, 477 members on our Discourse forum, and 694 members on our Discord server.
We are holding our third annual Scientific Python Developer Summit this May.

All software is licensed under the modified BSD-3 license and educational material under Creative Commons licenses like CC0 or CC-BY.
We follow an open and consensus-oriented governance model that encourages broad participation in activities, discussions, design, and decision-making processes, conducted transparently on open channels like GitHub.
Membership is open to all, established through active collaboration, and requires adhering to the code of conduct.
Decisions are made through community discussions on public forums following a consensus-seeking approach, with sensitive topics (e.g., security issues and conduct violations) addressed privately when necessary.

We created the **Scientific Python Ecosystem Coordination ($\spec$)** process \citep{specs} to establish cross-project technical specifications, highlight shared resources, and document best practices (see Figure \ref{fig:specs}).
<!--
We formed a **$\specsteering$** and engaged an initial set of 
**$\spcore$**.
(IPython \citep{perez2007ipython}, NumPy, SciPy, Matplotlib \citep{hunter2007matplotlib}, Pandas \citep{mckinney-proc-scipy-2010}, NetworkX \citep{hagberg2008}, scikit-image \citep{vanderwalt2014scikit}, scikit-learn \citep{scikit-learn}, xarray \citep{hoyer2017xarray}, and zarr).
-->
The $\specsteering$, comprising 17 volunteers from various projects in the ecosystem, oversees the $\spec$ process with input from the larger community and in consultation with the maintainers of the $\spcore$.

\begin{figure}
  \begin{center}
    \includegraphics[width=16cm]{figures/specs.png}
  \end{center}
  \caption{The growing list of SPECs and the SPEC Core Project endorsements. SPECs provide recommendations for projects in the scientific Python ecosystem. All community members and ecosystem projects are welcome to participate in the SPEC process.}
  \label{fig:specs}
\end{figure}

The $\spcore$ are foundational projects that are depended upon by many other projects, and often provide basic data structures, drawing primitives, implementations of fundamental algorithms, or are metapackages that represent a particular scientific field.
Due to their central position in the ecosystem, the policies, practices, and tooling used by the Core Projects are widely seen by the ecosystem and impact many other projects.
They follow open and collaborative practices, including having a public version control system and bug tracker, code of conduct, contributors' guide, code review process, public roadmap, documented governance system, enhancement proposal process, and regular releases.
They are developed openly by their respective communities, with contributors from multiple institutions.
They commonly use the 3-clause BSD license: a highly permissive free and open source software license, imposing minimal restrictions on use and re-distribution.

The growing list of $\spcore$ (in alphabetic order) currently includes:
\begin{itemize}
\item \textbf{ipython} (16.4k GH stars, 4.5k GH forks) \citep{perez2007ipython}, an interactive environment offering enhanced code execution and exploration,
and the primary kernel for Jupyter;
\item \textbf{matplotlib} (21k GH stars, 7.8k GH forks), a visualization library for the creation of high-quality plots for scientific analysis and communication;
\item \textbf{NetworkX} (15.6k GH stars, 3.3k GH forks) \citep{hagberg2008}, a library for the creation, manipulation, and analysis of complex networks or graphs;
\item \textbf{NumPy} (29.3k GH stars, 10.7k GH forks), the fundamental array data structure used throughout the ecosystem;
\item \textbf{pandas} (45.1k GH stars, 18.4k GH forks), a library for data manipulation and analysis, offering essential tools for tasks such as data cleaning, exploration, transformation, and statistical analysis;
\item \textbf{PySAL} (1.4k GH stars, 307 GH forks) \citep{pysal_github}, a domain stack and Python metapackage for geospatial data science, supporting spatial analysis tasks such as detecting spatial clusters, modeling spatial relationships, and performing exploratory spatio-temporal data analysis;
\item \textbf{scikit-hep} (165 GH stars, 35 GH forks) \citep{scikit_hep_github}, a domain stack and a Python ecosystem tailored for high energy physics research, providing tools for handling particle physics datasets, histogramming, fitting models, and interfacing with HEP-specific libraries like ROOT;
\item \textbf{scikit-image} (6.2k GH stars, 2.3k GH forks), an image processing library, offering tools for tasks such as image filtering, segmentation, and feature extraction \citep{vanderwalt2014scikit};
\item \textbf{scikit-learn} (61.7k GH stars, 25.8k GH forks) \citep{pedregosa2011scikit}, a machine-learning library, offering tools for classification, regression, clustering, dimensionality reduction, etc.;
\item \textbf{SciPy} (13.5k GH stars, 5.3k GH forks) \citep{virtanen2020scipy}, a collection of scientific computing routines, with algorithms for interpolation, linear algebra, optimization, signal processing, and more;
\item \textbf{xarray} (3.8k GH stars, 1.1k GH forks), a library that implements labeled, multi-dimensional arrays;
\item \textbf{zarr-python} (1.7k GH stars, 324 GH forks) \citep{zarr_python_v2_18_7}, a library for efficient storage and manipulation of large, compressed, and chunked multi-dimensional arrays.
\end{itemize}
<!--
While GitHub stars aren't definitive measures, it is worth noting that four of the $\spcore$ are in the top 500 repositories on GitHub according to stars \citep{gitstar_ranking}.
https://www.irregex.vc/posts/a-look-into-the-most-starred-repos
  Total number of repositories with stars > 100: 127,739
  Total number of repositories with stars > 1000: 12,960
  Total number of repositories with stars > 5000: 1,982
  Total number of repositories with stars > 25000: 184
-->
While GitHub stars are not a definitive measure of impact, it is notable that nine of the SPEC Core Projects rank among the top 0.036% of all repositories on GitHub by stars \citep{gitstar_ranking}.
The maintainers of each of the $\spcore$ has agreed to become involved with the $\spec$ process; however, many more projects small and large participate and even more adopt the various $\spec$s for their own projects.

In addition to these projects, we also develop and maintain a growing collection of **$\sptools$**---overseen by the $\toolsteering$ committee---that support projects across the ecosystem, including those implementing the $\spec$s.
The $\spp$ currently supports approximately fifteen tools, ranging from release management utilities to community organization aids, as well as two core services: a discussion forum and web analytics.
The expanding suite of developer tools includes:

\begin{itemize}
\item \textbf{cookie} (339 GH stars, 56 GH forks) \citep{scientific_python_cookie_github}, a template generator for new Python projects based on the Scientific Python Developer Guide. It ensures that new repositories adhere to best practices in development, testing, and deployment.
\item \textbf{repo-review} (74 GH stars, 6 GH forks) \citep{repo_review_github}, a framework for evaluating repositories against predefined guidelines from the Scientific Python Developer Guide. By identifying configuration issues and enforcing compliance with best practices, it helps maintain high standards across the ecosystem.
\item \textbf{lazy-loader} (165 GH stars, 22 GH forks) \citep{lazy_loader_github}, a library that implements lazy loading for Python submodules and functions, reducing import times and memory usage by loading components only when accessed.
\item \textbf{MeeseeksDev} (36 GH stars, 22 GH forks) \citep{meeseeksdev_github}, a GitHub bot that automates routine project management tasks such as labeling issues, merging pull requests, backporting security fixes, and enforcing repository policies, thereby streamlining contributor workflows.
\item \textbf{pytest-doctestplus} (104 GH stars, 40 GH forks) \citep{pytest_doctestplus_github}, a plugin for the pytest framework that extends doctest capabilities to support advanced testing of documentation files.
\item \textbf{spin} (109 GH stars, 21 GH forks) \citep{spin_github}, a developer tool designed to simplify common build and development tasks for scientific Python libraries. It abstracts complex command-line operations into user-friendly commands, reducing human error and ensuring consistent workflows across projects.
\item \textbf{sync-teams-action} (4 GH stars, 2 GH forks) \citep{sync_teams_action_github}, a GitHub Action for managing teams and team membership within GitHub organizations, helping to automate and standardize access control.
\end{itemize}

Through these and other community initiatives, the $\spp$ fosters interoperability, reduces maintenance burden, and provides a more cohesive experience for users.

# National, Societal, and Economic Impact

<!--
2. Describe the national/societal/economic impacts of the OSE. This program will prioritize funding for OSEs where
safety/security/privacy improvements will have demonstrable benets to society and/or the economy and/or
contributions to national infrastructure with respect to societal and/or economic safety, security, and privacy.
Describe, where appropriate, what other products depend upon the safe, secure, and privacy-preserving function
of the OSE.
-->

The $\spose$ has far-reaching impacts on scientific research, education and workforce development, economic growth and innovation, and national security.

## Scientific Research {-}

The $\spose$ underpins cutting-edge research across a vast spectrum of scientific disciplines, from systems biology to materials science, and from astrophysics to climate modeling \citep{lin2022introduction}.
This ecosystem supports endeavors ranging from large international collaborations like CERN's particle physics experiments to critical national resources such as the Rubin Observatory \citep{andreuzzi2021improving, elvira2022future, dux2024lightcurver}, as well as countless individual research projects in universities, national laboratories, and research centers worldwide \citep{kamatar2023lazy}.

For example, in high energy physics, researchers are increasingly using foundational scientific Python and domain-specific Scikit-HEP packages \citep{rodrigues2020scikit}.
The ATLAS and CMS LHC experiments ubiquitously use scientific Python libraries for all stages of end user data analysis, and rely on the full Scikit-HEP ecosystem for not only current analyses at the LHC, but also for the data analysis and computing models for the future High-Luminosity Large Hadron Collider (HL-LHC) upgrade \citep{Jung:2025oqh,Bockelman:2023gbj,Albin:2023szc,CERN-LHCC-2022-005,Shope:2025ukx}.
The Belle II experiment utilizes Scikit-HEP's vector and particle packages for precision measurements of CP violation in B-meson decays, which are critical for testing predictions of the Standard Model \citep{belle2_core_software}.
KM3NeT, the Kilometre Cube Neutrino Telescope, is a deep-sea research infrastructure in the Mediterranean Sea designed to detect high-energy neutrinos.
It employs Scikit-HEP tools for tasks such as data analysis, simulation, and software development \citep{indico_cern_seminar_2020, hennig2023km3net}.
Similarly, the Large Hadron Collider beauty (LHCb) Collaboration achieved a significant milestone by performing its first analysis entirely in Python.
This analysis leveraged standard scientific Python packages alongside Scikit-HEP tools such as boost-histogram, iminuit, Particle, and uproot \citep{lhcb2022prompt}.
The ecosystem is also enabling closer collaboration between researchers in high energy physics experiment and theory by providing, for the first time, tools that can be shared across the broader field.
For example, the Scikit-HEP statistical modeling library pyhf \citep{pyhf_joss} has been used, and cited more than 170 times, by experimental collider physics (ATLAS), neutrino physics (MicroBooNE), flavour physics (Belle II) collaborations, the particle physics phenomenology community (SModels, MadAnalysis5), and in physics studies for future colliders (Future Circular Collider, Electron-Ion Collider, Muon Collider).
<!--
These examples highlight the power of Python-based workflows for managing large-scale high energy physics datasets efficiently, marking a transition toward modern, flexible, and reproducible computational methodologies.
-->

In geospatial science, foundational scientific Python and domain-specific PySAL packages have seen widespread adoption \citep{rey2021pysal}.
Specialized tools for spatial analysis---including geopandas, geoplot, and geosnap---build on these core projects.
Moreover, the PySAL domain-stack is used by researchers from a wide
array of topics across many disciplines including
engineering \citep{fan2018network},
chemistry \citep{spiridon2017hamiltonian},
physics \citep{jakubska2018pickover},
biology \citep{noorbakhsh2019pan},
neuroscience \citep{burt2018hierarchy},
epidemiology \citep{hughes2014geovisualization}
and many others.

<!--
The ecosystem enables cutting-edge research across numerous scientific domains, including **Physics and Astronomy** (Event Horizon Telescope, LIGO, Rubin Observatory), **Climate Science** (MetPy, Pangeo, CMIP6),  and **Neuroscience** (Human Connectome Project, Allen Brain Atlas).

The ecosystem enables cutting-edge research 

from large international collaborations such as CERN
to key national resources such as James Webb Telescope ...
to individual research projects from systems biology to materials science.

Spans the entire gamut of scientific research from ....
larger international collaborations (CERN), 
NASA (..),
national labs,
universities and research centers,
to indvidual labs.

- multiple fields / disciplines
- small labs to international collaborations
-->

## Education and Workforce Development {-}

<!--Python was created as a teaching language...-->
The ecosystem plays a crucial role in education, with Python increasingly adopted as the primary language taught at universities \citep{paffenroth2015python, zhang2019applying, mantusov2021python, bati2022integration}.
At UC Berkeley, for instance, the adoption of $\spose$ has been foundational to the success of its Data Science education initiative, which includes the first new college in 50 years and the largest undergraduate major on campus \citep{cdss2025datasciencemajor}.
Core courses such as Data 8: Foundations of Data Science---the university’s largest single course---and Data 100: Principles and Techniques of Data Science---the largest upper-division course---rely heavily on the $\spose$ and the $\jupyterose$ to deliver high-impact, scalable instruction.

More than 50 universities and colleges across the United States have adopted components of Berkeley’s teaching stack, with some institutions fully integrating the Data 8 curriculum as a foundational course in data science education \citep{cdss2025datasciencemajor}.
Others have adapted individual elements to suit their disciplinary needs, embedding $\spose$ tools into courses across diverse fields.
Through partnerships with initiatives like NSF’s CloudBank project, Berkeley has supported community colleges, California State Universities (CSUs), and other UC campuses in adopting scalable cloud-based infrastructure and open-source educational resources \citep{cdss2025nwdse}.

Open-source workflows built on $\spose$ tools have become foundational in courses ranging from biology and physics to earth science and engineering \citep{van_dusen2019accelerating}.
In some majors, the $\spose$ serves as the standard computational toolkit, equipping students with transferable skills early in their academic journeys.
In others, it supports advanced applications such as biosciences data analysis and earthquake monitoring, giving students authentic experiences with real-world scientific workflows.

## Economic Growth and Innovation {-}

The $\spose$ provides the backbone of the data science and machine learning revolution \citep{hey2020machine, raschka2020machine, igual2024introduction}.
It underpins the majority of machine learning pipelines, enables risk analysis \citep{hilpisch2020python}, supports medical image analysis and personalized medicine \citep{chityala2020image, imangaliyev2015personalized, mane2024human}, and optimizes manufacturing processes \citep{devi2023paper, laky2023using}.
In the financial sector, algorithmic trading now accounts for over 60% of U.S. stock trades \citep{alliedmarketresearch2023algorithmic}, with firms like Citadel Securities and Two Sigma relying on libraries such as pandas, NumPy, and scikit-learn to process petabytes of market data daily \citep{citadel_quant_interview, citadel_interview_2025, twosigma_pandas_2023, twosigma_future_pandas}.

## National Security {-}

The $\spose$ is used to inform critical government decisions, to control expensive infrastructure, and to access sensitive health and scientific data---including operating on Department of Energy (DOE) clusters \citep{ravich2020seab}.
It enables sophisticated intelligence analysis, extracting actionable insights from vast datasets \citep{coats2019aim}.
It also powers cutting-edge defense technologies, from complex simulations to target recognition algorithms, enhancing military capabilities and readiness \citep{dantas2024asapy}.

<!--
In intelligence analysis, the ecosystem's advanced data processing and machine learning capabilities enable sophisticated analytics for gathering intelligence and assessing threats, facilitating the extraction of actionable insights from vast datasets.
Moreover, the $\spose$ supports the research and development of cutting-edge defense technologies, powering complex simulations and target recognition algorithms, while its extensive libraries enable intricate modeling and data analysis essential for military applications.
-->

# Targeted Classes of Vulnerabilities

<!--
3. Articulate the targeted classes of safety, security, and/or privacy vulnerabilities to be addressed and the broader impacts of addressing them.
Discuss, as appropriate, the attack methods being targeted, including technical (e.g., vulnerabilities in code and side-channels potentially disclosing sensitive information) and/or socio-technical (e.g., insider threats, biases, wrong incentives, social engineering, and lack of compliance) methods.
Describe any known, prior instances of such attacks, risks, or potential attacks exploiting the targeted vulnerabilities.
-->

<!--
https://www.fortinet.com/resources/cyberglossary/supply-chain-attacks 
https://microtime.com/supply-chain-attacks-on-open-source-software/
https://spectralops.io/blog/5-types-of-software-supply-chain-attacks-developers-should-know/
https://www.splunk.com/en_us/blog/learn/supply-chain-attacks.html
-->

The $\spose$ faces several critical classes of vulnerabilities that, if exploited, could have profound consequences for scientific integrity, national security, and industry.
While we describe these vulnerabilities separately for clarity, it is important to recognize that, in real-world attacks, they are often exploited in combination, creating complex and multifaceted threats.
This interconnected nature of security risks underscores the need for a holistic approach to safeguarding the $\spose$, one that addresses all classes of vulnerabilities simultaneously---a task that requires substantial work beyond what volunteer efforts alone can achieve.
Below, we describe each class of vulnerability, and emphasize specific weaknesses and exploits we'd like to mitigate.

## Supply Chain Vulnerability (SCV)

The $\spose$, as an extensive network of independent, interconnected libraries, is particularly susceptible to supply chain attacks.
An attacker who successfully compromises a widely used dependency can insert malicious code that propagates throughout the ecosystem, impacting a vast array of downstream projects and users.
This risk is highlighted by the recent Ultralytics supply-chain attack, which demonstrates the potential for widespread impact through compromised dependencies \citep{pypi2024ultralytics}.

### (SCV1) Insufficient Code Signing Practices {-}

Many scientific Python projects lack cryptographic signing of software releases, exposing the ecosystem to dependency tampering and unauthorized modifications.
Attackers exploit this gap to inject malicious code through methods like typosquatting or compromising outdated packages, as demonstrated by recent supply-chain incidents.
We will develop community standards to implement cryptographic verification across dependencies, and provide tools to integrate it seamlessly into development workflows.
By ensuring package authenticity, this work will strengthen trust in scientific software critical to national research infrastructure and the global economy.

### (SCV2) Fragmented Vulnerability Tracking {-}

The $\spose$ lacks coordinated vulnerability tracking, allowing attackers to exploit outdated transitive dependencies in projects like geospatial models or medical imaging pipelines.
This gap enables attacks where malicious code persists in dependency chains for months or years, as seen in the 2024 Ultralytics breach where known vulnerabilities remained unpatched in 60% of downstream projects.
We will establish ecosystem-wide protocols for vulnerability disclosure and, through automated dependency graph analysis, prioritize critical fixes.
By closing this gap, we will protect sensitive research workflows in national laboratories and hospitals alike, while enabling safer collaboration across global open-source teams.

## Access Controls Vulnerability (ACV)

Attackers increasingly target open-source software projects using credential hijacking, where maintainer accounts are compromised through phishing attacks or password reuse, enabling malicious actors to commit code that appears legitimate.
A compromised account with broad access could be used to insert malicious code into core libraries, affecting countless downstream projects and users across scientific domains, government research, and industry applications.

### (ACV1) Poor Authentication Requirements and Auditing {-}

Privileged accounts in the $\spose$ often lack multi-factor authentication (MFA), enabling attackers to hijack credentials through phishing or password reuse and gain unauthorized access.
Furthermore, the absence of automated access audits allows such breaches to persist.
We will establish community standards requiring MFA adoption for all project administrators and implement systems to continuously review permissions across projects.
Strengthening these controls will protect sensitive data in healthcare and national security applications while fostering trust in open-source tools critical to scientific advancement.

### (ACV2) Coarse-grained Access Control {-}

The $\spose$ relies on coarse-grained permission models that grant excessive privileges to contributors, creating opportunities for accidental or malicious code modifications.
Further, overprivileged automation tokens with broad write access increase the risk of backdoor injection during automated builds and deployments.
We will collaborate with the community to implement and adopt role-based access controls, ensuring that contributors only have the permissions necessary to perform their allocated tasks.
By reducing overprivileged access, this work will safeguard sensitive research data while maintaining the collaborative ethos of open-source development.

### (ACV3) Stale Maintainer Permissions {-}

A significant vulnerability arises in the $\spose$ when maintainers retain access rights long after they have ceased active contribution, resulting in dormant accounts that expand the project's attack surface.
Attackers can exploit these inactive or unmonitored accounts to gain unauthorized entry and introduce malicious changes.
We will establish protocols for regular review and revocation of inactive contributor permissions, ensuring that only actively engaged and verified maintainers retain elevated access.
By reducing the number of stale or unnecessary privileged accounts, this work will significantly decrease the risk of account takeovers and unauthorized code changes, thereby strengthening the overall security and trustworthiness of the $\spose$.

## Insider Attacks Vulnerability (IAV)

Social engineering attacks increasingly target maintainers experiencing burnout.
Malicious actors exploit reduced vigilance due to fatigue and offer much needed "assistance", bypassing standard code review processes and introducing subtle backdoors.
The ecosystem's approach, which encourages contributions from a global community of (mostly self-selecting) volunteers, expands the potential attack surface.
This risk is compounded by a maintainer onboarding model that elevates privileges to active contributors without comprehensive background checks or identity verification.
In this environment, sleeper agents—long-term contributors who gradually introduce vulnerabilities over time—pose a particularly insidious threat.
These vulnerabilities have been starkly highlighted by recent high-profile attacks, such as the XZ Utils incident \citep{kaspersky2024xz, newman2024mystery}, a multi-year effort---likely originating from a nation-state actor---that underscores the community's vulnerability to sophisticated, patient attackers willing to establish long-term presence before executing their attacks.

### (IAV1) Poor Contributor Vetting {-}

The $\spose$’s open contribution model lacks systematic vetting of contributors, enabling attackers to gradually introduce vulnerabilities as trusted participants over months or years.
This socio-technical vulnerability allows sleeper agents and those who socially engineered accounts to bypass code review processes.
We will develop a reputation system analyzing contributors’ ecosystem-wide activity to identify anomalous behavior while preserving the openness essential to collaborative development.
By mitigating insider threats, this work will protect sensitive data in healthcare and national security applications while maintaining an open contribution model.

<!--
The ecosystem lacks a systematic way to evaluate the trustworthiness and reliability of contributors across projects.
We propose developing a web-of-trust and reputation system to help maintainers evaluate code submissions from new contributors.
Such a system would provide a more nuanced view of a contributor's history and reliability across the ecosystem, addressing some of the risks associated with an open contribution model.
-->

### (IAV2) Review Complexity and Overload {-}

The scale and interdependence of core libraries make it difficult for maintainers to fully assess risks, enabling attackers to hide malicious changes in complex codebases.
Moreover, maintainers of widely used libraries often face overwhelming review workloads, creating opportunities for attackers to insert subtle, malicious code which passes unnoticed through rushed, fatigued inspections.
We will develop automated systems to analyze contribution patterns and flag anomalies in code submissions, prioritizing high-risk changes for expert scrutiny.
By augmenting human oversight with scalable screening tools, we will safeguard critical infrastructure in academic research and industrial systems while maintaining the open collaboration vital to scientific progress.

# Development Plan

<!--
4. Provide a detailed development plan to address these vulnerabilities.
The plan should include key milestones with separate subsections pertaining to the first year and the second year of the award period.
For software-focused OSEs, describe, as appropriate, any important technical considerations such as the use of memory-safe languages and/or software bills of materials.
-->

To address critical vulnerabilities and significantly improve the safety, security, and privacy of the $\spose$, we will leverage the $\spec$ process.
In collaboration with the $\spcommunity$ we will develop, and iteratively refine, ecosystem-wide security standards and best practices, building on and improving existing efforts as needed.
Where necessary, we will also develop tools and services to help the community implement security $\spec$s effectively, paying careful attention to technical considerations such as the adoption of memory-safe languages and the generation of software bills of materials (SBOMs).

## Year 1 Milestones

In the first year, our focus will be on SPEC-driven standardization, tool prototyping, and targeted deployment of security standards and best practices.
We will start by operationalizing two existing security SPECs:

- SPEC 6 — Keys to the Castle \citep{spec6}, which provides principles and practical guidance for documenting, distributing, and managing access to restricted project resources and secrets, including privilege minimization, regular permission review, secure password storage, and the use of multi-factor authentication.

- SPEC 8 — Securing the Release Process \citep{spec8}, which establishes standards and procedures for safeguarding the software release pipeline using the Supply-chain Levels for Software Artifacts (SLSA) framework.
  SPEC 8 mandates SLSA Level 2 compliance for core projects, including cryptographic signing of packages, tamper-proof build processes, and generation of signed provenance attestations via GitHub Actions workflows.
  It integrates OpenID Connect (OIDC) for CI/CD pipeline authentication, replacing long-lived secrets with short-lived tokens, and provides templates for generating in-toto attestations to ensure verifiable traceability from source code to distributed artifacts.

In parallel, we will refine existing SPECs and draft new ones to address gaps in vulnerability management and insider threat detection.
Tooling improvements will be designed for seamless integration with the $\spp$ infrastructure, supporting reproducible builds and automated policy enforcement.
Feedback and lessons learned from pilot projects will inform further refinements, with focused attention on high-impact packages such as NumPy, SciPy, and scikit-learn to ensure ecosystem-wide applicability.

### Implementation Framework Year 1 Milestones {-}

- **Security Summit.** Host the First Scientific Python Security Summit with maintainers from core projects (NumPy, SciPy, pandas) to help guide the work.
- **Public Dashboard.** Publish a public dashboard tracking SPEC adoption and implemenation information.

### Supply Chain Vulnerability Mitigation Year 1 Milestones {-}

- **SCV1---Code Signing.** This milestone implements SPEC 8's framework for securing the release pipeline through cryptographic signing and provenance verification.
We will operationalize package integrity standards by deploying cryptographic signing workflows for scikit-image, NetworkX, and all $\sptools$.
Experience gained during implementation will inform revisions to SPEC 8, with an emphasis on simplicity and maintainer adoption.
- **SCV2---Vulnerability Management.** 
We will draft a SPEC for vulnerability management and incident response while developing a prototype federated CVE database with automated dependency graph analysis.
This system will prioritize transitive risks in projects using C/C++ extensions.

### Access Control Vulnerability Mitigation Year 1 Milestones {-}

- **ACV1---MFA Adoption.** Implement multi-factor authentication requirements for all SPEC Core Project repository owners.
This milestone codifies SPEC 6’s recommendation for two-factor authentication.
- **ACV2---Role-based Access Control.** Deploy role-based access control (RBAC) prototypes in NetworkX and scikit-image, limiting CI/CD tokens to designated workflow files.
This work operationalizes SPEC 6’s privilege minimization guidance and will serve as a model for broader RBAC adoption.
- **ACV3---Access Audits.** Develop automated access audit systems, with protocols to revoke permissions after six months of inactivity.
This milestone automates SPEC 6’s recommendation to regularly review  permissions, reducing exposure from inactive accounts.

### Insider Attack Vulnerability Mitigation Year 1 Milestones {-}

- **IAV1---Reputation System.**
We will research existing reputation systems and tools, and engage the community through the SPEC process to define requirements and use cases for a contributor reputation system.
This system will, e.g., assess developer expertise, examine networks of collaboration, and incorporate a web of trust.
We will then prototype the system, analyzing more than five years of contributor activity across ten core projects.
- **IAV2---Anomaly Detection.**
We will review existing approaches and tools for anomaly detection, and work with the community through the SPEC process to clarify needs and desired features.
Alpha versions, or configurations, of anomaly detection tools, that can also act as code review agents, will be released, with a focus on C, C++, and Cython codebases that use unsafe memory operations.

## Year 2 Milestones

For the second year, we will focus on scaling and better integration of the tools, standards, and processes developed in Year 1 to achieve widespread adoption across the ecosystem.
Our efforts will emphasize robust implementation of cryptographic signing, SBOM validation, automated vulnerability management, and advanced access controls in a broader set of projects.
We will also refine and deploy reputation and anomaly detection systems at scale, ensuring that security best practices are embedded throughout the $\spose$.
By targeting both core and domain-specific projects, we aim to establish sustainable, community-driven security practices that can be maintained and evolved beyond the award period.

### Implementation Framework Year 2 Milestones {-}

- **Security Summit.** Host the Second Scientific Python Security Summit, focusing on domain-specific stacks (bioinformatics, geospatial) to drive adoption.
- **Public Dashboard.** Expand the public dashboard to include Critical Vulnerability & Exposure (CVE) tracking and provide dependency chain risk scores.

### Supply Chain Vulnerability Mitigation Year 2 Milestones {-}

- **SCV1---Code Signing and SBOM Validation.** Achieve 100% cryptographic signing adoption across $\spcore$.
Use the SPEC process to extend code signing practices for SBOM validation and integrate SBOM validation into PyPI and conda-forge pipelines.
- **SCV2---Vulnerability Management.** Provide automated notifications to downstream users regarding vulnerabilities.
Integrate with existing dependency tracking tools to ensure comprehensive vulnerability detection and enable efficient patch prioritization for high-risk dependencies.
Automate CVE patch recommendations for nested dependencies in projects using legacy C or Fortran code.

### Access Control Vulnerability Mitigation Year 2 Milestones {-}

- **ACV1---MFA Adoption.** Extend MFA adoption to all contributors with write access in the top 20 $\spose$ projects.
- **ACV2---Role-based Access Control.** Scale RBAC implementation to 10 projects, including those with GPU or CUDA kernels requiring heightened privilege controls.
- **ACV3---Access Audits.** Implement quarterly automated access audits for all projects with more than 10 contributors, with the goal of reducing stale permissions by 70%.

### Insider Attack Vulnerability Mitigation Year 2 Milestones {-}

- **IAV1---Reputation System.**
We will further develop and deploy the contributor reputation system across the entire ecosystem, enabling maintainers to flag contributors exhibiting anomalous or high-risk activity.
- **IAV2---Anomaly Detection.**
We will refine and integrate anomaly detection tools into CI/CD workflows for projects utilizing unsafe memory operations, with the goal of reducing code review workloads.
These tools will be deployed as automated checks for maintainers of high-risk packages, such as those handling cryptography or parallel computing.
We will explore partnering with companies to train machine learning models for flagging suspicious patterns, such as obfuscated code or unexpected use of subprocesses, based on historical $\spose$ pull requests.

<!--
The Project Description also must contain, as a separate section within the narrative, a section labeled “Broader Impacts”. This section should provide a discussion of the broader impacts of the proposed activities. Broader impacts may be accomplished through the research itself, through the activities that are directly related to specific research projects, or through activities that are supported by, but are complementary to the project. NSF values the advancement of scientific knowledge and activities that contribute to the achievement of societally relevant outcomes. Such outcomes include, but are not limited to: full participation of women, persons with disabilities, and underrepresented minorities in science, technology, engineering, and mathematics (STEM); improved STEM education and educator development at any level; increased public scientific literacy and public engagement with science and technology; improved well-being of individuals in society; development of a diverse, globally competitive STEM workforce; increased partnerships between academia, industry, and others; improved national security; increased economic competitiveness of the U.S.; use of science and technology to inform public policy; and enhanced infrastructure for research and education. These examples of societally relevant outcomes should not be considered either comprehensive or prescriptive. Proposers may include appropriate outcomes not covered by these examples.
-->
\vspace{0.7em}
\noindent\emph{Broader Impacts}
\vspace{0.2em}

\noindent This initiative will systematically address critical vulnerabilities in the $\spose$ through the development and adoption of community-driven security standards, tools, and processes.
By aligning our activities with the OpenSSF Open Source Software Security Mobilization Plan and CISA’s Open Source Software Security Roadmap, we will ensure that the scientific Python ecosystem meets the highest standards of software security and resilience.
Integration of frameworks such as OpenSSF’s SLSA and federal cybersecurity mandates (e.g., NIST SSDF, CISA’s Secure Software Attestation) into the $\spec$ process will establish replicable security models for open-source ecosystems worldwide.

By addressing these vulnerabilities, the project will significantly enhance the reliability, integrity, and trustworthiness of scientific software, which underpins research, education, and innovation across numerous scientific and engineering disciplines.
The resulting improvements will help safeguard national security and critical infrastructure, as the $\spose$ is widely used in government, industry, and research settings.
This work will also foster best practices in open-source development and vulnerability management, serving as a model for other software communities and contributing to improved economic competitiveness, resilience, and technological leadership for the United States.

Increased partnerships between academia, industry, government, and non-profit organizations will be facilitated through the collaborative nature of the project, promoting knowledge transfer and shared responsibility for open-source security.
Ultimately, this initiative will not only secure the $\spose$, but will also contribute to a more robust and inclusive infrastructure for research and education, enabling trustworthy scientific and technological advancements that benefit society as a whole.

# Evaluation Plan

<!--
5. Describe an evaluation plan to assess the efficacy of the proposed work and the achievement of key milestones.
The plan should include metrics for measuring success and any tools or benchmarks (if applicable) to be used during the evaluation.
Ideally, the evaluation plan will include testing/validation opportunities for existing users.
-->

To assess the efficacy of our work in enhancing the safety, security, and privacy of the $\spose$, we will implement a comprehensive evaluation and accountability strategy:

## $\spsecurity$ Oversight {-}

We will establish a $\spsecurity$ by recruiting a diverse group of developers and maintainers from across the ecosystem to provide ongoing technical guidance and oversight of our security initiatives.
This group will hold monthly meetings to evaluate progress, discuss challenges, and suggest directions to explore, ensuring that our efforts remain aligned with community needs and best practices.
Based on what we learn in these meetings, we will develop sustainable strategies for the long-term implementation and maintenance of security measures beyond the grant period.

In short, the $\spsecurity$ provides technical guidance through focused developer feedback, as well as long term contiguity for our efforts.

## $\spec$ Process {-}

The $\spec$ Process is designed to ensure community input in the writing of and support for the implementation of proposed security initiatives.
The $\specsteering$ ensures community ownership of decision-making on $\spec$s, fostering broad acceptance across the ecosystem.
Endorsement from $\spcore$ projects provides a clear indication of the acceptance of our security initiatives within the core ecosystem.
Project adoption demonstrates the reach and impact of our security measures beyond the core projects.
The $\toolsteering$ ensures we are creating common resources that address needs according to community standards, procedures, and practices.
We aim to have each $\spec$'s security measures adopted by three projects within its first year, and seven projects by the end of its second.
Additionally, we aim to have each $\spec$ *endorsed* by two core projects within its first year, and five by the end of its second.
To make our efforts more visible, and to ensure broad endorsement of our SPECs, we will foster increased participation by various domain stacks in the SPEC process; their participation will be a clear signal that the work is gaining traction.

In short, the SPEC process provides general community accountability and transparent insight into the reach and impact of our security measures across the $\spose$.

## External Advisory Board {-}

We will form an external advisory board with representatives from diverse $\spose$ end-user organizations.
This board will include members from domain-specific projects (e.g., IRIS-HEP and Vera Rubin Observatory), industry (e.g., Google and NVIDIA), national computing facilities (e.g., San Diego Supercomputer Center and TrustedCI), <!-- and funding agencies () --> and open-source foundations (e.g., PSF and OpenSSF), providing an authoratitive perspective on the impact of our work, rooted in day-to-day experience.

We will conduct quarterly virtual meetings with this board to ensure that our work aligns with stakeholder needs and expectations, allowing for timely adjustments to be made to our approach.
Through these interactions, we will collect and analyze feedback to measure the perceived value and real-world impact of our implemented security measures.

In short, the External Advisory Board provides high-level strategic feedback on our work.

# Conclusion

<!--
6. Provide information to substantiate compliance with the eligibility requirements (See Section IV above). ?? What to do?
-->
The $\spose$ stands at a critical juncture, facing unprecedented security challenges that demand urgent attention.
The proposed initiative is a coordinated, ecosystem-wide effort to comprehensively address critical safety, security, and privacy vulnerabilities in the $\spose$.
This ambitious undertaking demands not only technical expertise but also the ability to mobilize and unite a broad coalition of developer communities spanning multiple scientific domains and industry sectors.
\vspace{0.5em}
\newline
\indent \textbf{PI Millman}, Executive Director of UC Berkeley's Open Source Program Office, brings 20+ years of leadership in open-source security and scientific computing.
As cofounder of NumFOCUS \citep{numfocus} and former NumPy/SciPy release manager (2007–2009), he established governance models for foundational $\spose$ projects.
He was an early contributor to scikit-learn and cofounder of the Neuroimaging in Python (NIPY) project, advancing open and reproducible research in both machine learning and neuroimaging domains.
His cybersecurity expertise stems from roles as UC Berkeley’s Neuroscience Institute Director of Computing (designing secure infrastructure for sensitive data) and service on the Campus Information Security and Privacy Committee (2006–2010).
Millman is a maintainer and the release manager of NetworkX, scikit-image, pygraphviz, numpydoc, and many other packages.

**Co-PI van der Walt**, Research Scientist at the Berkeley Institute for Data Science, combines deep technical knowledge with ecosystem-wide coordination.
A founding developer of scikit-image and coauthor of *Elegant SciPy*, he serves on the NumPy Steering Committee and co-chairs the Python Software Foundation’s Scientific Working Group.
His contributions span key $\spose$ projects including NumPy, SciPy, and NetworkX, with a focus on API design and community-driven governance.
As NumFOCUS Emeritus Director, he bridges academic research and industrial adoption of $\spose$ tools.

**Project Manager Whitaker**, Executive Director of the Berkeley Institute for Data Science, brings expertise in building welcoming and collaborative open-source communities.
Founder of *The Turing Way*—a best-practices handbook for ethical, reproducible data science—she previously led AI governance initiatives at the Alan Turing Institute.
Her work at BIDS focuses on interdisciplinary collaboration, aligning with this project’s need to harmonize security protocols across scientific domains.
\vspace{0.5em}
\newline
\indent The team’s proven ability to coordinate cross-project development through the $\spp$ ensures robust execution of this initiative.
By leveraging their technical authority, institutional partnerships, and community trust, they will establish a secure foundation for global scientific computing.

<!--
The success of this project will not only secure essential scientific infrastructure but also solidify $\spose$'s position at the forefront of open-source innovation and security.
By implementing our comprehensive plans and rigorously evaluating their effectiveness, we aim to significantly enhance the security posture of the $\spose$, ensuring its continued reliability and trustworthiness for the global scientific community.

In conclusion, this project is not just important—it is critical for the future of scientific computing. With the exact right team in place and a clear, actionable plan, we are confident in our ability to successfully address the security challenges facing the $\spose$ and set a new standard for open-source security in scientific computing.

The proposed project demands a coordinated, ecosystem-wide effort to comprehensively address critical safety, security, and privacy vulnerabilities in the $\spose$.
This requires not only technical expertise but also the ability to mobilize and unite a diverse community of developers, researchers, and institutions.
The PIs, with their extensive experience and leadership roles within the ecosystem, are uniquely positioned globally to spearhead this crucial work.
Their track record with $\spp$ demonstrates their capacity to foster collaboration, coordinate cross-project development, and drive meaningful change across the $\spose$.
By leveraging their established networks and deep understanding of the ecosystem's complexities, the PIs are poised to lead this transformative effort, ensuring a more secure and resilient foundation for scientific computing worldwide.

This project represents a critical opportunity for the $\spp$ to lead a transformative effort in open-source security.
Its success will not only secure essential scientific infrastructure but also solidify $\spose$ position at the forefront of open-source innovation and security.
By implementing these plans and rigorously evaluating their effectiveness, we aim to significantly enhance the security posture of the $\spose$, ensuring its continued reliability and trustworthiness for the global scientific community.
-->
