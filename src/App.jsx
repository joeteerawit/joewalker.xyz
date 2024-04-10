import CardImage from "./components/CardImage"
import Header from "./components/Header"
function App() {

  return (
    <>
      <div className="bg-neutral-100">
        <div className="container mx-auto max-w-7xl pb-20">
          <div className="bg-white">
            <Header />
            <div className="p-8 space-y-6">
              {Array(3).fill().map((_, i) => (
                <div className="flex justify-between">
                  <CardImage />
                  <CardImage />
                  <CardImage />
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
    </>
  )
}

export default App
