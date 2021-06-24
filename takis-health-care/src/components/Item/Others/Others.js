import React, { useState, useEffect } from 'react'
import './Others.css'
import { Input, Select, Button } from 'antd';
import { CloseCircleOutlined, CloseOutlined } from '@ant-design/icons';
import axios from '../../../config/axios'

const { Option } = Select
const textStyle = {
    fontFamily: 'Kanit',
    width: '100%',
    textAlign: 'center',
    fontSize: '25px',
    fontWeight: 'bold'
}

const closeStyle = { 
    fontSize: '25px', 
    position: 'absolute', 
    top: '10px', 
    right: '15px' 
}

const selectStyle = { 
    width: '100%', 
    marginBottom: '10px', 
}

const pStyle = { 
    width: '400px', 
    marginBottom: '10px', 
}

const inputStyle = { 
    width: '100%', 
    marginBottom: '10px', 
}

export default function Others(props) { 
    const [list, setList] = useState([])
    const [id, setId] = useState()
    const [placeholder, setPlaceholder] = useState('โปรดเลือกการทดสอบ')
    const [criteriaInput, setCriteriaInput] = useState('')
    const [adviceList, setAdviceList] = useState([])
    const [adviceInput, setAdviceInput] = useState('')
    const hospcode = props.hospcode

    const getItem = async () => {
        const result = await axios.get(`http://localhost:8000/item/6`) //เปลี่ยน
        setList(result.data)
    }

    const getCriteriaById = async () => {
        const result = await axios.get(`http://localhost:8000/criteria/${id}`)
        if (result.data[0] !== undefined) {
            for (let i=0;i<result.data.length;i++){
                if (result.data[i].hospcode == hospcode) { ///แก้ hospcode เอามาจาก payload
                    setPlaceholder(result.data[i].vcenter)
                    break
                } else {
                    setPlaceholder('ยังไม่มีเกณฑ์การทดสอบ')
                }
            }
        }
    }

    const updateCriteriaById = async (id) => {
        if (placeholder === 'ยังไม่มีเกณฑ์การทดสอบ') {
            await axios.post(`http://localhost:8000/criteria/`, {
                vcenter: criteriaInput,
                hospcode: hospcode,
                listid: id
            })
            setPlaceholder(criteriaInput)
            setCriteriaInput('')
            console.log('ADDED')
        } else {
            await axios.put(`http://localhost:8000/criteria/${id}`, {
                hospcode: hospcode,
                vcenter: criteriaInput
            })
            setPlaceholder(criteriaInput)
            console.log('UPDATED')
            setCriteriaInput('')
        }
    }

    const getAdviceById = async () => {
        const result = await axios.get(`http://localhost:8000/advice/${id}`)
        let x = []
        result.data.map(item => {
            if (item.hospcode === hospcode) {
                x.push(item)
            }
        })
        setAdviceList(x)
    }

    const deleteAdviceByid = async (id) => {
        await axios.delete(`http://localhost:8000/advice/${id}`)
        getAdviceById()
    }

    const addAdvice = async () => {
        await axios.post(`http://localhost:8000/advice/`, {
            itemid : id,
            hospcode : hospcode,
            desc : adviceInput,
        })
        console.log('ADVICE ADDED')
        getAdviceById()
        setAdviceInput('')
    }

    useEffect(() => {
        getItem()
    }, [])

    useEffect(() => {
        getCriteriaById()
        getAdviceById()
    }, [id])


    return (
        <div className='comBloodContainer'>
            <div><CloseCircleOutlined onClick={() => props.handleClose5()} style={closeStyle} /></div> 
            <img src='./test6.png'></img>
            <br></br>
            <p style={textStyle}>ผลตรวจอื่นๆ</p>
            <div className='inputSection'>
                <Input.Group compact>
                    <h2>การทดสอบ</h2>
                    <Select size='large' style={selectStyle} onChange={(e) => setId(e)}>
                        {list.map(item => <Option key={item.id} value={item.id}>{item.listname}</Option>)}
                    </Select>
                </Input.Group>
                <h2>เกณฑ์การทดสอบ </h2><p style={pStyle}>{placeholder}</p>
                <Input placeholder='เพิ่ม/แก้ไขเกณฑ์การทดสอบ' size='large' style={inputStyle} defaultValue="" value={criteriaInput} onChange={(e) => setCriteriaInput(e.target.value)} />
                <Button type="primary" size='large' block onClick={() => updateCriteriaById(id)}>UPDATE</Button>
                <br></br>
                <h2>คำแนะนำ</h2>
                <div className='adviceLog'>
                    <ol>
                        {adviceList.map(item => <li key={item.id}>{item.desc} | <CloseOutlined style={{color:'red'}} onClick={()=> deleteAdviceByid(item.id)} /></li>)}
                    </ol>
                </div>
                <Input placeholder='เพิ่มคำแนะนำ' size='large' style={inputStyle} value={adviceInput} onChange={(e) => setAdviceInput(e.target.value)}/>
                <Button type="primary" size='large' block onClick={() => addAdvice()}>ADD</Button>
            </div>
        </div>
    )
}
