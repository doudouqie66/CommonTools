---
title: UEnvQueryTest
language: cpp
---

# UEnvQueryTest

> Inheritance: UEnvQueryNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| TestOrder | int32 | Number of test as defined in data asset |
| TestPurpose | TEnumAsByte < EEnvTestPurpose :: Type > | The purpose of this test.  Should it be used for filtering possible results, sco |
| TestComment | FString | Optional comment or explanation about what this test is for.  Useful when the pu |
| MultipleContextFilterOp | TEnumAsByte < EEnvTestFilterOperator :: Type > | Determines filtering operator when context returns multiple items |
| MultipleContextScoreOp | TEnumAsByte < EEnvTestScoreOperator :: Type > | Determines scoring operator when context returns multiple items |
| FilterType | TEnumAsByte < EEnvTestFilterType :: Type > | Does this test filter out results that are below a lower limit, above an upper l |
| BoolValue | FAIDataProviderBoolValue | Desired boolean value of the test for scoring to occur or filtering test to pass |
| FloatValueMin | FAIDataProviderFloatValue | Minimum limit (inclusive) of valid values for the raw test value. Lower values w |
| FloatValueMax | FAIDataProviderFloatValue | Maximum limit (inclusive) of valid values for the raw test value. Higher values  |
| ScoringEquation | TEnumAsByte < EEnvTestScoreEquation :: Type > | The shape of the curve equation to apply to the normalized score before multiply |
| ClampMinType | TEnumAsByte < EEnvQueryTestClamping :: Type > | How should the lower bound for normalization of the raw test value before applyi |
| ClampMaxType | TEnumAsByte < EEnvQueryTestClamping :: Type > | How should the upper bound for normalization of the raw test value before applyi |
| NormalizationType | EEQSNormalizationType | Specifies how to determine value span used to normalize scores |
| ScoreClampMin | FAIDataProviderFloatValue | Minimum value to use to normalize the raw test value before applying scoring for |
| ScoreClampMax | FAIDataProviderFloatValue | Maximum value to use to normalize the raw test value before applying scoring for |
| ScoringFactor | FAIDataProviderFloatValue | The weight (factor) by which to multiply the normalized score after the scoring  |
| ReferenceValue | FAIDataProviderFloatValue | When specified gets used to normalize test's results in such a way that the clos |
| bDefineReferenceValue | bool | When set to true enables usage of ReferenceValue. It's false by default |
| bWorkOnFloatValues | uint32 | When set, test operates on float values (e.g. distance, with AtLeast, UpTo condi |