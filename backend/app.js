const express = require("express");
const graphqlHTTP = require("express-graphql");
const schema = require("./schema/schema");
const cors = require("cors");

async function main() {
  const app = express();

  //allow cross-origin request
  app.use(cors());

  app.use(
    "/graphql",
    graphqlHTTP({
      schema: await schema(),
      graphiql: true
    })
  );

  app.listen(4000, () => {
    console.log("Now listening for request on port 4000.");
  });
}
main();
