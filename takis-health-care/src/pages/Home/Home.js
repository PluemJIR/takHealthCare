import React from 'react'
import { Form, Input, Button, notification } from 'antd';
import './Home.css'
import { UserOutlined, LockOutlined } from '@ant-design/icons';
import axios from '../../config/axios'
import localStorageService from '../../services/localStorageService'

const formStyle = {
    width: '100%',
    padding: '0 20px 0 20px'
}

const inputStyle = {
    height: '50px',
    borderRadius: '20px',
    fontFamily: 'Kanit'
}

const buttonStyle = {
    backgroundColor: '#0ac6bf',
    height: '50px',
    textAlign: 'center',
    borderRadius: '50px',
    fontFamily: 'Kanit',
    borderColor: '#0ac6bf',
    fontWeight: 'bold',
}

const h1Style = {
    fontWeight: 'bolder',
    fontSize: '100px',
    margin: '0 0 0 5%',
    height: '120px',
    color: 'white',
    zIndex: '1',
}

const h6Style = {
    fontSize: '20px',
    color: 'white',
    zIndex: '1',
    textAlign: 'center'
}

export default function Home(props) {

    const onFinish = (values) => {
        const body = {
            username : values.username,
            password : values.password
        }
        axios.post(`http://localhost:8000/user/login`, body)
        .then(result => {
                localStorageService.setToken(result.data.token)
                props.setRole('user')
            })
        .catch(err => {
            notification.error({
                message: 'เข้าสู่ระบบล้มเหลว'
            })
        })
    };

    const onFinishFailed = (errorInfo) => {
        console.log('Failed:', errorInfo);
    };

    return (
        <div className='homeContainer'>
            <div className='loginContainer'>
                <div className='logoContainer'>
                    <h1 style={h1Style}>
                        TAKIS
                        <img src='./logo-1.png' ></img>
                    </h1>
                    <hr></hr>
                    <h6 style={h6Style}>Tak Information System - Health Care</h6>
                </div>
                <Form
                    style={formStyle}
                    name="basic"
                    initialValues={{
                        remember: true,
                    }}
                    onFinish={onFinish}
                    onFinishFailed={onFinishFailed}
                >
                    <Form.Item
                        name="username"
                        rules={[
                            {
                                required: true,
                                message: 'ใส่ชื่อผู้ใช้',
                            },
                        ]}
                    >
                        <Input prefix={<UserOutlined/>} size='large' placeholder='ชื่อผู้ใช้' style={inputStyle} />
                    </Form.Item>
                    <Form.Item
                        name="password"
                        rules={[
                            {
                                required: true,
                                message: 'ใส่รหัสผ่าน',
                            },
                        ]}
                    >
                        <Input.Password prefix={<LockOutlined/>}  size='large' placeholder='รหัสผ่าน' style={inputStyle} ></Input.Password>
                    </Form.Item>
                    <Form.Item>
                        <Button type="primary" htmlType="submit" block size='large' shape='round' style={buttonStyle}>
                            ค้นหาข้อมูล
                        </Button>
                    </Form.Item>
                </Form>
                <h4>สำนักงานสาธารณสุขจังหวัดตาก</h4>
            </div>
        </div>
    )
}
