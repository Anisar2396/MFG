using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
namespace MFGAweb.Models
{
    public class User
    {
        public string user { get; set; }
        public string password { get; set; }

        public User(string user, string pass)
        {
            this.user = user;
            this.password = pass;
        }
    }
}
