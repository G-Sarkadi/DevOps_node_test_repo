const request = require("supertest");
const app = require("./app");

describe("Test the root path", () => {
  test("Returns 'Hello World!'", () => {
    return request(app)
      .get("/")
      .expect("Hello World!\n")
      .expect(200);
  });
});