import CardWithImage from '../components/CardWithImage'

export default function Blog() {
  return (
    <>
      <h1 className='font-bold text-4xl p-4'>Recent</h1>
      <div className="grid grid-cols-4 gap-4">
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
      </div>
    </>
  )
}
