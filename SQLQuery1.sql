create Database QuaraDb
go

use QuaraDb
go

create table Categories(
 CategoryID int primary key identity(1,1),
 CategoryNamme nvarchar(max))
 go

create table Users(
UserID int primary key identity(1,1),
Email nvarchar(max),
PasswordHash nvarchar(max),
Name nvarchar(max),
IsAdmin bit default(0))
go

create table Questions(
QuestionID int primary key identity(1,1),
QuestionName nvarchar(max),
QuestionDateAndTime datetime,
UserID int references Users(UserID) on delete cascade,
CategoryID int references Categories(categoryID) on delete cascade,
VotesCount int,
AnswerCount int,
ViewsCount int)
go

create Table Answers(
AnswerID int primary key identity(1,1),
AnswerText nvarchar(max),
AnswerDateAndTime datetime,
UserID int references Users(UserID),
QuestionID int references Questions(QuestionID) on delete cascade,
VotesCount int)
go

use QuaraDb
go

create table Votes(
voteID int primary key identity(1,1),
UserID int references Users(UserID),
AnswerID int references Answers(AnswerID) on delete cascade,
VoteValue int)
go






