import React, { useState, useEffect } from 'react'
import './Landing.css'
import { Modal, Button, BackTop, Divider } from 'antd';
import ComBlood from '../../components/Item/ComBlood/ComBlood'
import Feces from '../../components/Item/Feces/Feces'
import BloodChem from '../../components/Item/BloodChem/BloodChem'
import Urine from '../../components/Item/Urine/Urine'
import Others from '../../components/Item/Others/Others'
import localStorageService from '../../services/localStorageService'
import { SearchOutlined, EditOutlined } from '@ant-design/icons';
import jwtDecode from 'jwt-decode'
import ViewModal from '../../components/ViewModal/ViewModal'

const h1Style = {
    fontWeight: 'bolder',
    fontSize: '36px',
    margin: '0',
    color: 'white',
    fontFamily: 'Kanit',
}

const imgStyle = {
    width: '80px',
}

const textStyle = {
    fontFamily: 'Kanit',
    width: '100%',
    textAlign: 'center',
    fontSize: '18px'
}

const iconStyle = {
    fontSize:'20px', 
    margin:'0px 20px'
}

export default function Landing(props) {
    const [username, setUsername] = useState()
    const [hospcode, setHospcode] = useState()
    const [isModalVisible1, setIsModalVisible1] = useState(false);
    const [isModalVisible2, setIsModalVisible2] = useState(false);
    const [isModalVisible3, setIsModalVisible3] = useState(false);
    const [isModalVisible4, setIsModalVisible4] = useState(false);
    const [isModalVisible5, setIsModalVisible5] = useState(false);
    const [send, setSend] = useState([])
    const handleClose1 = () => {
        setIsModalVisible1(false);
    };

    const handleClose2 = () => {
        setIsModalVisible2(false);
    };

    const handleClose3 = () => {
        setIsModalVisible3(false);
    };

    const handleClose4 = () => {
        setIsModalVisible4(false);
    };

    const handleClose5 = () => {
        setIsModalVisible5(false);
    };
    
    const logout = () => {
        localStorageService.removeToken()
        props.setRole('guest')
    }

    useEffect(() => {
        const token = localStorageService.getToken()
        if (token) {
            const user = jwtDecode(token)
            setUsername(user.username)
            setHospcode(user.hospcode)
        }
    }, [])

    return (
        <div className='landContainer'>
        <BackTop visibilityHeight='250'/>
            <div className='Navbar'>
                <p> คุณ <b>{username}</b> hospcode: <b>{hospcode}</b><Button type="text" danger onClick={logout}>ลงชื่อออก</Button></p>
            </div>
            <div className='healthGroup'>
                <div className='header'>
                    <h1 style={h1Style}>รายการตรวจสุขภาพ</h1>
                    <img src='./health-2.png' style={imgStyle}></img>
                </div>
                <br></br>
                <div className='groupList'>
                    <div className='group' >
                        <img src='./test1.png'></img>
                        <p style={textStyle}>ความสมบูรณ์เม็ดเลือด</p>
                        <div>
                            <EditOutlined style={iconStyle} onClick={() => setIsModalVisible1(true)}/>
                            <a href='#tab' style={{textDecoration:'none', color:'black'}}><SearchOutlined style={iconStyle} onClick={() => setSend([1,hospcode])} /></a>
                        </div>
                    </div>
                    <Modal closable={false} visible={isModalVisible1} centered footer={null}>
                        <ComBlood handleClose1={handleClose1} hospcode={hospcode} />
                    </Modal>
                    <div className='group'>
                        <img src='./test2.png'></img>
                        <p style={textStyle}>ผลตรวจปัสสาวะ</p>
                        <div>
                            <EditOutlined style={iconStyle} onClick={() => setIsModalVisible2(true)}/>
                            <a href='#tab' style={{textDecoration:'none', color:'black'}}><SearchOutlined style={iconStyle} onClick={() => setSend([2,hospcode])} /></a>
                        </div>
                    </div>
                    <Modal closable={false} visible={isModalVisible2} centered footer={null}>
                        <Urine handleClose2={handleClose2} hospcode={hospcode}/>
                    </Modal>
                    <div className='group'>
                        <img src='./test3.png'></img>
                        <p style={textStyle}>ผลตรวจเลือด<br></br> (Blood Chem)</p>
                        <div>
                            <EditOutlined style={iconStyle} onClick={() => setIsModalVisible3(true)}/>
                            <a href='#tab' style={{textDecoration:'none', color:'black'}}><SearchOutlined style={iconStyle} onClick={() => setSend([3,hospcode])} /></a>
                        </div>
                    </div>
                    <Modal closable={false} visible={isModalVisible3} centered footer={null}>
                        <BloodChem handleClose3={handleClose3} hospcode={hospcode}/>
                    </Modal>
                    <div className='group'>
                        <img src='./test4.png'></img>
                        <p style={textStyle}>การตรวจอุจจาระ</p>
                        <div>
                            <EditOutlined style={iconStyle} onClick={() => setIsModalVisible4(true)}/>
                            <a href='#tab' style={{textDecoration:'none', color:'black'}}><SearchOutlined style={iconStyle} onClick={() => setSend([4,hospcode])} /></a>
                        </div>
                    </div>
                    <Modal closable={false} visible={isModalVisible4} centered footer={null}>
                        <Feces handleClose4={handleClose4} hospcode={hospcode}/>
                    </Modal>
                    <div className='group'>
                        <img src='./test6.png'></img>
                        <p style={textStyle}>ผลตรวจอื่นๆ</p>
                        <div>
                            <EditOutlined style={iconStyle} onClick={() => setIsModalVisible5(true)}/>
                            <a href='#tab' style={{textDecoration:'none', color:'black'}}><SearchOutlined style={iconStyle} onClick={() => setSend([6,hospcode])} /></a>
                        </div>
                    </div>
                    <Modal closable={false} visible={isModalVisible5} centered footer={null}>
                        <Others handleClose5={handleClose5} hospcode={hospcode}/>
                    </Modal>
                    <ViewModal send={send}></ViewModal>
                </div>
            </div>
            
        </div>
    )
}
