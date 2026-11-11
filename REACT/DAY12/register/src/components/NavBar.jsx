

import { Link } from "react-router-dom"

const DashBoard = ({ shwoDatas }) => {
  return (
    <nav className="bg-amber-500 px-6 md:px-12 py-6 flex justify-between items-center shadow-md">
      {/* Logo / Brand */}
      <div className="text-3xl font-extrabold text-white tracking-wide cursor-pointer hover:opacity-90 transition-opacity">
        Logo
      </div>

      {/* Navigation Links */}
      <div className="flex items-center gap-6 md:gap-10 text-base md:text-lg font-semibold text-white">
        <Link 
          to="/register" 
          className="hover:text-amber-100 transition-colors"
        >
          Register
        </Link>
        <Link 
          to="/login" 
          className="hover:text-amber-100 transition-colors"
        >
          Login
        </Link>
        <Link 
          to="/" 
          className="bg-amber-600 px-4 py-2 rounded-lg hover:bg-amber-700 transition-colors shadow-sm"
        >
          {shwoDatas == null ? "Home" : shwoDatas.userName}
        </Link>
      </div>
    </nav>
  )
}

export default DashBoard