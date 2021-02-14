using System;

namespace ContrCheck.DAL.Models
{
    public class LegalEntity
    {
        /// <summary>
        /// ОГРН
        /// </summary>
        public string Ogrn { get; set; }
        /// <summary>
        /// ИНН
        /// </summary>
        public string Inn { get; set; }
        /// <summary>
        /// КПП
        /// </summary>
        public string Kpp { get; set; }
        /// <summary>
        /// Полное имя организации
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Сокращенное имя огранизации
        /// </summary>
        public string ShortName { get; set; }
        /// <summary>
        /// Адрес регистрации
        /// </summary>
        public string RegAddress { get; set; }

        /// <summary>
        /// Признак активного статуса компании
        /// </summary>
        public bool? IsActive { get; set; }

        public DateTime UpdateDate { get; set; }

       
    }
}
