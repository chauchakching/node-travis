const R = require('ramda')

it('should pass', () => {
  expect(true).toBe(true)
})

it('create a large array that would require memory >10 MB', () => {
  const a = R.range(4*1000*1000)
  expect(a).toBeTruthy()
})