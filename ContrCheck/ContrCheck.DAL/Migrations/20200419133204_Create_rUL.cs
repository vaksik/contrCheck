using Microsoft.EntityFrameworkCore.Migrations;
using System;

namespace ContrCheck.DAL.Migrations
{
    public partial class Create_rUL : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.EnsureSchema(
                name: "fns");

            migrationBuilder.CreateTable(
                name: "rUL",
                schema: "fns",
                columns: table => new
                {
                    Ogrn = table.Column<string>(maxLength: 13),
                    Inn = table.Column<string>(maxLength: 10, nullable: true),
                    Kpp = table.Column<string>(maxLength: 9, nullable: true),
                    Name = table.Column<string>(nullable: true),
                    ShortName = table.Column<string>(nullable: true),
                    RegAddress = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: true),
                    UpdateDate = table.Column<DateTime>(nullable: false, defaultValueSql: "GETDATE()")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_rUL", x => x.Ogrn);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "rUL",
                schema: "fns");
        }
    }
}
