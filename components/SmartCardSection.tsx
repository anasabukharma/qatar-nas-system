
import React, { useState } from 'react';
import { List, AlertCircle } from 'lucide-react';

const SmartCardSection: React.FC = () => {
  const [showModal, setShowModal] = useState(false);

  const handleSmartCardClick = () => {
    setShowModal(true);
  };

  return (
    <>
      <div className="w-full">
        <div className="flex items-center gap-2 mb-6">
          <List size={18} className="text-[#333]" />
          <span className="text-[16px] font-bold">الدخول باستخدام البطاقة الذكية</span>
        </div>

        <div className="space-y-4 pr-2">
          <button className="nas-btn-blue" onClick={handleSmartCardClick}>
            الدخول بالبطاقة الذكية
          </button>

          <div className="pt-2">
            <a href="#" className="nas-link-blue">
              أسئلة متكررة عن البطاقة الذكية
            </a>
          </div>
        </div>
      </div>

      {/* Device Not Supported Modal */}
      {showModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
          <div className="nas-well bg-[#f5f5f5] border border-[#dcdcdc] rounded-[4px] shadow-lg max-w-[500px] w-full overflow-hidden">
            <div className="nas-well-header py-4 bg-[#f5f5f5] border-b border-[#dcdcdc]">
              <div className="flex items-center gap-3 pr-4">
                <AlertCircle size={24} className="text-[#d9534f]" />
                <h2 className="text-[19px] font-bold text-[#333]">تنبيه</h2>
              </div>
            </div>
            <div className="p-8 text-right">
              <p className="text-[16px] leading-relaxed text-[#333]">
                الجهاز غير مدعوم
              </p>
            </div>
            <div className="p-4 px-8 border-t border-gray-200 flex justify-center items-center bg-[#f9f9f9]">
              <button 
                className="nas-btn-blue min-w-[120px]"
                onClick={() => setShowModal(false)}
              >
                موافق
              </button>
            </div>
          </div>
        </div>
      )}
    </>
  );
};

export default SmartCardSection;
