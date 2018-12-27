using DataTables.Mvc;
using PaginationDatatableMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PaginationDatatableMVC.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult GetUserInfo([ModelBinder(typeof(DataTablesBinder))] IDataTablesRequest requestModel)
        {
            PaginationDatatableDemoEntities _dbContext = new PaginationDatatableDemoEntities();

            IQueryable<UserInfo> query = _dbContext.UserInfoes;
            var totalCount = query.Count();

            #region Filtering 

            // Apply filters for searching 
            if (requestModel.Search.Value != string.Empty)
            {
                var value = requestModel.Search.Value.Trim();
                query = query.Where(p => p.Email.Contains(value) ||
                                         p.Phone.Contains(value) ||
                                         p.UserName.Contains(value) ||
                                         p.BackgroundColor.Contains(value) ||
                                         p.Postcode.Contains(value)
                                   );
            }

            var filteredCount = query.Count();

            #endregion Filtering 


            // Paging 
            query = query.OrderBy(c => c.Id).Skip(requestModel.Start).Take(requestModel.Length);


            var data = query.Select(ToModel).ToList();

            return Json(new DataTablesResponse(requestModel.Draw, data, filteredCount, totalCount), JsonRequestBehavior.AllowGet);
        }

        public UserInfoViewModel ToModel(UserInfo user)
        {
            return new UserInfoViewModel()
            {
                Id = user.Id,
                BackgroundColor = user.BackgroundColor,
                FontColor = user.FontColor,
                ProfilePhoto = user.ProfilePhoto,
                CoverPhoto = user.CoverPhoto,
                UserName = user.UserName,
                Email = user.Email,
                Address = user.Address,
                Postcode = user.Postcode,
                Phone = user.Phone,
                CreateDate = user.CreateDate,
            };
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}