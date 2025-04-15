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
$\spp$ has grown rapidly, with 80 team members and 324 followers for our GitHub organization, 29 affiliated Python libraries in our nightly wheel-hosting infrastructure, 331 subscribers to our YouTube channel, 471 members on our Discourse forum, and 675 members on our Discord server.
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
While GitHub stars aren't definitive measures, it is worth noting that four of the $\spcore$ are in the top 500 repositories on GitHub according to stars \citep{gitstar_ranking}.
The maintainers of each of the $\spcore$ has agreed to become involved with the $\spec$ process; however, many more projects small and large participate and even more adopt the various $\spec$s for their own projects.

In addition to these projects, we also develop and maintain of a growing collection of **$\sptools$**---overseen by a $\toolsteering$---that help projects across the ecosystem, including those supporting the $\spec$s.
<!--
$\spp$ supports on the order of fifteen tools, ranging from release management to community organization, and two services: a discussion forum and web analytics.
-->
The growing list of developer tools includes
\begin{itemize}
\item \textbf{cookie} (334 GH stars, 56 GH forks) \citep{scientific_python_cookie_github}, a template generator for new Python projects based on the Scientific Python Developer Guide. It ensures that new repositories adhere to best practices in development, testing, and deployment.
\item \textbf{repo-review} (72 GH stars, 6 GH forks) \citep{repo_review_github}, a framework for evaluating repositories against predefined guidelines from the Scientific Python Developer Guide. By identifying configuration issues and enforcing compliance with best practices, it helps maintain high standards across the ecosystem.
\item \textbf{lazy-loader} (163 GH stars, 22 GH forks) \citep{lazy_loader_github}, a library that implements lazy loading for Python submodules and functions, reducing import times and memory usage by loading components only when accessed.
\item \textbf{pytest-doctestplus} (104 GH stars, 40 GH forks) \citep{pytest_doctestplus_github}, a plugin for the pytest framework that extends doctest capabilities to support advanced testing of documentation files.
\item \textbf{spin} (109 GH stars, 21 GH forks) \citep{spin_github}, a developer tool designed to simplify common build and development tasks for scientific Python libraries. It abstracts complex command-line operations into user-friendly commands, reducing human error and ensuring consistent workflows across projects.
\end{itemize}

Through these and other community initiatives, the $\spp$ fosters interoperability, reduces maintenance burden, and provides a more cohesive experience for users.

# National, Societal, and Economic Impact

<!--
    2. Describe the national/societal/economic impacts of the OSE.
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

# Targeted Classes of Vulnerabilities and Broader Impacts

<!--
    3. Articulate the targeted classes of safety, security, and/or privacy vulnerabilities to be addressed and the broader impacts of addressing them. Discuss, as appropriate, the potential attacks that could take advantage of these vulnerabilities.
-->

Despite its crucial role, the $\spose$ faces several critical classes of vulnerabilities that, if exploited, could have profound consequences for scientific integrity, national security, and industry.
While we have identified these vulnerabilities separately for clarity, it is crucial to recognize that, in real-world attacks, these vulnerabilities are exploited in combination, creating complex and multifaceted threats.
This interconnected nature of security risks underscores the need for a holistic approach to safeguarding the $\spose$, one that addresses all vulnerabilities simultaneously—a task that requires substantial work beyond what volunteer efforts alone can achieve.

## Supply Chain (Vulnerability) {-}

The $\spose$, as an extensive network of independent, interconnected libraries, is particularly susceptible to supply chain attacks.
An attacker could potentially compromise a widely-used dependency, inserting malicious code that would propagate throughout the ecosystem.
Many scientific Python projects currently lack robust cryptographic signing and verification processes for releases, leaving them vulnerable to tampering and unauthorized modifications.
The ecosystem also lacks a centralized system for reporting, tracking, and responding to vulnerabilities across projects.
These risks have been clearly illustrated by the recent Ultralytics supply-chain attack, which demonstrated the potential for widespread impact through compromised dependencies \citep{pypi2024ultralytics}.

## Access Controls (Vulnerability) {-}

Current contributor management systems within the $\spose$ often lack granular access controls, with access granting and revocation typically performed manually and in an ad-hoc manner.
This shortcoming potentially exposes projects to insider threats and unauthorized code changes.
A compromised account with broad access could be used to insert malicious code into core libraries, affecting countless downstream projects and users.
The absence of multi-factor authentication and automated access audits further exacerbates these risks.
Maintainers frequently retain access rights long after they have ceased active contribution, unnecessarily expanding the potential attack surface.
Recent attacks exploiting compromised maintainer credentials demonstrate the severe consequences of inadequate access controls \citep{checkmarx2024python}.

## Insider Attacks (Vulnerability) {-}

