import imagefraise from './image/imagefraise.png'
import iconedituser from './image/iconedituser.png'
import icondeleteuser from './image/icondeleteuser.png'
import Modalconfirm from './Modalconfirm'
import { useState } from 'react'

function Carteuser() {
    //css
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

    const [confirm,setConfirm] = useState(false)

    const hideConfirm = () => {
        setConfirm(false)
    }

    return (
        <div className='d-flex flex-column justify-content-center' style={divcarte}>
            <div style={{textAlign:'center',width:'180px',height:'132px'}}><img src={imagefraise} alt='fraise' style={imgStyle}/></div>
            <div style={{textAlign:'center',fontWeight:'bold'}} className='mb-3'>Henry Fraise</div>
            
            <div className='d-flex flex-row justify-content-between mb-4'>
                <div style={mymargin}>Droit</div>
                <div style={{fontWeight:'bold'}}>Administrateur</div>
            </div>

            <div className='d-flex flex-row justify-content-center mb-3'>
                <div style={{marginRight:'15px'}}>
                    <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                        <img src={iconedituser} alt="icon pour editer l'user"/>
                    </button>
                </div>
                <div>
                    <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}} onClick={()=>setConfirm(true)}>
                        <img src={icondeleteuser} alt="icon pour supprimer l'user"/>
                    </button>
                    {confirm && <Modalconfirm hideConfirm={hideConfirm}/>}
                </div>
            </div>

            
        </div>
    )
}

export default Carteuser