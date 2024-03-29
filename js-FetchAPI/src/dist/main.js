/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is not neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./api/cliente.js":
/*!************************!*\
  !*** ./api/cliente.js ***!
  \************************/
/*! namespace exports */
/*! export cadastrarClientes [provided] [no usage info] [missing usage info prevents renaming] */
/*! export deletaCliente [provided] [no usage info] [missing usage info prevents renaming] */
/*! export detalhaCliente [provided] [no usage info] [missing usage info prevents renaming] */
/*! export editaCliente [provided] [no usage info] [missing usage info prevents renaming] */
/*! export listarClientes [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__.r, __webpack_exports__, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"listarClientes\": () => /* binding */ listarClientes,\n/* harmony export */   \"cadastrarClientes\": () => /* binding */ cadastrarClientes,\n/* harmony export */   \"deletaCliente\": () => /* binding */ deletaCliente,\n/* harmony export */   \"detalhaCliente\": () => /* binding */ detalhaCliente,\n/* harmony export */   \"editaCliente\": () => /* binding */ editaCliente\n/* harmony export */ });\nconst listarClientes = () => {\n  return fetch(\"http://localhost:4000/clientes\")\n    .then( resposta => {\n      return resposta.json();\n    })\n    .then(json => {\n      return json;\n    });\n};\n\nconst cadastrarClientes = (nome, cpf) => {\n    const json = JSON.stringify({\n        nome: nome,\n        cpf: cpf\n    });\n    \n    return fetch('http://localhost:4000/clientes/cliente', {\n        method: 'post',\n        headers: {\n            'Content-type': 'application/json'\n        },\n        body: json\n    })\n    .then(resposta => {\n        return resposta.body;\n    });\n}\n\nconst deletaCliente = id => {\n    return fetch(`http://localhost:4000/clientes/cliente/${id}`, {\n        method: 'delete'\n    });\n}\n\nconst detalhaCliente = id => {\n    return fetch(`http://localhost:4000/clientes/cliente/${id}`)\n    .then(resposta => {\n        return resposta.json();\n    })\n    .then(json => {\n        return json;\n    });\n}\n\nconst editaCliente = (id, cpf, nome) => {\n    const json = JSON.stringify({\n        nome: nome,\n        cpf: cpf\n    });\n\n    return fetch(`http://localhost:4000/clientes/cliente/${id}`, {\n        method: 'put',\n        headers: {\n            'Content-Type': 'application/json'\n        },\n        body: json\n    })\n    .then(resposta => {\n        return resposta;\n    });\n}\n\n\n\n//# sourceURL=webpack://js-fetchapi/./api/cliente.js?");

/***/ }),

/***/ "./componentes/cadastro/cadastro-clientes.js":
/*!***************************************************!*\
  !*** ./componentes/cadastro/cadastro-clientes.js ***!
  \***************************************************/
/*! namespace exports */
/*! export default [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_exports__, __webpack_require__.r, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => __WEBPACK_DEFAULT_EXPORT__\n/* harmony export */ });\n/* harmony import */ var _valida_validaCPF_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../valida/validaCPF.js */ \"./componentes/valida/validaCPF.js\");\n/* harmony import */ var _api_cliente_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../api/cliente.js */ \"./api/cliente.js\");\n\n\n\nconst eventoEnvia = (form) => {\n  form.addEventListener(\"submit\", (event) => {\n    event.preventDefault();\n\n    const nome = event.target.querySelector(\"[data-nome]\").value;\n    const cpf = event.target.querySelector(\"[data-cpf]\").value;\n\n    if ((0,_valida_validaCPF_js__WEBPACK_IMPORTED_MODULE_0__.default)(cpf) && cpf.length === 11) {\n      (0,_api_cliente_js__WEBPACK_IMPORTED_MODULE_1__.cadastrarClientes)(nome, cpf);\n    } else {\n      alert(\"O CPF não é válido\");\n    }\n  });\n};\n\n/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (eventoEnvia);\n\n\n//# sourceURL=webpack://js-fetchapi/./componentes/cadastro/cadastro-clientes.js?");

/***/ }),

/***/ "./componentes/cadastro/componente-cadastro.js":
/*!*****************************************************!*\
  !*** ./componentes/cadastro/componente-cadastro.js ***!
  \*****************************************************/
