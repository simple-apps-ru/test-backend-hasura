import { GraphQLClient } from 'graphql-request'
import { getSdk } from '.'

const client = new GraphQLClient(process.env.HASURA_ENDPOINT || '', {
  headers: {
    'x-hasura-admin-secret': process.env.HASURA_GRAPHQL_ADMIN_SECRET || ''
  }
})

const sdk = getSdk(client)
export default sdk
