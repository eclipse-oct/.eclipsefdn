local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('ecd.oct', 'eclipse-oct') {
  settings+: {
    description: "",
    name: "Eclipse Open Collaboration Tools",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('oct-website') {
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Website of the Open Collaboration Tools project",
      gh_pages_build_type: "workflow",
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.open-collab.tools/",
      topics+: [
        "collaboration",
        "live-share",
        "real-time",
        "website"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('open-collaboration-tools') {
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Open Collaboration Tools: live-sharing solution for Eclipse Theia, VS Code and other editors and IDEs",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.open-collab.tools/",
      squash_merge_commit_message: "BLANK",
      squash_merge_commit_title: "PR_TITLE",
      topics+: [
        "co-edit",
        "collaboration",
        "live-share",
        "pair-programming",
        "real-time",
        "share",
        "team"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('oct-eclipse') {
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Integration of Open Collaboration Tools with the Eclipse Platform",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.open-collab.tools/",
      squash_merge_commit_message: "BLANK",
      squash_merge_commit_title: "PR_TITLE",
      topics+: [
        "collaboration",
        "live-share",
        "real-time",
        "eclipse",
        "plug-in"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('oct-intellij') {
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Integration of Open Collaboration Tools with the IntelliJ Platform",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.open-collab.tools/",
      squash_merge_commit_message: "BLANK",
      squash_merge_commit_title: "PR_TITLE",
      topics+: [
        "collaboration",
        "live-share",
        "real-time",
        "intellij",
        "plug-in"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