/*! namespace exports */
/*! export default [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_exports__, __webpack_require__.r, __webpack_require__, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => __WEBPACK_DEFAULT_EXPORT__\n/* harmony export */ });\nconst { default: eventoEnvia } = __webpack_require__(/*! ./cadastro-clientes */ \"./componentes/cadastro/cadastro-clientes.js\");\n\nconst inicializaCadastro = () => {\n  const form = document.createElement(\"form\");\n\n  const cadastro = `\n<div class=\"container\">\n  <div class=\"form-group\">\n    <label>CPF</label>\n    <input\n      type=\"number\"\n      class=\"form-control\"\n      data-cpf\n      placeholder=\"Digite seu CPF aqui\"\n    />\n  </div>\n  <div class=\"form-group\">\n    <label>Nome</label>\n    <input\n      type=\"text\"\n      class=\"form-control\"\n      data-nome\n      placeholder=\"Digite seu nome aqui\"\n    />\n  </div>\n  <button type=\"submit\" class=\"btn btn-primary\">\n    Enviar\n  </button>\n</div>\n`;\n\n  form.innerHTML = cadastro;\n\n  eventoEnvia(form);\n  return form;\n};\n\n/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (inicializaCadastro);\n\n\n//# sourceURL=webpack://js-fetchapi/./componentes/cadastro/componente-cadastro.js?");

/***/ }),

/***/ "./componentes/listagem/listagem-clientes.js":
/*!***************************************************!*\
  !*** ./componentes/listagem/listagem-clientes.js ***!
  \***************************************************/
/*! namespace exports */
/*! export default [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_exports__, __webpack_require__.r, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => __WEBPACK_DEFAULT_EXPORT__\n/* harmony export */ });\n/* harmony import */ var _api_cliente_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../api/cliente.js */ \"./api/cliente.js\");\n/* harmony import */ var _assets_css_clientes_css__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../assets/css/clientes.css */ \"./assets/css/clientes.css\");\n\n\n\nconst removeCliente = (id) => {\n  if (confirm(\"Deseja deletar o cliente?\")) {\n    (0,_api_cliente_js__WEBPACK_IMPORTED_MODULE_0__.deletaCliente)(id);\n    document.location.reload();\n  }\n};\n\nconst criaCorpoTabela = (tabela) => {\n  const corpoTabela = document.createElement(\"tbody\");\n\n  const exibeCliente = (cpf, nome, id) => {\n    const linha = document.createElement(\"tr\");\n    const conteudoLinha = `\n    <td>${cpf}</td>\n    <td>${nome}</td>\n    <button type=\"button\" class=\"btn btn-danger\" onclick=\"removeCliente(${id})\">Excluir</button>\n    <a href=\"./componentes/edita/edita-clientes.html?id=${id}\"><button type=\"button\" class=\"btn btn-info\">Editar</button></a>\n    `;\n\n    linha.innerHTML = conteudoLinha;\n    return linha;\n  };\n\n  (0,_api_cliente_js__WEBPACK_IMPORTED_MODULE_0__.listarClientes)().then((clientes) => {\n    clientes.forEach((indice) => {\n      corpoTabela.appendChild(exibeCliente(indice.cpf, indice.nome, indice.id));\n    });\n  });\n\n  tabela.appendChild(corpoTabela);\n};\n\nconst inicializaTabela = () => {\n  const cabecalho = `\n  <thead class=\"thead-dark\">\n  <tr>\n  <th scope=\"col\">CPF</th>\n  <th scope=\"col\">Nome</th>\n  <th scope=\"col\"></th>\n  <th scope=\"col\">\n  <a class=\"btn btn-primary\" onclick=\"navegacao('/cadastro'); return false;>Novo Cliente</a>\n  </th>\n  </tr>\n  </thead>\n  `;\n\n  const tabela = document.createElement(\"table\");\n  tabela.innerHTML = cabecalho;\n  tabela.classList.add(\"table\");\n\n  criaCorpoTabela(tabela);\n\n  return tabela;\n};\n\n/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (inicializaTabela);\n\n\n//# sourceURL=webpack://js-fetchapi/./componentes/listagem/listagem-clientes.js?");

/***/ }),

