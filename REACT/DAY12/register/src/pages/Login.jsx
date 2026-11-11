import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'

const Login = () => {
    const navigate = useNavigate()
    
    const [userEMail, setUserEmail] = useState("")
    const [userPassword, setUserPassword] = useState("")
    const [error, setError] = useState("")

    const handleEmail = (e) => {
        setUserEmail(e.target.value)
    }

    const handlePassword = (e) => {
        setUserPassword(e.target.value)
    }

    const handleClick = (e) => {
        e.preventDefault()

        if (!userEMail || !userPassword) {
             setError("Please Fill the Form")
             return
        }

        const checkDatas = JSON.parse(localStorage.getItem("authdatas")) || []
        const checkEmail = checkDatas.find((e, i) => e.userEMail == userEMail && e.userPassword == userPassword)

        if (!checkEmail) {
            setError("Invalid User")
            return
        }

        localStorage.setItem("isActive", JSON.stringify(checkEmail))
         
        setError("Your Correct user Please Wait 2sec...")

        setTimeout(() => {
            navigate("/")
        }, 2000)
        
        setUserEmail("")
        setUserPassword("")
    }

  return (
    <>
    <div className='min-h-screen bg-gray-50 flex flex-col justify-center items-center px-4'>
        <div className='bg-white shadow-lg rounded-xl p-8 w-full max-w-md mb-6 border border-gray-100 text-center'>
            <h2 className='text-3xl font-extrabold text-gray-900 mb-2'>Login</h2>
            <p className='text-gray-500 text-sm'>Login Here if Already Registered!!</p>
            {error && <p className={`text-sm font-medium mt-3 ${error.includes("Correct") ? "text-green-600" : "text-red-500"}`}>{error}</p>}
        </div>
        <form className='bg-white shadow-lg rounded-xl p-8 w-full max-w-md flex flex-col gap-5 border border-gray-100'>
            <div className='flex flex-col gap-1'>
                <label className='text-xs font-semibold uppercase tracking-wider text-gray-600'>Email</label>
                <input 
                    type="email" 
                    value={userEMail} 
                    onChange={handleEmail} 
                    className='w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-amber-500 focus:border-amber-500 text-sm transition-all shadow-sm' 
                    placeholder='Enter the Email' 
                />
            </div>
            <div className='flex flex-col gap-1'>
                <label className='text-xs font-semibold uppercase tracking-wider text-gray-600'>Password</label>
                <input 
                    type="password" 
                    value={userPassword} 
                    onChange={handlePassword} 
                    className='w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-amber-500 focus:border-amber-500 text-sm transition-all shadow-sm' 
                    placeholder='Enter the Password' 
                />
            </div>
            <div className='pt-2'>
                <button 
                    onClick={handleClick} 
                    className='w-full bg-amber-500 hover:bg-amber-600 text-white font-semibold py-2.5 px-4 rounded-lg shadow-md transition-colors focus:outline-none focus:ring-2 focus:ring-amber-500 focus:ring-offset-2'
                >
                    Login
                </button>
            </div>
        </form>
    </div>
    </>
  )
}

export default Login