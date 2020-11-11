using System;
using System.Collections.Generic;
using System.Text;

namespace TunayEntity
{
    public class ProductPackage
    {
        public int ProductPackageId { get; set; }

        public int ProductPropertyId { get; set; }

        public string PackageType { get; set; }

        public bool isInTank { get; set; }

        public int? TankId { get; set; }

        public bool isInDrum { get; set; }

        public int? StartingDrumNumber { get; set; }

        public int? EndingDrumNumber { get; set; }

        public int? TotalDrumCount { get; set; }

        public bool isInPallet { get; set; }

        public int? StartingPalletNumber { get; set; }

        public int? EndingPalletNumber { get; set; }

        public int? TotalPalletCount { get; set; }

        public string ProductPackageNote { get; set; }

        public DateTime DateCreated { get; set; }

        public int UserCreated { get; set; }

        public DateTime DateUpdated { get; set; }

        public int UserUpdated { get; set; }

        public DateTime? DateDeleted { get; set; }

        public int? UserDeleted { get; set; }

        public bool isDeleted { get; set; }

    }

}