The ecosystem's approach, which encourages contributions from a global community of (mostly self-selecting) volunteers, expands the potential attack surface.
This risk is compounded by a maintainer onboarding model that often elevates privileges to active contributors without comprehensive vetting.
The reliance on an over-worked volunteer developer community can lead to reduced vigilance and oversight.
The complexity and breadth of some core libraries, and how they are used in combination, makes it challenging for any single individual to have a comprehensive understanding of risks, potentially allowing subtle malicious changes to go unnoticed.
These risks have been starkly highlighted by recent high-profile attacks, such as the XZ incident \citep{kaspersky2024xz, newman2024mystery}, a multi-year effort likely originating from a nation-state actor.


## Broader Impacts of Mitigation {-}

By addressing the above classes of vulnerabilities, we will not only secure the $\spose$, but will also set new standards for open-source security in scientific computing.
The broader impact of this work therefore extends beyond the immediate ecosystem, establishing best practices in open-source development, enhancing the reliability of scientific software worldwide, and ultimately contributing to more secure and trustworthy scientific advancements across all disciplines.

# Development Plan

<!--
    4. Briefly describe a development plan to address these vulnerabilities.
-->

Establishing comprehensive security measures requires substantial technical and socio-technical work beyond what volunteer efforts can achieve.
Yet, crucially, it must integrate community feedback.
To address critical vulnerabilities and significantly enhance the safety, security, and privacy of the $\spose$, we will leverage the $\spec$ process.
In collaboration with the $\spcommunity$, we will develop ecosystem-wide security standards and best practices, leveraging and improving existing efforts as appropriate.
As necessary, we will develop tools and services to help the community implement security $\spec$s effectively.

The SPEC process has already demonstrated its effectiveness in addressing ecosystem-wide security challenges through initiatives like SPEC 6 — Keys to the Castle \citep{spec6}, published in February 2024; and SPEC 8 — Securing the Release Process \citep{spec8}, developed during the May 2024 $\spp$ Developer Summit.

<!--
The SPEC process has already demonstrated its effectiveness in addressing ecosystem-wide security challenges through initiatives like SPEC 6 — Keys to the Castle \citep{spec6}, which tackles access control vulnerabilities, and SPEC 8 — Securing the Release Process \citep{spec8}, which addresses supply chain security.
While these early successes show community recognition of and engagement with cross-project security work, the scope and complexity of the identified vulnerabilities require sustained, dedicated effort beyond what volunteer contributions alone can achieve.
-->

<!--For each threat category listed below, we aim to have one or more $\spec$s endorsed by at least two $\spcore$ projects and adopted by three or more ecosystem projects in the first year.
By the second year, we plan to increase this to at least seven $\spcore$ endorsements and adoption by ten or more ecosystem projects.-->

To ensure the widespread adoption of security $\spec$s, we will organize a series of $\spp$ Developer Summits that include hands-on workshops to help projects adopt new security recommendations, processes, and tooling.
We will also publicize the security $\spec$s via our various communication and outreach channels as well as at annual conferences.

## Supply Chain (Remediation) {-}

We will work toward implementing a coordinated vulnerability disclosure, audit, and response process, including a centralized system for reporting and tracking vulnerabilities.
We will develop protocols for responsible disclosure and coordination of fixes across affected projects, and implement an automated notification system for affected downstream projects and users.
To improve cryptographic practices, we will work with the community to develop $\spec$s for cryptographically signing and verifying software dependencies.
This includes developing tools to simplify the signing process, and integrating verification checks into package managers and CI/CD pipelines.

## Access Control (Remediation) {-}

Together with the $\spcommunity$, we will design and implement $\spec$s around fine-grained permissions models for project repositories.
This model will be tailored to the unique needs of open-source scientific projects, balancing security with the collaborative nature of our community.
We will develop recommendations around passkeys and multi-factor authentication, and provide mechanisms to perform automated access audits and anomaly detection.
This will help maintainers monitor and manage access more effectively.

## Insider Attacks (Remediation) {-}

The ecosystem lacks a systematic way to evaluate the trustworthiness and reliability of contributors across projects.
We propose developing a web-of-trust and reputation system to help maintainers evaluate code submissions from new contributors.
Such a system would provide a more nuanced view of a contributor's history and reliability across the ecosystem, addressing some of the risks associated with an open contribution model.
To address the challenge of overworked volunteer developers who fail to notice adverse behavior, and enhance their ability to focus on critical code review, we will collaborate on $\spec$s for (possibly AI-assisted) anomaly detection systems.
These systems will analyze contribution patterns and flag potential security issues in both existing code and new pull requests, helping to identify subtle malicious changes in complex codebases.
By automating initial screening processes, we aim to allow for more efficient allocation of human resources to areas requiring expert attention, addressing the issue of reduced vigilance due to volunteer overload.

# Evaluation Plan

<!--
    5. Briefly describe an evaluation plan to assess the efficacy of the work.
-->

To assess the efficacy of our work in enhancing the safety, security, and privacy of the $\spose$, we will implement a comprehensive evaluation strategy:

## $\spec$ Process {-}

