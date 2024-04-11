import imagefraise from './image/imagefraise.png'
import iconstockok from './image/iconstockok.png'
import { useState } from 'react';
import Modalmodif from './Modalmodif';

function Modaldetails( { hideDetails } ) {
//css style
    const stylecontainer = {
        position:'absolute',
        top:'0',
        bottom:'0',
        right:'0',
        left:'0'
    }

    const stylediv = {
        width:'1200px',
        borderRadius: '10px',
        boxShadow: '0px 3px 3px 1px rgba(128, 128, 128, 0.75)'
    }


    const imgStyle = {
        width: '100%', 
        height: 'auto' 
      };

    const mymargin = {
        marginRight:'15px'
    }

//events

    const [modif,setModif] = useState(false) 

    const hideModif = () => {
        setModif(false)
    }

    return (
        <div className="d-flex flex-column justify-content-center align-items-center" style={stylecontainer}>
            <div style={stylediv} className='bg-white'>
                <div className="d-flex flex-row justify-content-between mt-4 mb-3">
                    <div style={{marginLeft:'565px',fontWeight:'bold'}}>Fruits &gt; Fraise</div>
                    <div style={{color:'#863718',fontWeight:'bold',cursor: 'pointer',marginRight:'20px'}} onClick={()=>setModif(true)}>Modifier...</div>
                    { modif && <Modalmodif hideModif={hideModif}/>}                
                </div>

                <div className="d-flex flex-row justify-content-around mb-4 align-items-center">
                    <div>
                        <img src={imagefraise} alt='fraise' style={imgStyle}/>
                    </div>
                    
                    <div className="d-flex flex-column justify-content-around">
                        <div className="d-flex flex-row justify-content-between mb-5">
                            <div  className='form-group' style={mymargin}>
                                <label class="d-block">Date d'arrivée</label>
                                <input type="date" className='form-control-sm'></input>  
                            </div>
                            <div className='form-group' style={mymargin}>
                                    <label class="d-block">Arrivée dans les</label>
                                    <input type="text" value="3j" className='form-control-sm'/>
                            </div>
                            <div className='form-group'>
                                    <label class="d-block">Provenance</label>
                                    <select>
                                        <option>Ambatondrazaka</option>
                                        <option>Sambava</option>
                                        <option>Ihosy</option>
                                    </select>
                            </div>
                        </div>

                        <div className='d-flex flex-row justify-content-between'>
                            <div className='d-flex flex-column justify-content-between ' style={{marginRight:'75px'}}>
                                <div className='d-flex flex-row justify-content-between'>
                                    <div>En stock</div>
                                    <div><img src={iconstockok} alt='icon de stock ok'/></div>
                                </div>
                                
                                <div className='d-flex flex-row justify-content-between'>
                                    <div>Poids de l'unité</div>
                                    <div>3 kg</div>
                                </div>

                                <div className='d-flex flex-row justify-content-between'>
                                    <div style={{marginRight:'75px'}}>Nombre d'unité en stock</div>
                                    <div>4</div>
                                </div>
                            </div>

                            <div>
                                <div className='d-flex flex-row justify-content-between'>
                                    <div>Quantité en stock</div>
                                    <div>12 kg</div>
                                </div>

                                <div className='d-flex flex-row justify-content-between'>
                                    <div>Durée de vie à l'arrivée</div>
                                    <div>12 j</div>
                                </div>

                                <div className='d-flex flex-row justify-content-between'>
                                    <div style={{marginRight:'145px'}}>Conteneur</div>
                                    <div >Congélateur</div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <div>
                    <table className='table' style={{marginLeft:'23px'}}>
                      
                            <tr>
                                <th>Date de péremption</th>
                                <th>Date d'arrivée</th>
                                <th>Jours restants</th>
                                <th>Unité en stock</th>
                                <th>Quantité en stock</th>
                                <th>Conteneur</th>
                                <th>Provenance</th>
                            </tr>
                            <tr>
                                <td>12/12/2000</td>
                                <td>12/12/2000</td>
                                <td>15j</td>
                                <td>5</td>
                                <td>12 Kg</td>
                                <td>C1</td>
                                <td>Ambatondrazaka</td>
                            </tr>
                            <tr>
                                <td>12/12/2000</td>
                                <td>12/12/2000</td>
                                <td>15j</td>
                                <td>5</td>
                                <td>12 Kg</td>
                                <td>C1</td>
                                <td>Ambatondrazaka</td>
                            </tr>
              
                    </table>
                </div>
                
                <div className="d-flex flex-row justify-content-end mb-3" style={{color:'#863718',fontWeight:'bold',marginRight:'20px',cursor:'pointer'}} onClick={hideDetails}>
                    &lt; Moins détails
                </div>

            </div>
        </div>
    )

}

export default Modaldetails;