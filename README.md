# BSS Lecture Codes
## Reza Sameni
## Emory University Department of Biomedical Informatics

A short lecture of blind-source separation algorithms with practical examples in Matlab
**Q1**
Part A
<img src='https://github.com/Urebes/BSSLecture/blob/main/p1-1.jpeg'>

Part B
<img src='https://github.com/Urebes/BSSLecture/blob/main/p1-2.png'>

**Q2**
PART A
<img src='https://github.com/Urebes/BSSLecture/blob/main/p2-1.png'>

Part B
Eigenvalues:
<img src='https://github.com/Urebes/BSSLecture/blob/main/lamdas.png'>
Two Vectors:
<img src='https://github.com/Urebes/BSSLecture/blob/main/vectors.png'>

**Q3**
Part A: SEE CODE
I didn't change the data source as in the previous file
Part B:
Ex01 does principle component analysis(PCA) on EEG. It first calculated
the covariance matrix for the total of 26 channels, and then the covariance
matrix was applied eigenvalue decomposition method and 26 eigenvalues were 
then extracted and summed up. I changed the threshold from 99% to 98%, only
5 eigenvalues were to be kept, compared to 8 when threshold is at 99.
The compressed data does have some difference from the original one.


EX02: This script is about the implementation and application of Power Method, 
which is an iterative way to ccalculate the eigenvalues and eigenvectors.
I changed the iteration time parameter in this exercise file. As the iteration
goes up, the accuracy goes up, until it converges.

Ex03: This script is mainly about the application of independent component
analysis method(ICA) which includes JADE, SIBI, FASTICA methods, which 
decomposes the data into 15 chanels. I am not sure which parameters could 
be changed that could have a significant impact on the result.

Ex04: This script is mainly to detect EOG channels to be removed.It firstly
used JADE to extract independent source, and then by checking the plots, 
we could visually see which channels are noise channels, which was 23, 24, 
and 25, as we know beforehand. 

Ex05: I tested the next one: testECGICAPCAPiCAPlot1, which compares several 
feature extraction methods including independent component analysis(ICA), 
principle component analysis(PCA) and Pseudo-Periodic Component Analysis 
(πCA).

**Q4**

I chose to review the paper "EEG Signal Classification Using PCA, ICA, LDA 
and Support Vector Machines" by A. Subasi and M. I. Gursoy.

They proposed a EEG signal processing and analysis frame, starting from using 
DWT to calculate features parameters from time-frequency domain. They used 
DWT to decompose the EEG into frequency sub-bands. Then they used three 
well-known feature extraction methods: principle component analysis (PCA),
independent component analysis(ICA), and linear discriminant analysis(LDA). 
Those three methods were used to transform existing features into a 
lower-dimensional space, by extracting statistical features from the sub-bands 
to represent the distribution of wavelet coefficients. Thirdly, those extracted
features were fed into a support vector machine(SVM), which classifies into two
 kinds of output, epileptic and non-epileptic. The LDA menthod combined with
 SVM gives the best perfomance (100% Accuracy + 100% Specificity + 100% Sensitity).

The result is impressive and hopely fully could be used in clinical studies 
after it is fully developed. The performance of use of feature extraction 
method is also satisfactory for the generalization performance of SVM.

The pseudo code should be quite straight-forward:
1.Select appropriate wavelet and the # of levels of decomposition;
and the apply DWT to decompose EEG into frequency sub-bands and extract wavelet coefficients.
2. Feature extraction and dimension reduction by applying PCA, ICA and LDA.
3. Input the extracted feature into SVM-based binary classifier.



