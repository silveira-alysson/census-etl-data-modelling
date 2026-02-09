# When Experience Mix Hinders Knowledge Creation in Higher Education Institutions

## Overview

Shifts in technology and workforce demographics continually reshape the balance between early-career and experienced professionals, with important consequences for how organizations generate, share, and retain knowledge. In this research, I explore the potential of information technologies (IT) to address the challenges related to knowledge creation within higher education institutions (HEIs) that possess a mix of early-career and experienced researchers.

I propose that an imbalance in the organizational experience composition can have negative effects on knowledge creation, resulting in an inverted U-shaped relationship. I suggest that IT can help mitigate the challenges posed by this imbalance and posit that **IT-enabled Knowledge Integration Capacity (IT-KIC)** flattens this curvilinear relationship. Specifically, I argue that IT-KIC enhances metaknowledge circulation in HEIs with a low proportion of experienced researchers and fosters knowledge novelty in HEIs with a high proportion of experienced researchers.

## Data and Method

My empirical analysis uses a rich dataset combining nine databases from two primary sources:
* **INEP (National Institute for Educational Studies and Research):** Brazilian Higher Education Census data on institutional resources.
* **CAPES (Coordination of Superior Level Staff Improvement):** Intellectual production data of graduate programs.

The final sample comprises **354 Brazilian HEIs** observed from **2015 to 2022**.

### Measures
* **Knowledge Creation:** Measured by the quantity of research papers published in academic journals.
* **Organizational Experience Composition (OEC):** The proportion of researchers with more than 7 years of experience.
* **IT-KIC:** Captured by the presence of electronic knowledge repositories, which facilitate the acquisition, storage, and dissemination of knowledge.

### Econometric Approach
Given that the dependent variable is count data (number of articles) and overdispersed, I estimated the model using **Fixed-Effects Poisson regression** with robust standard errors. This approach controls for unobserved institution heterogeneity and time effects.

## Results

The analysis yields two key findings:
1.  **Inverted U-shaped Relationship:** HEIs with moderate levels of experience composition are more productive than those with very low or very high proportions of experienced researchers.
2.  **Mitigating Role of IT:** IT-KIC moderates this relationship, "flattening" the curve. This suggests that IT capabilities help HEIs with imbalanced experience compositions (either too low or too high) achieve productivity levels closer to balanced institutions.

### Main Results

**Table 1: Two-Way Fixed Effects Poisson Regression**

| Variable | (1) Articles | (2) Articles | (3) Articles |
| :--- | :--- | :--- | :--- |
| **OEC** | 0.149 (0.14) | **2.426\*\*\*** (0.58) | **3.654\*\*\*** (0.81) |
| **Sq. OEC** | | **-1.794\*\*\*** (0.43) | **-2.603\*\*\*** (0.63) |
| **ITKIC** | 0.020 (0.02) | 0.013 (0.02) | **0.757\*\*\*** (0.23) |
| **ITKIC × OEC** | | | **-2.063\*\*\*** (0.74) |
| **ITKIC × Sq. OEC** | | | **1.378\*\*** (0.58) |
| **Researchers** | **0.018\*\*\*** (0.01) | **0.015\*\*\*** (0.01) | **0.016\*\*\*** (0.01) |
| **Programs** | -0.060 (0.07) | -0.067 (0.07) | -0.073 (0.07) |
| **eJournals** | 0.001 (0.00) | 0.001 (0.00) | 0.001 (0.00) |
| **OtherDBs** | 0.009 (0.01) | 0.007 (0.01) | 0.008 (0.01) |
| **HEI, Year FE** | Yes | Yes | Yes |
| **Observations** | 2,263 | 2,263 | 2,263 |
| **HEIs** | 354 | 354 | 354 |

*Robust standard errors in parentheses. \*\*\* p<0.01, \*\* p<0.05, \* p<0.1*

**Figure 4: Predicted values of knowledge creation showing the flattening effect of IT-KIC on the inverted U-shaped relationship.**
<img src="docs/images/itkic.jpg" width="600" alt="he Moderating Effect of IT-KIC on the Curvilinear Relationship between Organizational Experience Composition and Knowledge Creation">

