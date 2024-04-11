import imagefraise from './image/imagefraise.png'
import iconstockok from './image/iconstockok.png'
import iconsubmitentree from './image/iconsubmitentree.png'

function Carteentree( {type} ) {
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
                    <div style={mymargin}>En stock</div>
                    <div><img src={iconstockok} alt='icon de stock ok'/></div>
                </div>
                <div className='d-flex flex-row justify-content-between'>
                    <div style={mymargin}>Poids de l'unité</div>
                    <div style={{fontWeight:'bold'}}>4 kg</div>
                </div>
                <div className='d-flex flex-row justify-content-between'>
                    <div>Unité de stock</div>
                    <div style={{fontWeight:'bold'}}>12 t</div>
                </div>
                <div className='d-flex flex-row justify-content-between'>
                    <div>Poids total</div>
                    <div style={{fontWeight:'bold'}}>12 t</div>
                </div>
            </div>

            <div className='d-flex flex-column justify-content-between'>
                <div>Nombre d'unité à {type}</div>
                <div className='d-flex flex-row justify-content-around align-items-center'>
                    <div>
                        <input type='number' min='1' style={{width:'50px'}}/>
                    </div>
                    <div>
                        <button type='button' className="btn btn-md" style={{backgroundColor:'#863718'}}>
                            <img src={iconsubmitentree} alt="icon pour editer l'user"/>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Carteentree