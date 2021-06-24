import React, { useState, useEffect } from 'react'
import axios from '../../config/axios'
import { Divider, List, Typography } from 'antd';
import './ViewModal.css'

export default function ViewModal(props) {
    const [listId, setListId] = useState([])

    const getItem = async () => {
        const groupItem = await axios.get(`http://localhost:8000/item/${props.send[0]}`)
        const criteria = await axios.get(`http://localhost:8000/criteria/hospcode/${props.send[1]}`)
        const advice = await axios.get(`http://localhost:8000/advice/hospcode/${props.send[1]}`)
        groupItem.data.map(item => {
            criteria.data.map(item2 => {
                if (item.id == item2.listid) {
                    item['criteria'] = item2.vcenter
                }
            })
        })
        groupItem.data.map(item => {
            advice.data.map(item2 => {
                if (item.id == item2.itemid) {
                    if (!item[`advice`]) {
                        item[`advice`] = [item2.desc]
                    } else if (item[`advice`]) {
                        item[`advice`].push(item2.desc)
                    }
                }
            })
        })
        setListId(groupItem.data)
    }

    useEffect(() => {
        getItem()
    }, [props.send])


    return (
        <div className='table' id='tab' >
            <Divider orientation="left"><h2 style={{fontFamily:'Kanit', fontWeight:'bold'}}>ผลการทดสอบ</h2></Divider>
            <List
                size='large'
                style={{backgroundColor:'white', fontFamily:'Kanit'}}
                bordered
                dataSource={listId}
                renderItem={item => (
                    <List.Item>
                        <List.Item.Meta
                            title={<h3><b>การทดสอบ : </b>{item.listname}<h5><b>เกณฑ์การทดสอบ : </b>{item.criteria || 'ยังไม่มีเกณฑ์การทดสอบ'}</h5></h3>}
                            description= {
                                <div>
                                    <h4><b>คำแนะนำ</b></h4>
                                    {!item.advice ? 'ยังไม่มีคำแนะนำ' : <ol>{item.advice.map(item => <li>{item}</li>)}</ol>}
                                </div>}
                        />
                    </List.Item>
                )}
            />
        </div>
    )
}
