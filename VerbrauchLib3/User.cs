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
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.Wohnung = new HashSet<Wohnung>();
            this.Wohnungen = new HashSet<Wohnung>();
        }
    
        public int Id { get; set; }
        public string Nachname { get; set; }
        public string Vorname { get; set; }
        public string IBAN { get; set; }
        public bool RoleVermieter { get; set; }
        public bool RoleMieter { get; set; }
        public bool RoleDM { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Wohnung> Wohnung { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Wohnung> Wohnungen { get; set; }
    }
}