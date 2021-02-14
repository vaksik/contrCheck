using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace ContrCheck.DAL.Migrations
{
    public partial class Create_rMassRegistration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "rMassRegistration",
                schema: "fns",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Region = table.Column<string>(maxLength: 150, nullable: true),
                    District = table.Column<string>(maxLength: 150, nullable: true),
                    Town = table.Column<string>(maxLength: 150, nullable: true),
                    Locality = table.Column<string>(maxLength: 150, nullable: true),
                    Street = table.Column<string>(maxLength: 150, nullable: true),
                    House = table.Column<string>(maxLength: 4, nullable: true),
                    CaseNumber = table.Column<string>(maxLength: 4, nullable: true),
                    Apartment = table.Column<string>(maxLength: 4, nullable: true),
                    CountUl = table.Column<int>(nullable: false),
                    UpdateDate = table.Column<DateTime>(nullable: true, defaultValueSql: "GETDATE()")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_rMassRegistration", x => x.Id)
                        .Annotation("SqlServer:Clustered", true);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "rMassRegistration",
                schema: "fns");
        }
    }
}
