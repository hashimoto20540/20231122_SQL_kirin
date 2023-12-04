SELECT COALESCE(str2, 'NULLです')
  FROM SampleStr;


SELECT str1, str2, str3,
  COALESCE(str1, str2, str3, 'NULLです')
  FROM SampleStr;