/***/ "./componentes/valida/validaCPF.js":
/*!*****************************************!*\
  !*** ./componentes/valida/validaCPF.js ***!
  \*****************************************/
/*! namespace exports */
/*! export default [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_exports__, __webpack_require__.r, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => __WEBPACK_DEFAULT_EXPORT__\n/* harmony export */ });\nfunction verificaCPFInvalidos(cpf) {\n    const cpfsInvalidos = [\n      \"11111111111\",\n      \"22222222222\",\n      \"33333333333\",\n      \"44444444444\",\n      \"55555555555\",\n      \"66666666666\",\n      \"77777777777\",\n      \"88888888888\",\n      \"99999999999\",\n      \"00000000000\"\n    ];\n  \n    return cpfsInvalidos.indexOf(cpf) === -1;\n  }\n  \n  function verificaPrimeiroDigito(cpf) {\n    const peso = 11;\n    const totalDeDigitosPrimeiraParte = 9;\n    const digitoDeVerificacao = parseInt(cpf.substring(9, 10));\n    return verificaDigito(\n      cpf,\n      totalDeDigitosPrimeiraParte,\n      peso,\n      digitoDeVerificacao\n    );\n  }\n  \n  function verificaSegundoDigito(cpf) {\n    const peso = 12;\n    const totalDeDigitosSegundaParte = 10;\n    const digitoDeVerificacao = parseInt(cpf.substring(10, 11));\n    return verificaDigito(\n      cpf,\n      totalDeDigitosSegundaParte,\n      peso,\n      digitoDeVerificacao\n    );\n  }\n  \n  function verificaDigito(cpf, totalDeDigitos, peso, digitoDeVerificacao) {\n    const soma = somaNumerosCPF(cpf, totalDeDigitos, peso);\n    const resto = (soma * 10) % 11;\n    return resto === digitoDeVerificacao;\n  }\n  \n  function somaNumerosCPF(cpf, totalDeDigitos, peso) {\n    let soma = 0;\n    for (let indice = 1; indice <= totalDeDigitos; indice++) {\n      soma += parseInt(cpf.substring(indice - 1, indice)) * (peso - indice);\n    }\n    return soma;\n  }\n\n  function validaCPF(cpf) {\n    return (\n      verificaPrimeiroDigito(cpf) &&\n      verificaSegundoDigito(cpf) &&\n      verificaCPFInvalidos(cpf)\n    );\n  }\n\n  /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (validaCPF);\n\n//# sourceURL=webpack://js-fetchapi/./componentes/valida/validaCPF.js?");

/***/ }),

/***/ "./main.js":
/*!*****************!*\
  !*** ./main.js ***!
  \*****************/
/*! namespace exports */
/*! exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.r, __webpack_exports__, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _router__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./router */ \"./router.js\");\n\n\n(0,_router__WEBPACK_IMPORTED_MODULE_0__.navegacao)(window.location.pathname);\n\n//# sourceURL=webpack://js-fetchapi/./main.js?");

/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./assets/css/clientes.css":
/*!***********************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./assets/css/clientes.css ***!
  \***********************************************************************/
/*! namespace exports */
/*! export default [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.n, __webpack_exports__, __webpack_require__.r, module.id, __webpack_require__.d, __webpack_require__.*, module */
/***/ ((module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => __WEBPACK_DEFAULT_EXPORT__\n/* harmony export */ });\n/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../node_modules/css-loader/dist/runtime/api.js */ \"./node_modules/css-loader/dist/runtime/api.js\");\n/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0__);\n// Imports\n\nvar ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_0___default()(function(i){return i[1]});\n// Module\n___CSS_LOADER_EXPORT___.push([module.id, \".navbar-brand, .nav-link {\\n    text-align: center;\\n    font-family: \\\"Pacifico\\\";\\n    font-size: 40px;\\n}\\n\\n\", \"\"]);\n// Exports\n/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (___CSS_LOADER_EXPORT___);\n\n\n//# sourceURL=webpack://js-fetchapi/./assets/css/clientes.css?./node_modules/css-loader/dist/cjs.js");

/***/ }),

/***/ "./node_modules/css-loader/dist/runtime/api.js":
/*!*****************************************************!*\
  !*** ./node_modules/css-loader/dist/runtime/api.js ***!
  \*****************************************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/*! CommonJS bailout: module.exports is used directly at 9:0-14 */
