using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace POC_RSA.Migrations
{
    /// <inheritdoc />
    public partial class UPTestTbl : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Data",
                table: "TestTbl",
                newName: "LastName");

            migrationBuilder.AddColumn<string>(
                name: "FirstName",
                table: "TestTbl",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "FirstName",
                table: "TestTbl");

            migrationBuilder.RenameColumn(
                name: "LastName",
                table: "TestTbl",
                newName: "Data");
        }
    }
}
