var __extends = this.__extends || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    __.prototype = b.prototype;
    d.prototype = new __();
};
var OOP;
(function (OOP) {
    var Clazz = (function () {
        function Clazz(id) {
            this.id = id;
        }
        return Clazz;
    })();
    OOP.Clazz = Clazz;

    var ID = (function () {
        function ID(id) {
            this.id = id;
        }
        ID.prototype.getValue = function () {
            return this.id;
        };
        return ID;
    })();
    OOP.ID = ID;

    var SubClazz = (function (_super) {
        __extends(SubClazz, _super);
        function SubClazz(id, value) {
            _super.call(this, id);
            this.value = value;
        }
        return SubClazz;
    })(Clazz);
    OOP.SubClazz = SubClazz;
})(OOP || (OOP = {}));
//# sourceMappingURL=app.js.map
