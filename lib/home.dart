import 'package:flutter/material.dart';

class home extends StatelessWidget {
  String name;
  home({
    required this.name,
  });
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('wellcome:$name'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
        ),
      ),
    );
  }
}

class Entry {
  final String title;
  final List<Entry> children;
  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry('hagi', <Entry>[
    Entry('Details of student', <Entry>[
      Entry(
        'email: awertyy@gmail.come',
      ),
      Entry(
        'age 21',
      ),
      Entry(
        'sex f',
      ),
    ]),
    Entry('id No NSR/1878/13'),
    Entry('IT 3rd year'),
  ]),
  Entry('abebe',
      <Entry>[Entry('email: wwhkjg@gamil.come'), Entry('idNO : NSR/1878/13')]),
  Entry('zelalem', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'temesgen',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('herai',
      <Entry>[Entry('email: wwhkjg@gamil.come'), Entry('idNO : NSR/1878/13')]),
  Entry('zelalem', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'trngo',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('senayt',
      <Entry>[Entry('email: wwhkjg@gamil.come'), Entry('idNO : NSR/1878/13')]),
  Entry('zelalem', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'negwa',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('ayansa',
      <Entry>[Entry('email: wwhkjg@gamil.come'), Entry('idNO : NSR/1878/13')]),
  Entry('zelalem', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'diriba',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('lemlem',
      <Entry>[Entry('email: wwhkjg@gamil.come'), Entry('idNO : NSR/1878/13')]),
  Entry('zelalem', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'ayelech ',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('asmare', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'genet',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('shegaw', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'Titi',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry('tsilat', <Entry>[
    Entry('email: woin@gmail.come'),
    Entry('idNo :NSR/2345/13'),
    Entry(
      'aster',
      <Entry>[
        Entry('Email: Tisge@gmail.come'),
        Entry('IdNO :NSR/2094/13'),
        Entry('age:21'),
      ],
    )
  ]),
  Entry(
    'alemu',
    <Entry>[
      Entry('email: woin@gmail.come'),
      Entry('idNo :NSR/2345/13'),
      Entry(
        'kebede',
        <Entry>[
          Entry('Email: Tisge@gmail.come'),
          Entry('IdNO :NSR/2094/13'),
          Entry('age:21'),
        ],
      )
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
