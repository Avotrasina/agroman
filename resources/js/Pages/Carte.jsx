import imagefraise from './image/imagefraise.png'
import iconstockok from './image/iconstockok.png'
import { useState } from 'react';
import Modaldetails from './Modaldetails';

function Carte() {
    const [details,setDetails] = useState(false)

    const showDetails = () => {
        setDetails(true)
    }
    const hideDetails = () => {
        setDetails(false)
    }


    const mymargin = {
        marginRight:'25px'
    }


    
    const imgStyle = {
        maxWidth: '100%', 
        maxHeight: '100%' 
      };

    const divcarte = {
        width:'200px',
        paddingRight:'10px',
        paddingLeft:'10px',
        borderRadius: '10px',
        boxShadow: '0px 3px 3px 1px rgba(128, 128, 128, 0.75)',
        margin:'10px'

    }

    return (
        <div className='d-flex flex-column justify-content-center' style={divcarte}>
            <div style={{textAlign:'center',width:'180px',height:'132px'}}><img src={imagefraise} alt='fraise' style={imgStyle}/></div>
            <div style={{textAlign:'center',fontWeight:'bold'}}>Fraise</div>
            
            <div className='d-flex flex-row justify-content-between'>
                <div style={mymargin}>En stock</div>
                <div><img src={iconstockok} alt='icon de stock ok'/></div>
            </div>
            <div className='d-flex flex-row justify-content-between'>
                <div style={mymargin}>Unité</div>
                <div>4</div>
            </div>
            <div className='d-flex flex-row justify-content-between mb-3'>
                <div>Quantité</div>
                <div>12 kg</div>
            </div>

            <div className='d-flex flex-row justify-content-end'>
                <div style={{textAlign:'right', color:'#863718', fontWeight:'bold', cursor: 'pointer'}} onClick={showDetails}>Détails &gt;</div>
            </div>
            { details && <Modaldetails hideDetails={hideDetails}/>}
        </div>
    )
}

export default Carte