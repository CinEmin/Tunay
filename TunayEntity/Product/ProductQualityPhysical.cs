using System;
using System.Collections.Generic;
using System.Text;

namespace TunayEntity
{
    public class ProductQualityPhysical
    {
        public int ProductQualityPhysicalId { get; set; }

        public int ProductPropertyId { get; set; }

        public int Appearance { get; set; }

        public int Taste { get; set; }

        public int Color { get; set; }

        public int Smell { get; set; }

        public DateTime DateCreated { get; set; }

        public int UserCreated { get; set; }

        public DateTime DateUpdated { get; set; }

        public int UserUpdated { get; set; }

        public DateTime? DateDeleted { get; set; }

        public int? UserDeleted { get; set; }

        public bool isDeleted { get; set; }

    }

}
