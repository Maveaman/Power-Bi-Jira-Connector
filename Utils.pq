pq
section Utils;

// Transform Jira Issue JSON to table-friendly format
TransformIssue = (issue as record) =>
record[
    Id = issue[id],
    Key = issue[key],
    Summary = issue[fields][summary],
    Status = issue[fields][status][name],
    Assignee = if Record.HasFields(issue[fields], "assignee") then issue[fields][assignee][displayName] else null,
    Created = issue[fields][created],
    Updated = issue[fields][updated]
];