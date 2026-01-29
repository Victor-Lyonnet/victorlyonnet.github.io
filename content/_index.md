---
title: ''
summary: ''
date: 2024-01-01
type: landing

design:
  spacing: '0.5rem'

sections:
  - block: markdown
    id: about
    content:
      title: ''
      subtitle: ''
      text: |-
        <style>
        /* Override Hugo Blox's narrow prose width - target all possible containers */
        .max-w-prose,
        .hbb-section .flex,
        .blox-markdown .flex {
          max-width: 950px !important;
          width: 100% !important;
        }

        /* Bio section */
        .bio-container { display: flex; align-items: flex-start; gap: 2.5rem; max-width: 950px; margin: 0 auto; padding: 2rem 1.5rem 1.5rem 1.5rem; }
        .bio-photo { flex-shrink: 0; }
        .bio-photo img { width: 180px; height: 180px; border-radius: 50%; object-fit: cover; object-position: center 20%; box-shadow: 0 4px 12px rgba(0,0,0,0.15); }
        .bio-content { flex: 1; }
        .bio-name { font-size: 2.5rem; font-weight: 700; color: #00274C; margin: 0 0 0.25rem 0; }
        .bio-title { font-size: 1.4rem; color: #555; margin: 0 0 0.5rem 0; }
        .bio-affiliation { font-size: 1.2rem; color: #666; margin: 0 0 1rem 0; }
        .bio-affiliation a { color: #00274C; text-decoration: none; }
        .bio-text { font-size: 1.15rem; line-height: 1.6; color: #333; }
        .bio-text p { margin: 0 0 0.75rem 0; }
        .bio-buttons { margin-top: 1.25rem; display: flex; gap: 0.75rem; flex-wrap: wrap; }
        .bio-btn { display: inline-block; padding: 0.6rem 1.4rem; background: #00274C; color: white !important; text-decoration: none; border-radius: 4px; font-size: 1.1rem; font-weight: 500; }
        .bio-btn:hover { background: #001a33; }
        .bio-contact { margin-top: 1rem; font-size: 1.1rem; }
        .bio-contact a { color: #00274C; text-decoration: none; }

        /* Responsive - mobile */
        @media (max-width: 600px) {
          .bio-container { flex-direction: column; align-items: center; text-align: center; padding: 0.5rem 1rem 1.5rem 1rem; }
          .bio-buttons { justify-content: center; }
        }

        /* Section styling - consistent throughout */
        .section-container { width: 100%; max-width: 950px; margin: 0 auto; padding: 1.5rem 1.5rem; }
        
        /* Force prose containers to be full width */
        .prose {
          max-width: 950px !important;
          width: 100% !important;
        }
        .section-title { font-size: 1.85rem; font-weight: 600; color: #00274C; margin: 0 0 1rem 0; padding-bottom: 0.4rem; border-bottom: 3px solid #FFCB05; }

        /* Paper styling */
        .paper-entry { margin-bottom: 1.1rem; padding-bottom: 0.85rem; border-bottom: 1px solid #eee; }
        .paper-title { font-weight: 600; font-size: 1.25rem; color: #00274C; }
        .paper-title::before { content: "•"; margin-right: 0.5rem; color: #00274C; }
        .paper-title a { color: #00274C; text-decoration: none; }
        .paper-title a:hover { color: #FFCB05; }
        .paper-authors { color: #555; font-size: 1.1rem; margin: 0.2rem 0; }
        .paper-venue { font-size: 1.1rem; margin: 0.2rem 0; font-style: italic; font-weight: 600; color: #444; }
        .paper-venue .venue-status { font-style: normal; color: #666; }
        .paper-links { margin-top: 0.4rem; font-size: 1rem; }
        .paper-links a { color: #00274C; margin-right: 0.75rem; text-decoration: none; border-bottom: 1px dotted #00274C; }
        .paper-links a:hover { color: #FFCB05; }
        details { margin-top: 0.4rem; }
        details summary { cursor: pointer; color: #00274C; font-size: 1rem; font-weight: 500; }
        details summary:hover { color: #FFCB05; }
        details[open] summary { margin-bottom: 0.35rem; }
        details p { margin: 0; font-size: 1.05rem; color: #444; padding-left: 0.75rem; border-left: 2px solid #FFCB05; }
        .subsection-header { font-size: 1.35rem; font-weight: 600; color: #00274C; margin: 2.5rem 0 0.85rem 0; }
        .subsection-header:first-of-type { margin-top: 0; }  /* No extra margin for first subsection (Publications) */

        /* Teaching styling */
        .teaching-section { margin-bottom: 1.1rem; }
        .teaching-school { font-weight: 600; font-size: 1.25rem; color: #00274C; margin-bottom: 0.35rem; }
        .teaching-courses { margin: 0; padding-left: 1.3rem; }
        .teaching-courses li { margin-bottom: 0.25rem; font-size: 1.1rem !important; color: #333; }

        /* Desktop - smaller fonts (MUST be at end to override base styles) */
        @media (min-width: 1024px) {
          .bio-name { font-size: 1.8rem !important; }
          .bio-title { font-size: 1rem !important; }
          .bio-affiliation { font-size: 0.95rem !important; }
          .bio-text { font-size: 1rem !important; }
          .bio-btn { font-size: 1rem !important; padding: 0.5rem 1.2rem; }
          .bio-contact { font-size: 1rem !important; }
          .section-title { font-size: 1.2rem !important; }
          .subsection-header { font-size: 0.95rem !important; }
          .paper-title { font-size: 0.9rem !important; }
          .paper-authors { font-size: 0.82rem !important; }
          .paper-venue { font-size: 0.82rem !important; }
          .paper-links { font-size: 0.75rem !important; }
          details summary { font-size: 0.75rem !important; }
          details p { font-size: 0.78rem !important; }
          .teaching-school { font-size: 0.9rem !important; }
          .teaching-courses li { font-size: 0.82rem !important; }
        }
        </style>

        <div class="bio-container">
          <div class="bio-photo">
            <img src="/media/authors/me.jpg" alt="Victor Lyonnet">
          </div>
          <div class="bio-content">
            <h1 class="bio-name">Victor Lyonnet</h1>
            <p class="bio-title">Assistant Professor of Finance</p>
            <p class="bio-affiliation" style="color: #00274C;">University of Michigan Ross School of Business</p>
            <div class="bio-text">
              <p>I am an Assistant Professor of Finance at the University of Michigan Ross School of Business, where I hold the Michael R. and Mary Kay Hallman Fellowship.</p>
              <p>I received my PhD in economics from École Polytechnique (France).</p>
              <p>My research interests include entrepreneurship, financial intermediation, corporate finance, and insurance.</p>
            </div>
            <div class="bio-buttons">
              <a href="/uploads/cv.pdf" class="bio-btn" target="_blank" rel="noopener noreferrer">Download CV</a>
            </div>
            <div class="bio-contact">
              Contact: <a href="mailto:vlyonnet@umich.edu">vlyonnet@umich.edu</a>
            </div>
          </div>
        </div>

    design:
      columns: '1'
      spacing:
        padding: ["1rem", "0", "0", "0"]

  - block: markdown
    id: research
    content:
      title: ''
      subtitle: ''
      text: |-
        <div class="section-container">
        <h2 class="section-title">Research</h2>

        <div class="subsection-header">Publications</div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://academic.oup.com/rfs/advance-article-abstract/doi/10.1093/rfs/hhaf086/8287228" target="_blank" rel="noopener noreferrer">Why do Traditional and Shadow Banks Coexist?</a></div>
        <div class="paper-authors">Lead author, with Edouard Chrétien</div>
        <div class="paper-venue">Review of Financial Studies <span class="venue-status">(forthcoming)</span></div>
        <details>
        <summary>Abstract</summary>
        <p>Traditional and shadow banks interacted in similar ways in the 2007 and COVID-19 crises, when both assets and liabilities flew out of shadow banks and into traditional banks. We explain these facts in a model of the coexistence of traditional and shadow banks in which liabilities and assets flow from the former to the latter in good times, avoiding regulation, and move the other way in a crisis, alleviating fire sales. The model sheds light on how regulations for traditional banks have (unintended) consequences on the shadow banking sector.</p>
        </details>
        </div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://academic.oup.com/rfs/advance-article/doi/10.1093/rfs/hhaf004/7965908" target="_blank" rel="noopener noreferrer">Build or Buy? Human Capital and Corporate Diversification</a></div>
        <div class="paper-authors">with Paul Beaumont and Camille Hébert</div>
        <div class="paper-venue">Review of Financial Studies, 2025</div>
        <div class="paper-links">
        <a href="https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/rfs/38/5/10.1093_rfs_hhaf004/3/hhaf004_supplementary_data.pdf" target="_blank" rel="noopener noreferrer">Internet Appendix</a>
        <a href="https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/GL9BIM" target="_blank" rel="noopener noreferrer">Replication Code</a>
        </div>
        <details>
        <summary>Abstract</summary>
        <p>Firms enter new sectors by either building on their resources or buying existing companies. Using French administrative data, we propose a measure of human capital distance between a firm and a sector of entry. Using a shift-share instrument, we show that firms build in close sectors and buy in distant sectors in terms of human capital distance. Firms build by hiring new workers, which becomes increasingly costly in distant sectors as it requires not only hiring more workers but also having more organizational capital to integrate these workers. Hence, firms buy in distant sectors to acquire already operational human capital.</p>
        </details>
        </div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://www.aeaweb.org/articles?id=10.1257/pandp.20231120" target="_blank" rel="noopener noreferrer">Stereotypes About Successful Entrepreneurs</a></div>
        <div class="paper-authors">with Léa Stern</div>
        <div class="paper-venue">AER Papers & Proceedings, 2023</div>
        <div class="paper-links">
        <a href="https://www.openicpsr.org/openicpsr/project/190484/version/V1/view" target="_blank" rel="noopener noreferrer">Replication Code</a>
        </div>
        <details>
        <summary>Abstract</summary>
        <p>What comes to mind when thinking about a successful entrepreneur? Belief formation models suggest that what comes to mind is an oversimplified picture of the characteristics of successful entrepreneurs—that is, stereotypes about successful entrepreneurs. Using French administrative data on 48,767 new firms, we show that some characteristics are stereotypical of success and have distributions that can generate miscalibrated beliefs. To illustrate how stereotypical thinking can lead to biased assessments, we report the discrepancies between the implied fraction of successful entrepreneurs under Bayesian versus stereotypical thinking for several stereotypes. We discuss the consequences of stereotyping for venture capital allocation.</p>
        </details>
        </div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://academic.oup.com/rfs/advance-article/doi/10.1093/rfs/hhac054/6674522" target="_blank" rel="noopener noreferrer">Can Risk be Shared Across Investor Cohorts? Evidence from a Popular Savings Product</a></div>
        <div class="paper-authors">with Johan Hombert</div>
        <div class="paper-venue">Review of Financial Studies, 2022</div>
        <div class="paper-links">
        <a href="https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/rfs/35/12/10.1093_rfs_hhac054/5/hhac054_supplementary_data.pdf" target="_blank" rel="noopener noreferrer">Internet Appendix</a>
        <a href="https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi%3A10.7910%2FDVN%2F4ZS5QI" target="_blank" rel="noopener noreferrer">Replication Code</a>
        </div>
        <details>
        <summary>Abstract</summary>
        <p>We study how retail savings products can share market risk across investor cohorts, thereby completing financial markets. Financial intermediaries smooth returns by varying reserves, which are passed on between successive investor cohorts, thereby redistributing wealth across cohorts. Using data on euro contracts sold by life insurers in France, we estimate this redistribution to be large: 0.8% of GDP. We develop and provide evidence for a model in which low investor sophistication, while leading to individually suboptimal decisions, improves risk sharing by allowing intercohort risk sharing.</p>
        </details>
        </div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://onlinelibrary.wiley.com/doi/10.1111/jmcb.12966" target="_blank" rel="noopener noreferrer">Invoicing Currency and Financial Hedging</a></div>
        <div class="paper-authors">with Julien Martin and Isabelle Méjean</div>
        <div class="paper-venue">Journal of Money, Credit and Banking, 2022</div>
        <div class="paper-links">
        <a href="http://www.julienmartin.eu/papers/hedgingweb_appendix.pdf" target="_blank" rel="noopener noreferrer">Internet Appendix</a>
        </div>
        <details>
        <summary>Abstract</summary>
        <p>We examine the link between exporters' currency choices and their use of financial hedging instruments. Large firms are more likely to use hedging instruments, especially those pricing in a foreign currency. We provide suggestive evidence that access to hedging instruments increases the probability of pricing in a foreign currency. A model of invoicing currency choice augmented with hedging can rationalize these facts. In the model, large firms that would have chosen to price in their own currency in the absence of hedging instruments can decide to set prices in a foreign currency if they have access to such instruments.</p>
        </details>
        </div>

        <div class="subsection-header">Working Papers</div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4035930" target="_blank" rel="noopener noreferrer">Machine Learning About Venture Capital Choices</a></div>
        <div class="paper-authors">with Léa Stern</div>
        <div class="paper-venue"><span class="venue-status">R&R at Review of Financial Studies</span></div>
        <details>
        <summary>Abstract</summary>
        <p>We study early-stage venture capitalists' (VCs) decisions through the lens of a predictive model of venture success. Using French administrative data on VC-backed and non-VC-backed companies, we find that VCs invest in some companies that perform predictably poorly and pass on others that perform predictably well. VCs tend to select entrepreneurs whose features are representative of success—such as being male, graduates of elite schools, and based in Paris. Although entrepreneurs with these characteristics exhibit higher success rates, VCs exaggerate the importance of these features relative to their impact on performance, contributing to the narrowness of the VC industry.</p>
        </details>
        </div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5261089" target="_blank" rel="noopener noreferrer">New Business Formation and Superstar Firms: New Evidence From France</a></div>
        <div class="paper-authors">with Jack Liebersohn</div>
        <div class="paper-venue"><span class="venue-status">May 2025</span></div>
        <details>
        <summary>Abstract</summary>
        <p>This paper documents novel stylized facts linking the decline in new business formation to the rise of superstar firms using comprehensive French administrative data. Industries with larger increases in superstar firms' market share experience more pronounced decreases in new business creation. Rising concentration discourages low-ability, but not high-ability, entrepreneurs from starting businesses. This results in higher average firm quality as measured by a higher fraction of entrepreneurs who are highly educated, former executives, or serial entrepreneurs. Our findings help reconcile seemingly contradictory evidence in the literature and align with theories emphasizing technological changes that benefit the most productive firms while raising entry barriers.</p>
        </details>
        </div>

        <div class="paper-entry">
        <div class="paper-title"><a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5325540" target="_blank" rel="noopener noreferrer">What do Early Stage Investors Ask? An LLM Analysis of Expert Calls</a></div>
        <div class="paper-authors">with Amin Shams and Shaojun Zhang</div>
        <div class="paper-venue"><span class="venue-status">June 2025</span></div>
        <details>
        <summary>Abstract</summary>
        <p>We analyze 5,230 expert network calls using large language models (LLMs) to study how early-stage investors conduct due diligence. Applying a novel LLM-based topic modeling approach combined with SHAP analysis, we find that firms receiving expert calls have 44% higher odds of securing investment in the next quarter. The predictive content of these calls varies systematically with both discussion topics and firm characteristics: Positive discussions about technology integration and customer acquisition further increase deal odds by 31% and 15%, respectively. These effects are concentrated among younger firms, suggesting that expert validation can at least partially substitute for traditional financial metrics. However, while positive signals predict investment decisions, negative assessments on risk management are associated with 0.2 standard deviation lower long-term firm performance. This divergence between what predicts deals versus ultimate success is consistent with investors optimizing for power-law returns rather than success rates.</p>
        </details>
        </div>

        <div class="subsection-header wip">Work in Progress</div>

        <div class="paper-entry" style="border-bottom: none;">
        <div class="paper-title">How Do Life Insurers Manage Liquidity Risk?</div>
        </div>

        <div class="paper-entry" style="border-bottom: none; margin-bottom: 0;">
        <div class="paper-title">Which Firms Produce which Type of Innovation?</div>
        </div>

        </div>

    design:
      columns: '1'
      spacing:
        padding: ["0", "0", "0.5rem", "0"]

  - block: markdown
    id: teaching
    content:
      title: ''
      subtitle: ''
      text: |-
        <div class="section-container">
        <h2 class="section-title">Teaching</h2>

        <div class="teaching-section">
        <div class="teaching-school">University of Michigan Ross School of Business (2024–present)</div>
        <ul class="teaching-courses">
        <li>Entrepreneurial Finance (BBA)</li>
        <li>Venture Capital Finance (MBA)</li>
        <li>Private Equity Finance (MBA)</li>
        </ul>
        </div>

        <div class="teaching-section">
        <div class="teaching-school">University of Chicago Booth School of Business (2023–2024)</div>
        <ul class="teaching-courses">
        <li>Corporate Finance (MBA)</li>
        </ul>
        </div>

        <div class="teaching-section">
        <div class="teaching-school">Ohio State University (2018–2023)</div>
        <ul class="teaching-courses">
        <li>Corporate Finance (Undergraduate)</li>
        <li>Financial Economics of Insurance (PhD)</li>
        <li>Entrepreneurship (PhD)</li>
        </ul>
        </div>

        <div class="teaching-section">
        <div class="teaching-school">Sciences-Po Paris (2017–2018)</div>
        <ul class="teaching-courses">
        <li>Mathematics for Economists (Graduate)</li>
        </ul>
        </div>

        <div class="teaching-section">
        <div class="teaching-school">HEC Paris & Sciences-Po Paris (2015–2016)</div>
        <ul class="teaching-courses">
        <li>Financial Markets (HEC Paris, Undergraduate)</li>
        <li>Mathematics for Economists (Sciences-Po, Graduate)</li>
        <li>Graduate Macroeconomics 3 (Sciences-Po, PhD Track)</li>
        </ul>
        </div>

        <div class="teaching-section">
        <div class="teaching-school">ENSAE & Sciences-Po Paris (2013–2014)</div>
        <ul class="teaching-courses">
        <li>International Trade (ENSAE)</li>
        <li>Graduate Macroeconomics 3 (Sciences-Po)</li>
        <li>Financial Markets (Sciences-Po)</li>
        <li>Macroeconomics (ENSAE)</li>
        <li>Open Macroeconomics (ENSAE)</li>
        <li>Microeconomics (ENSAE)</li>
        </ul>
        </div>

        <div class="teaching-section" style="margin-bottom: 0;">
        <div class="teaching-school">ENSAE Paris (2012–2013)</div>
        <ul class="teaching-courses">
        <li>Macroeconomics</li>
        <li>Microeconomics</li>
        </ul>
        </div>

        </div>

    design:
      columns: '1'
      spacing:
        padding: ["0", "0", "3rem", "0"]
---
