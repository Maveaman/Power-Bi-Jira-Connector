pq
[Version = "1.0.0"]
section JiraConnector;

shared GetJiraProjects = () =>
let
    Token = OAuthHandler.GetAccessToken(),
    Source = Json.Document(Web.Contents("https://your-domain.atlassian.net/rest/api/3/project",
        [Headers=[Authorization="Bearer " & Token, Accept="application/json"]])),
    Projects = Table.FromList(Source, Splitter.SplitByNothing(), {"Project"})
in
    Projects;

shared GetJiraBoards = () =>
let
    Token = OAuthHandler.GetAccessToken(),
    Source = Json.Document(Web.Contents("https://your-domain.atlassian.net/rest/agile/1.0/board",
        [Headers=[Authorization="Bearer " & Token, Accept="application/json"]])),
    Boards = Table.FromList(Source[values], Splitter.SplitByNothing(), {"Board"})
in
    Boards;

shared GetJiraSprints = (BoardId as number) =>
let
    Token = OAuthHandler.GetAccessToken(),
    Source = Json.Document(Web.Contents("https://your-domain.atlassian.net/rest/agile/1.0/board/" & Text.From(BoardId) & "/sprint",
        [Headers=[Authorization="Bearer " & Token, Accept="application/json"]])),
    Sprints = Table.FromList(Source[values], Splitter.SplitByNothing(), {"Sprint"})
in
    Sprints;

shared GetJiraIssues = (BoardId as number) =>
let
    Token = OAuthHandler.GetAccessToken(),
    Source = Json.Document(Web.Contents("https://your-domain.atlassian.net/rest/agile/1.0/board/" & Text.From(BoardId) & "/issue",
        [Headers=[Authorization="Bearer " & Token, Accept="application/json"]])),
    Issues = Table.FromList(Source[issues], Splitter.SplitByNothing(), {"Issue"})
in
    Issues;