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
    
    public partial class Exercicio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Exercicio()
        {
            this.ExercicioTreino = new HashSet<ExercicioTreino>();
        }
    
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Observacao { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExercicioTreino> ExercicioTreino { get; set; }
    }
}
