# Classification-of-pathological-speech-using-explainable-AI-model
Objective: To classify specific language impaired speech samples from the healthy ones in children from age 2 to 7 years. 
Challenge: Becasue of the nature of children's voice box, gender dependent analysis is not possible, and standard features such as MFCC might not work best.
Solution: Perform feature selection before classification. Advantages: Dimentionality reduction, time complexity reduced, computational complexity reduced, better classification accuracy. 

Proposed methodology: 

![image](https://user-images.githubusercontent.com/97305078/185967269-5946e7d9-b3bc-4481-ae67-03892faaf58e.png)

Feature selection: p-values are analyzed for feature selection and reduction. Features having p-value less than 0.05 is choosen.


![image](https://user-images.githubusercontent.com/97305078/185968149-329033ad-f1cd-4b81-b531-d18fab6d836e.png)


Results: Be selection features by ANOVA mehod, we found that only LBP and EMS features are most discriminatory in nature. Hence, by passing these features only, the accuracy rate is improved by 13% giving an highest accuracy rate of 97.36% for vowel classification in pathalogical speech. 
