import Card from "./components/Card"
import Header from "./components/Header"
function App() {

  return (
    <>
      <div className="bg-neutral-100">
        <div className="container mx-auto max-w-7xl pb-20">
          <Header />
          <div className="flex">
            <Card />
            <Card />
            <Card />
          </div>
        </div>
      </div>
    </>
  )
}

export default App
