USE [Onlinestore]
GO

/****** Object:  StoredProcedure [dbo].[spAssetstar]    Script Date: 28/07/2023 14:57:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[spAssetstar]
as 
begin
declare @counter int =1
declare @AssetStarId int

while @counter <=25
begin 
set @AssetStarId =@counter
insert into Report.DimAssetStar (AssetStarId) values (@AssetStarId)
set  @counter = @counter+1
end
end
GO


