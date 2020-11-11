using System;

namespace TunayEntity
{

        public class ProductQualityChemical
        {
            public int ProductQualityChemicalId { get; set; }

            public int ProductPropertyId { get; set; }

            public double BrixMin { get; set; }

            public double BrixMax { get; set; }

            public double BrixAvg { get; set; }

            public int AcidityTypeId { get; set; }

            public double AcidityMin { get; set; }

            public double AcidityMax { get; set; }

            public double AcidityAvg { get; set; }

            public double PhMin { get; set; }

            public double PhMax { get; set; }

            public double PhAvg { get; set; }

            public bool isPuree { get; set; }

            public bool isCloudy { get; set; }

            public double? HunterLMin { get; set; }

            public double? HunterLMax { get; set; }

            public double? HunterLAvg { get; set; }

            public double? HunerAMin { get; set; }

            public double? HunterAMax { get; set; }

            public double? HunterAAvg { get; set; }

            public double? HunterBMin { get; set; }

            public double? HunterBMax { get; set; }

            public double? HunterBAvg { get; set; }

            public bool isRedClear { get; set; }

            public double? Abs520Min { get; set; }

            public double? Abs520Max { get; set; }

            public double? Abs520Avg { get; set; }

            public double? Abs430Min { get; set; }

            public double? Abs430Max { get; set; }

            public double? Abs430Avg { get; set; }

            public double? ColorRatio { get; set; }

            public bool isLightClear { get; set; }

            public double? Trans440Min { get; set; }

            public double? Trans440Max { get; set; }

            public double? Trans440Avg { get; set; }

            public double? Trans625Min { get; set; }

            public double? Trans625Max { get; set; }

            public double? Trans625Avg { get; set; }

            public DateTime DateCreated { get; set; }

            public int UserCreated { get; set; }

            public DateTime DateUpdated { get; set; }

            public int UserUpdated { get; set; }

            public DateTime? DateDeleted { get; set; }

            public int? UserDeleted { get; set; }

            public bool isDeleted { get; set; }

        }

}