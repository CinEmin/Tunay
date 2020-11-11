using System;
using System.Collections.Generic;
using System.Text;

namespace TunayEntity
{
    public class ProductProperty
    {
        public int ProductPropertyId { get; set; }

        public int ProductId { get; set; }

        public int ProductQualityChemicalId { get; set; }

        public int ProductPackageId { get; set; }

        public int ProductQualityPhysicalId { get; set; }

        public DateTime DateCreated { get; set; }

        public int UserCreated { get; set; }

        public DateTime DateUpdated { get; set; }

        public int UserUpdated { get; set; }

        public DateTime? DateDeleted { get; set; }

        public int? UserDeleted { get; set; }

        public bool isDeleted { get; set; }

    }

}