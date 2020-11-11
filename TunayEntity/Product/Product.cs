using System;
using System.Collections.Generic;
using System.Text;

namespace TunayEntity
{
    public class Product
    {
        public int Id { get; set; }

        public string ProductName { get; set; }

        public int ProductPropertyId { get; set; }

        public int ProductQuantity { get; set; }

        public string ProductNotes { get; set; }

        public DateTime DateProduced { get; set; }

        public DateTime DateCreated { get; set; }

        public int UserCreated { get; set; }

        public DateTime DateUpdated { get; set; }

        public int UserUpdated { get; set; }

        public DateTime? DateDeleted { get; set; }

        public int? UserDeleted { get; set; }

        public bool isDeleted { get; set; }

    }

}