/***/ ((module) => {

eval("\n\n/*\n  MIT License http://www.opensource.org/licenses/mit-license.php\n  Author Tobias Koppers @sokra\n*/\n// css base code, injected by the css-loader\n// eslint-disable-next-line func-names\nmodule.exports = function (cssWithMappingToString) {\n  var list = []; // return the list of modules as css string\n\n  list.toString = function toString() {\n    return this.map(function (item) {\n      var content = cssWithMappingToString(item);\n\n      if (item[2]) {\n        return \"@media \".concat(item[2], \" {\").concat(content, \"}\");\n      }\n\n      return content;\n    }).join('');\n  }; // import a list of modules into the list\n  // eslint-disable-next-line func-names\n\n\n  list.i = function (modules, mediaQuery, dedupe) {\n    if (typeof modules === 'string') {\n      // eslint-disable-next-line no-param-reassign\n      modules = [[null, modules, '']];\n    }\n\n    var alreadyImportedModules = {};\n\n    if (dedupe) {\n      for (var i = 0; i < this.length; i++) {\n        // eslint-disable-next-line prefer-destructuring\n        var id = this[i][0];\n\n        if (id != null) {\n          alreadyImportedModules[id] = true;\n        }\n      }\n    }\n\n    for (var _i = 0; _i < modules.length; _i++) {\n      var item = [].concat(modules[_i]);\n\n      if (dedupe && alreadyImportedModules[item[0]]) {\n        // eslint-disable-next-line no-continue\n        continue;\n      }\n\n      if (mediaQuery) {\n        if (!item[2]) {\n          item[2] = mediaQuery;\n        } else {\n          item[2] = \"\".concat(mediaQuery, \" and \").concat(item[2]);\n        }\n      }\n\n      list.push(item);\n    }\n  };\n\n  return list;\n};\n\n//# sourceURL=webpack://js-fetchapi/./node_modules/css-loader/dist/runtime/api.js?");

/***/ }),

/***/ "./assets/css/clientes.css":
/*!*********************************!*\
  !*** ./assets/css/clientes.css ***!
  \*********************************/
/*! namespace exports */
/*! export default [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.n, __webpack_exports__, __webpack_require__.r, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => __WEBPACK_DEFAULT_EXPORT__\n/* harmony export */ });\n/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ \"./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js\");\n/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _node_modules_css_loader_dist_cjs_js_clientes_css__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !!../../node_modules/css-loader/dist/cjs.js!./clientes.css */ \"./node_modules/css-loader/dist/cjs.js!./assets/css/clientes.css\");\n\n            \n\nvar options = {};\n\noptions.insert = \"head\";\noptions.singleton = false;\n\nvar update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_clientes_css__WEBPACK_IMPORTED_MODULE_1__.default, options);\n\n\n\n/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_css_loader_dist_cjs_js_clientes_css__WEBPACK_IMPORTED_MODULE_1__.default.locals || {});\n\n//# sourceURL=webpack://js-fetchapi/./assets/css/clientes.css?");

/***/ }),

/***/ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js":
/*!****************************************************************************!*\
  !*** ./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js ***!
  \****************************************************************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module, __webpack_require__.nc, __webpack_require__.* */
