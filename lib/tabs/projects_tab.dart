import 'package:flutter/material.dart';
import 'package:portfolio/config/projects.dart';
import 'package:portfolio/config/responsive_widget.dart';
import 'package:portfolio/pages/project_page.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        children: [
          Text(
            'Published Apps',
            style: TextStyle(fontSize: 20),
          ),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       Expanded(
          //         child: GridView.count(
          //           padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          //           crossAxisCount: 3,
          //           childAspectRatio: MediaQuery.of(context).size.width /
          //               (MediaQuery.of(context).size.height / 1.3),
          //           children: List.generate(
          //             projects.length,
          //             (index) => ProjectWidget(projects[index], 0),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Text(
          //   'UI Challenges',
          //   style: TextStyle(fontSize: 20),
          // ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.3),
              children: List.generate(
                projects.length,
                (index) => ProjectWidget(projects[index], 0),
              ),
            ),
          ),
        ],
      ),
      smallScreen: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjectWidget(
          projects[index],
          (index == projects.length - 1 ? 16.0 : 0),
        ),
      ),
    );
  }
}
