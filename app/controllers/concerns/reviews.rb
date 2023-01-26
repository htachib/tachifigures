module Reviews
  extend ActiveSupport::Concern

  included do
    before_action :set_reviews, only: [:connect]
  end

  def set_reviews
    @reviews = [
      {
        name: 'Reilly Chase',
        avatar: 'reilly-chase.jpg',
        title: 'CEO of HostiFi',
        text: "Ryan helped me buy a $130K ARR SaaS. This was my first time buying a business and having Ryan as a trusted third-party who had done this many times before on my side made me feel much more confident with the process. Ryan helped me negotiate the terms with the sell, and took care of all legal paperwork. In the end everything went smoothly for everyone involved. I highly recommend working with Ryan and his team and would use this service again next time!"
      },
      {
        name: 'Scott Dixon',
        avatar: 'scott-dixon.png',
        title: 'Founder of NotifyApp.io',
        text: "Fork Equity was a pleasure to deal with. They were prompt, fair, open to unique terms and really knew what they were doing when acquiring and growing my side project. I held onto a stake which they 10x'd six years later."
      },
      {
        name: 'Steve Jones',
        avatar: 'steve-jones.jpg',
        title: 'Founder of Cross Sell',
        text: "Fork kept an open line of communication to ensure the process moved along at a good speed with regular updates. The transition happened without any interruptions to and I felt our customers were being transferred to a safe pair of hands."
      },
      {
        name: 'Meredith & Adam Alphin',
        avatar: 'meredith-alphin.jpg',
        title: 'Acquired Lobiloo.com',
        text: "Working with Fork Equity was a great experience throughout the transaction.  They were responsive to our requests, did what they said they were going to do, and have been very helpful in the transition period."
      },
      {
        name: 'James Player',
        avatar: 'james-player.jpg',
        title: 'Founder of Merge Freeze',
        text: "Ryan made the process of selling Merge Freeze faster and easier than I ever thought was possible. He was clear and reasonable about what was needed to get the deal done and it's great to see the extra value he's added to the product."
      }
    ].shuffle
  end
end
