namespace ContrCheck.DAL
{
    public class DalOptions
    {
        public int DbSqlCommandTimeout { get; set; }

        public ConnectionStrings ConnectionString { get; set; }
    }

    public class ConnectionStrings
    {
        public string Local { get; set; }
        public string Core { get; set; }
    }
}
