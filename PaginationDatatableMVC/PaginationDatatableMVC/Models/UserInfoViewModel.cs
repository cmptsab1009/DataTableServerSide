using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PaginationDatatableMVC.Models
{
    public class UserInfoViewModel
    {
        public int Id { get; set; }
        public string BackgroundColor { get; set; }
        public string FontColor { get; set; }
        public string ProfilePhoto { get; set; }
        public string CoverPhoto { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string Postcode { get; set; }
        public string Phone { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }        
    }
}