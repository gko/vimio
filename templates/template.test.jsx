import { expect } from "chai";
import sinon from "sinon";

import lib from "lib/lib";

describe("lib", () => {
    describe("method", () => {
        let sandbox;
        let component;

        beforeAll(() => {
            sandbox = sinon.sandbox.create();
        });

        beforeEach(() => {
            link = shallow(<Component />);
        });

        afterEach(() => {
            sandbox.resetHistory();
        });

        afterAll(() => {
            sandbox.restore();
        });

        it("should render Component", () => {
            expect(component).to.exist;
        });
    });
});
