import imagefraise from './image/imagefraise.png'
import iconedituser from './image/iconedituser.png'
import icondeleteuser from './image/icondeleteuser.png'

function Carteentreeconfirm() {
    const mymargin = {
        marginRight:'25px'
    }

    const divcarte = {
        paddingRight:'10px',
        paddingLeft:'10px',
        borderRadius: '10px',
        boxShadow: '0px 3px 3px 1px rgba(128, 128, 128, 0.75)',
        margin:'10px'

    }

    return (
        <div className='d-flex flex-row justify-content-center align-items-center' style={divcarte}>
            <div style={{...mymargin,width:'100px',height:'100px'}} className='d-flex flex-row justify-content-center align-items-center'>
                <img src={imagefraise} alt='profil' style={{ maxWidth: '100%', maxHeight: '100%'}}/>
            </div>

            <div style={mymargin}>
                <div className='d-flex flex-row justify-content-between'>
                    <div style={{...mymargin,fontWeight:'bold'}}>Fraise</div>
                </div>

                <div className='d-flex flex-row justify-content-between'>
                    <div style={mymargin}>Unité</div>
                    <div style={{fontWeight:'bold'}}>4</div>
                </div>
                <div className='d-flex flex-row justify-content-between'>
                    <div style={{marginRight:'20px'}}>Poids</div>
                    <div style={{fontWeight:'bold'}}>12kg</div>
                </div>
            </div>

            <div className='d-flex flex-column justify-content-between'>
                <div className='mb-2'>
                    <button type='button' className="btn btn-sm" style={{backgroundColor:'#863718'}}>
                        <img src={iconedituser} alt="icon pour editer"/>
                    </button>
                </div>
                <div>
                    <button type='button' className="btn btn-sm" style={{backgroundColor:'#ED474A'}}>
                        <img src={icondeleteuser} alt="icon pour supprimer"/>
                    </button>
                </div>  
            
            </div>
        </div>
    )
}

export default Carteentreeconfirm