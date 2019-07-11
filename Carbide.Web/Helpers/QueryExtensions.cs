using System;
using System.Linq;
using System.Linq.Expressions;

namespace Carbide.Web.Helpers
{
    public static class QueryExtensions
    {
        public enum Order
        {
            Asc,
            Desc
        }

        /// <summary>
        /// Dynamic OrderBy() for LINQ
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="query"></param>
        /// <param name="orderByMember"></param>
        /// <param name="direction"></param>
        /// <example>var pages = Model.Children().AsQueryable().OrderByDynamic("Name", QueryableExtensions.Order.Asc);</example>
        /// <returns></returns>
        public static IQueryable<T> OrderByDynamic<T>(
            this IQueryable<T> query,
            string orderByMember,
            Order direction)
        {
            var queryElementTypeParam = Expression.Parameter(typeof(T));

            var memberAccess = Expression.PropertyOrField(queryElementTypeParam, orderByMember);

            var keySelector = Expression.Lambda(memberAccess, queryElementTypeParam);

            var orderBy = Expression.Call(
                typeof(Queryable),
                direction == Order.Asc ? "OrderBy" : "OrderByDescending",
                new Type[] { typeof(T), memberAccess.Type },
                query.Expression,
                Expression.Quote(keySelector));

            return query.Provider.CreateQuery<T>(orderBy);
        }
    }
}