The $\spec$ Process is designed to ensure community support for proposed security initiatives.
The $\specsteering$ ensures community ownership of decision-making on $\spec$s, fostering broad acceptance across the ecosystem.
Endorsement from $\spcore$ projects provides a clear indication of the acceptance and integration of our security initiatives within the core ecosystem.
Project adoption demonstrates the reach and impact of our security measures beyond the core projects.
The $\toolsteering$ ensures we are creating common resources that address needs according to community standards, procedures, and practices.
We aim to have each $\spec$'s security measures adopted by three within its first year, and seven by the end of its second.
Additionally, we aim to have each $\spec$ *endorsed* by two core projects within its first year, and five by the end of its second.
These metrics provide a clear indicator of the reach and impact our security measures have across the $\spose$.

## $\spsecurity$ Oversight {-}

We will establish a $\spsecurity$ by recruiting a diverse group of developers and maintainers from across the ecosystem to provide ongoing guidance and oversight of our security initiatives.
This group will hold monthly meetings to evaluate progress, discuss challenges, and suggest directions to explore, ensuring that our efforts remain aligned with community needs and best practices.
Based on what we learn in these meetings, we will develop sustainable strategies for the long-term implementation and maintenance of security measures beyond the grant period.

## External Advisory Board {-}

We will form an external advisory board with representatives from diverse $\spose$ end-user organizations.
This board will include members from domain-specific projects (e.g., IRIS-HEP and Vera Rubin Observatory), industry (e.g., Google and CZ BioHub), national computing facilities (e.g., San Diego Supercomputer Center and TrustedCI), <!-- and funding agencies () --> and open-source foundations (e.g., PSF and OpenSSF), providing an authoratitive perspective on the impact of our mitigations and activities, rooted in day-to-day experience.

We will conduct quarterly virtual meetings with this board to ensure that our work aligns with stakeholder needs and expectations, allowing for timely adjustments to our approach as necessary.
Through these interactions, we will collect and analyze feedback to measure the perceived value and real-world impact of our implemented security measures.

# Conclusion

<!--
    6. Provide information to substantiate compliance with the eligibility requirements.
-->

<!--
The Scientific Python Open Source Ecosystem ($\spose$) stands at a critical juncture, facing unprecedented security challenges that demand urgent attention.
This project represents a vital opportunity to lead a transformative effort in open-source security, with far-reaching implications for scientific research, education, and industry worldwide.
-->

The proposed initiative is a coordinated, ecosystem-wide effort to comprehensively address critical safety, security, and privacy vulnerabilities in the $\spose$.
This ambitious undertaking demands not only technical expertise but also the ability to mobilize and unite a diverse community of developers, researchers, and institutions.

<!--
Our team is uniquely qualified to spearhead this crucial work:
-->

**PI Millman**, as the executive director of UC Berkeley's Open Source Program Office, brings over two decades of experience in information security, scientific computing, and open-source.
<!--
He cofounded the Neuroimaging in Python project \citep{millman2007analysis} and was the NumPy and SciPy release manager from 2007 to 2009.
He served on the SciPy steering committee from 2007 to 2010 and was an early contributor to scikit-learn.
Millman cofounded NumFOCUS (a non-profit providing legal and administrative support for some ecosystem projects) \citep{numfcus} and served on its board from 2011 to 2015.
He is the release manager of NetworkX, scikit-image, pygraphviz, numpydoc, and many other packages.
With over a decade of experience in information security, Millman served on UC Berkeley's Campus Information Security and Privacy Committee from 2006 to 2010, providing oversight for campus-wide security policies and initiatives.
As the former director of computing for UC Berkeley's Neuroscience Institute, he led efforts in designing secure computational infrastructure for sensitive research data.
Millman has presented on various security topics at conferences, including cryptography, automated security policy implementation, and mandatory access controls.
His expertise in computer security, combined with his extensive experience in scientific computing, uniquely positions him to address the critical security challenges facing the Scientific Python ecosystem.
-->
His service on UC Berkeley's Campus Information Security and Privacy Committee, leadership in designing secure computational infrastructure for sensitive research data, and extensive contributions to the scientific Python ecosystem position him ideally to address the complex security challenges facing $\spose$.

**Co-PI van der Walt**, a research scientist at the Berkeley Institute for Data Science, complements this expertise with his deep involvement in the ecosystem.
His roles on the NumPy steering committee, as emeritus director of NumFOCUS, and as core contributor to numerous packages ensure a comprehensive understanding of the ecosystem's technical and social landscape.
<!--
He served on the NumFOCUS board from 2016 to 2023 and is the founder of scikit-image and co-author of Elegant SciPy.
Van der Walt contributes to numerous packages in the ecosystem, including NumPy, SciPy, scikit-image, and NetworkX.
He serves on the NumPy steering committee and co-chairs the PSF's Scientific Working Group.
-->
\vspace{0.5em}
\newline
\indent Further, the PIs' track record with the $\spp$ demonstrates their capacity to foster collaboration, coordinate cross-project development, and drive meaningful change across the $\spose$.
By leveraging their established networks and deep understanding of the ecosystem's complexities, they are well positioned to lead this transformative effort that will ensure a more secure and resilient foundation for scientific computing worldwide.

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
