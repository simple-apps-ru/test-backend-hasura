import admin from 'firebase-admin'

export default function () {
  admin.initializeApp({
    credential: admin.credential.cert(require('/serviceAccount.json'))
  })
}
