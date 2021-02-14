using System;
using System.Collections.Generic;
using System.Text;
using ContrCheck.DAL.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ContrCheck.DAL.ModelsConfiguration
{
    class MassRegistrationConfiguration : IEntityTypeConfiguration<MassRegistration>
    {
        public void Configure(EntityTypeBuilder<MassRegistration> builder)
        {
            builder.ToTable("rMassRegistration", schema: "fns")
                .HasKey(e => e.Id)
                .HasName("PK_rMassRegistration")
                .IsClustered();
            builder.Property(e => e.Region).HasMaxLength(150);
            builder.Property(e => e.District).HasMaxLength(150);
            builder.Property(e => e.Town).HasMaxLength(150);
            builder.Property(e => e.Locality).HasMaxLength(150);
            builder.Property(e => e.Street).HasMaxLength(150);
            builder.Property(e => e.House).HasMaxLength(4);
            builder.Property(e => e.CaseNumber).HasMaxLength(4);
            builder.Property(e => e.Apartment).HasMaxLength(4);
            builder.Property(e => e.UpdateDate).HasDefaultValueSql("GETDATE()");
        }
    }
}
