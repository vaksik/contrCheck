using System;

namespace ContrCheck.DAL.Models
{
    public class MassRegistration
    {
        public int Id { get; set; }
        /// <summary>
        /// Регион
        /// </summary>
        public string Region { get; set; }
        /// <summary>
        /// Район
        /// </summary>
        public string District { get; set; }
        /// <summary>
        /// Город
        /// </summary>
        public string Town { get; set; }
        /// <summary>
        /// Населенный пункт
        /// </summary>
        public string Locality { get; set; }
        /// <summary>
        /// Улица
        /// </summary>
        public string Street { get; set; }
        /// <summary>
        /// Номер дома
        /// </summary>
        public string House { get; set; }
        /// <summary>
        /// Номер корпуса
        /// </summary>
        public string CaseNumber { get; set; }
        /// <summary>
        /// Квартира(офис)
        /// </summary>
        public string Apartment { get; set; }
        /// <summary>
        /// Количество юридических лиц
        /// </summary>
        public int CountUl { get; set; }

        public DateTime? UpdateDate { get; set; }
    }

}
