import { BrowserRouter, Routes, Route } from "react-router-dom";
import Entrees from "./pages/Entrees";
import Historique from "./pages/Historique";
import Modification from "./pages/Modification";
import Produits from "./pages/Produits";
import Sorties from "./pages/Sorties";
import Utilisateurs from "./pages/Utilisateurs";
import Menu from "./pages/Menu";
import 'bootstrap/dist/css/bootstrap.min.css'

import Modaldetails from "./pages/Modaldetails";
import Modalajout from "./pages/Modalajout";
import Modaluseradd from "./pages/Modaluseradd";
import Modalcontaineradd from "./pages/Modalcontaineradd";

import Modalconfirm from "./pages/Modalconfirm";
import Modalerror from "./pages/Modalerror";
import Modalsuccess from "./pages/Modalsuccess";

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Menu />}>
          <Route index element={<Produits />} />
          <Route path="entrees" element={<Entrees />} />
          <Route path="sorties" element={<Sorties />} />
          <Route path="historique" element={<Historique />} />
          <Route path="modification" element={<Modification />} />
          <Route path="utilisateurs" element={<Utilisateurs />} />
        </Route>
        
        <Route path="/details" element={<Modaldetails/>}></Route>
        <Route path="/ajout" element={<Modalajout/>}></Route>
        <Route path="/adduser" element={<Modaluseradd/>}></Route>
        <Route path="/addcontainer" element={<Modalcontaineradd/>}></Route>
        <Route path="/confirm" element={<Modalconfirm/>}></Route>
        <Route path="/error" element={<Modalerror/>}></Route>
        <Route path="/success" element={<Modalsuccess/>}></Route>
      </Routes>
    </BrowserRouter>
  );
}