/*! CommonJS bailout: module.exports is used directly at 230:0-14 */
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("\n\nvar isOldIE = function isOldIE() {\n  var memo;\n  return function memorize() {\n    if (typeof memo === 'undefined') {\n      // Test for IE <= 9 as proposed by Browserhacks\n      // @see http://browserhacks.com/#hack-e71d8692f65334173fee715c222cb805\n      // Tests for existence of standard globals is to allow style-loader\n      // to operate correctly into non-standard environments\n      // @see https://github.com/webpack-contrib/style-loader/issues/177\n      memo = Boolean(window && document && document.all && !window.atob);\n    }\n\n    return memo;\n  };\n}();\n\nvar getTarget = function getTarget() {\n  var memo = {};\n  return function memorize(target) {\n    if (typeof memo[target] === 'undefined') {\n      var styleTarget = document.querySelector(target); // Special case to return head of iframe instead of iframe itself\n\n      if (window.HTMLIFrameElement && styleTarget instanceof window.HTMLIFrameElement) {\n        try {\n          // This will throw an exception if access to iframe is blocked\n          // due to cross-origin restrictions\n          styleTarget = styleTarget.contentDocument.head;\n        } catch (e) {\n          // istanbul ignore next\n          styleTarget = null;\n        }\n      }\n\n      memo[target] = styleTarget;\n    }\n\n    return memo[target];\n  };\n}();\n\nvar stylesInDom = [];\n\nfunction getIndexByIdentifier(identifier) {\n  var result = -1;\n\n  for (var i = 0; i < stylesInDom.length; i++) {\n    if (stylesInDom[i].identifier === identifier) {\n      result = i;\n      break;\n    }\n  }\n\n  return result;\n}\n\nfunction modulesToDom(list, options) {\n  var idCountMap = {};\n  var identifiers = [];\n\n  for (var i = 0; i < list.length; i++) {\n    var item = list[i];\n    var id = options.base ? item[0] + options.base : item[0];\n    var count = idCountMap[id] || 0;\n    var identifier = \"\".concat(id, \" \").concat(count);\n    idCountMap[id] = count + 1;\n    var index = getIndexByIdentifier(identifier);\n    var obj = {\n      css: item[1],\n      media: item[2],\n      sourceMap: item[3]\n    };\n\n    if (index !== -1) {\n      stylesInDom[index].references++;\n      stylesInDom[index].updater(obj);\n    } else {\n      stylesInDom.push({\n        identifier: identifier,\n        updater: addStyle(obj, options),\n        references: 1\n      });\n    }\n\n    identifiers.push(identifier);\n  }\n\n  return identifiers;\n}\n\nfunction insertStyleElement(options) {\n  var style = document.createElement('style');\n  var attributes = options.attributes || {};\n\n  if (typeof attributes.nonce === 'undefined') {\n    var nonce =  true ? __webpack_require__.nc : 0;\n\n    if (nonce) {\n      attributes.nonce = nonce;\n    }\n  }\n\n  Object.keys(attributes).forEach(function (key) {\n    style.setAttribute(key, attributes[key]);\n  });\n\n  if (typeof options.insert === 'function') {\n    options.insert(style);\n  } else {\n    var target = getTarget(options.insert || 'head');\n\n    if (!target) {\n      throw new Error(\"Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.\");\n    }\n\n    target.appendChild(style);\n  }\n\n  return style;\n}\n\nfunction removeStyleElement(style) {\n  // istanbul ignore if\n  if (style.parentNode === null) {\n    return false;\n  }\n\n  style.parentNode.removeChild(style);\n}\n/* istanbul ignore next  */\n\n\nvar replaceText = function replaceText() {\n  var textStore = [];\n  return function replace(index, replacement) {\n    textStore[index] = replacement;\n    return textStore.filter(Boolean).join('\\n');\n  };\n}();\n\nfunction applyToSingletonTag(style, index, remove, obj) {\n  var css = remove ? '' : obj.media ? \"@media \".concat(obj.media, \" {\").concat(obj.css, \"}\") : obj.css; // For old IE\n\n  /* istanbul ignore if  */\n\n  if (style.styleSheet) {\n    style.styleSheet.cssText = replaceText(index, css);\n  } else {\n    var cssNode = document.createTextNode(css);\n    var childNodes = style.childNodes;\n\n    if (childNodes[index]) {\n      style.removeChild(childNodes[index]);\n    }\n\n    if (childNodes.length) {\n      style.insertBefore(cssNode, childNodes[index]);\n    } else {\n      style.appendChild(cssNode);\n    }\n  }\n}\n\nfunction applyToTag(style, options, obj) {\n  var css = obj.css;\n  var media = obj.media;\n  var sourceMap = obj.sourceMap;\n\n  if (media) {\n    style.setAttribute('media', media);\n  } else {\n    style.removeAttribute('media');\n  }\n\n  if (sourceMap && typeof btoa !== 'undefined') {\n    css += \"\\n/*# sourceMappingURL=data:application/json;base64,\".concat(btoa(unescape(encodeURIComponent(JSON.stringify(sourceMap)))), \" */\");\n  } // For old IE\n\n  /* istanbul ignore if  */\n\n\n  if (style.styleSheet) {\n    style.styleSheet.cssText = css;\n  } else {\n    while (style.firstChild) {\n      style.removeChild(style.firstChild);\n    }\n\n    style.appendChild(document.createTextNode(css));\n  }\n}\n\nvar singleton = null;\nvar singletonCounter = 0;\n\nfunction addStyle(obj, options) {\n  var style;\n  var update;\n  var remove;\n\n  if (options.singleton) {\n    var styleIndex = singletonCounter++;\n    style = singleton || (singleton = insertStyleElement(options));\n    update = applyToSingletonTag.bind(null, style, styleIndex, false);\n    remove = applyToSingletonTag.bind(null, style, styleIndex, true);\n  } else {\n    style = insertStyleElement(options);\n    update = applyToTag.bind(null, style, options);\n\n    remove = function remove() {\n      removeStyleElement(style);\n    };\n  }\n\n  update(obj);\n  return function updateStyle(newObj) {\n    if (newObj) {\n      if (newObj.css === obj.css && newObj.media === obj.media && newObj.sourceMap === obj.sourceMap) {\n        return;\n      }\n\n      update(obj = newObj);\n    } else {\n      remove();\n    }\n  };\n}\n\nmodule.exports = function (list, options) {\n  options = options || {}; // Force single-tag solution on IE6-9, which has a hard limit on the # of <style>\n  // tags it will allow on a page\n\n  if (!options.singleton && typeof options.singleton !== 'boolean') {\n    options.singleton = isOldIE();\n  }\n\n  list = list || [];\n  var lastIdentifiers = modulesToDom(list, options);\n  return function update(newList) {\n    newList = newList || [];\n\n    if (Object.prototype.toString.call(newList) !== '[object Array]') {\n      return;\n    }\n\n    for (var i = 0; i < lastIdentifiers.length; i++) {\n      var identifier = lastIdentifiers[i];\n      var index = getIndexByIdentifier(identifier);\n      stylesInDom[index].references--;\n    }\n\n    var newLastIdentifiers = modulesToDom(newList, options);\n\n    for (var _i = 0; _i < lastIdentifiers.length; _i++) {\n      var _identifier = lastIdentifiers[_i];\n\n      var _index = getIndexByIdentifier(_identifier);\n\n      if (stylesInDom[_index].references === 0) {\n        stylesInDom[_index].updater();\n\n        stylesInDom.splice(_index, 1);\n      }\n    }\n\n    lastIdentifiers = newLastIdentifiers;\n  };\n};\n\n//# sourceURL=webpack://js-fetchapi/./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js?");

