using ContrCheck.DAL.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ContrCheck.DAL.ModelsConfiguration
{
    public class LegalEntityConfiguration :  IEntityTypeConfiguration<LegalEntity>
    {
        public void Configure(EntityTypeBuilder<LegalEntity> builder)
        {
            builder.ToTable("rUL", schema: "fns").HasKey(l => l.Ogrn).HasName("PK_rUL");
            builder.Property(l => l.Ogrn).HasMaxLength(13);
            builder.Property(l => l.Inn).HasMaxLength(10);
            builder.Property(l => l.Kpp).HasMaxLength(9);
            builder.Property(l => l.UpdateDate).HasDefaultValueSql("GETDATE()");
        }
    }
}
