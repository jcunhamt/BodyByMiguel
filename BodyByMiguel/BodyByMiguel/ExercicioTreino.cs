//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class ExercicioTreino
    {
        public int IdTreino { get; set; }
        public int IdExercicio { get; set; }
        public Nullable<int> NRepeticoes { get; set; }
        public Nullable<int> NSeries { get; set; }
        public string Observacoes { get; set; }
    
        public virtual Exercicio Exercicio { get; set; }
        public virtual Treino Treino { get; set; }
    }
}