/***/ }),

/***/ "./router.js":
/*!*******************!*\
  !*** ./router.js ***!
  \*******************/
/*! namespace exports */
/*! export navegacao [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.r, __webpack_exports__, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"navegacao\": () => /* binding */ navegacao\n/* harmony export */ });\n/* harmony import */ var _componentes_listagem_listagem_clientes__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./componentes/listagem/listagem-clientes */ \"./componentes/listagem/listagem-clientes.js\");\n/* harmony import */ var _componentes_cadastro_componente_cadastro__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./componentes/cadastro/componente-cadastro */ \"./componentes/cadastro/componente-cadastro.js\");\n\n\n\nconst rotas = {\n    \"/\": _componentes_listagem_listagem_clientes__WEBPACK_IMPORTED_MODULE_0__.default,\n    \"/cadastro\": _componentes_cadastro_componente_cadastro__WEBPACK_IMPORTED_MODULE_1__.default\n}\n\nconst rootDiv = document.querySelector('[data-container]')\n\nconst navegacao = pathname => {\n    window.history.pushState({}, pathname, window.location.origin + pathname)\n    rootDiv.innerHTML = '';\n    const iniciarRota = rotas(window.location.pathname)\n    rootDiv.appendChild(iniciarRota());\n}\n\n\n\n//# sourceURL=webpack://js-fetchapi/./router.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			id: moduleId,
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	(() => {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = (module) => {
/******/ 			var getter = module && module.__esModule ?
/******/ 				() => module['default'] :
/******/ 				() => module;
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => Object.prototype.hasOwnProperty.call(obj, prop)
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	// startup
/******/ 	// Load entry module
/******/ 	__webpack_require__("./main.js");
/******/ 	// This entry module used 'exports' so it can't be inlined
/******/ })()
;