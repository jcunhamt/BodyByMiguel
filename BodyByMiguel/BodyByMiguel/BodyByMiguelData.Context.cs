﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BodyByMiguel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BodyByMiguelContext : DbContext
    {
        public BodyByMiguelContext()
            : base("name=BodyByMiguelContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Exercicio> Exercicio { get; set; }
        public virtual DbSet<PlanoTreino> PlanoTreino { get; set; }
        public virtual DbSet<Treino> Treino { get; set; }
        public virtual DbSet<ExercicioTreino> ExercicioTreino { get; set; }
        public virtual DbSet<GrandeMusculo> GrandeMusculo { get; set; }
        public virtual DbSet<PequenoMusculo> PequenoMusculo { get; set; }
    }
}
