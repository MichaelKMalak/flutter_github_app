import 'dart:convert';

class MockServer {
  Map<String, dynamic> get repositoryJsonObj => {
    'id': 131430630,
    'name': 'react-pledge',
    'owner': {
      'login': 'petergombos',
      'avatar_url': 'https://avatars0.githubusercontent.com/u/1838896?v=4',
    },
    'html_url': 'https://github.com/petergombos/react-pledge',
    'description':
    '''Declarative way to track promise lifecycle states using \"render props\" 🕶''',
    'stargazers_count': 149,
  };

  String get repositoryJsonStr => json.encode(repositoryJsonObj);

  Map<String, dynamic> get responseJsonObj => {
    'items': [
      repositoryJsonObj
    ],
  };

  String get responseJsonStr => json.encode(responseJsonObj);
}