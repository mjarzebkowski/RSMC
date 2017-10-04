using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace RSMC_SERVICE_Windows
{
    static class RSMC_SERVICE_Windows
    {
        /// <summary>
        /// Główny punkt wejścia dla aplikacji.
        /// </summary>
        static void Main()
        {
            ServiceBase[] ServicesToRun;
            ServicesToRun = new ServiceBase[]
            {
                new RSMC_SERVICE()
            };
            ServiceBase.Run(ServicesToRun);
        }
    }
}
