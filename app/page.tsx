import CardWithImage from './components/CardWithImage'

export default function Home() {
  return (
    <>
      <div className="flex flex-col space-y-12">
        <Topic title="Recent" />
        <Topic title="Tech" />
        <Topic title="Thought" />
      </div>
    </>
  )
}

const Topic = ({ title }: { title: string }) => {
  return (
    <>
      <div className="flex flex-col space-y-2">
        <a className="font-semibold text-3xl p-4">{title}</a>
        <div className="flex flex-row space-x-2">
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
          <CardWithImage />
        </div>
        <ReadMoreBtn className="flex justify-end" />
      </div>
    </>
  )
}

const ReadMoreBtn = ({ className }: { className?: string }) => {
  return (
    <>
      <div className={`${className}`}>
        <div className="max-w-sm">
          <a
            href="#"
            className="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
          >
            Read more
            <svg
              className="rtl:rotate-180 w-3.5 h-3.5 ms-2"
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 14 10"
            >
              <path
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d="M1 5h12m0 0L9 1m4 4L9 9"
              />
            </svg>
          </a>
        </div>
      </div>
    </>
  )
}
