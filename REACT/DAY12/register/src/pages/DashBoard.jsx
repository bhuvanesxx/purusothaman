
import { useEffect, useState } from "react"

const DashBoard = () => {
 const [shwoDatas, setShowiDatas] = useState({})

 useEffect(()=>{
   const datas = JSON.parse(localStorage.getItem("isActive"))
   if (datas) {
     setShowiDatas(datas)
   }
 },[])

  return (
    <>
     <h1>{shwoDatas?.userName}</h1>
     <p>{shwoDatas?.userEMail}</p>
    </>
  )
}

export default DashBoard