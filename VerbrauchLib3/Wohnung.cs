//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VerbrauchLib3
{
    using System;
    using System.Collections.Generic;
    
    public partial class Wohnung
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Wohnung()
        {
            this.Verbrauch = new HashSet<Verbrauch>();
        }
    
        public int Id { get; set; }
        public string Fläche { get; set; }
        public bool Südseite { get; set; }
        public int UserId { get; set; }
    
        public virtual User Mieter { get; set; }
        public virtual User Vermieter { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Verbrauch> Verbrauch { get; set; }
    }
}
