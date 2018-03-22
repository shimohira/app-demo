import listingRouter from './routers/listing';

export default (app) => {
  app.use('/', listingRouter);
};
