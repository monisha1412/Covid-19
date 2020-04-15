//
//  Corona.swift
//  Covid-19
//
//  Created by monica s b on 13/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import Foundation

struct Corona:Codable {
    
    let browserslist : Browserslist?
    let dependencies : Dependency?
    let devDependencies : DevDependency?
    let eslintConfig : EslintConfig?
    let homepage : String?
    let husky : Husky?
    let lintStaged : LintStaged?
    let name : String?
    let privateField : Bool?
    let scripts : Script?
    let version : String?
    
    enum CodingKeys: String, CodingKey {
        case browserslist = "browserslist"
        case dependencies = "dependencies"
        case devDependencies = "devDependencies"
        case eslintConfig = "eslintConfig"
        case homepage = "homepage"
        case husky = "husky"
        case lintStaged = "lint-staged"
        case name = "name"
        case privateField = "private"
        case scripts = "scripts"
        case version = "version"
    }

    
}

//MARK:- Browserslist
struct Browserslist : Codable {
    
    let development : [String]?
    let production : [String]?
    
    enum CodingKeys: String, CodingKey {
        case development = "development"
        case production = "production"
    }
}

//MARK:- Dependency
struct Dependency : Codable {
    
    let juggleresizeObserver : String?
    let materialUicore : String?
    let testingLibraryjestDom : String?
    let testingLibraryreact : String?
    let axios : String?
    let chartjs : String?
    let d3 : String?
    let d3SvgLegend : String?
    let dateFns : String?
    let i : String?
    let install : String?
    let json2csv : String?
    let moment : String?
    let nodeSass : String?
    let npm : String?
    let react : String?
    let reactChartjs2 : String?
    let reactDom : String?
    let reactFeather : String?
    let reactRouterDom : String?
    let reactScripts : String?
    let reactTable : String?
    let sassLint : String?
    let topojson : String?
    
    enum CodingKeys: String, CodingKey {
        case juggleresizeObserver = "@juggle/resize-observer"
        case materialUicore = "@material-ui/core"
        case testingLibraryjestDom = "@testing-library/jest-dom"
        case testingLibraryreact = "@testing-library/react"
        case axios = "axios"
        case chartjs = "chart.js"
        case d3 = "d3"
        case d3SvgLegend = "d3-svg-legend"
        case dateFns = "date-fns"
        case i = "i"
        case install = "install"
        case json2csv = "json2csv"
        case moment = "moment"
        case nodeSass = "node-sass"
        case npm = "npm"
        case react = "react"
        case reactChartjs2 = "react-chartjs-2"
        case reactDom = "react-dom"
        case reactFeather = "react-feather"
        case reactRouterDom = "react-router-dom"
        case reactScripts = "react-scripts"
        case reactTable = "react-table"
        case sassLint = "sass-lint"
        case topojson = "topojson"
    }
}

//MARK:- DevDependency
struct DevDependency : Codable {
    
    let eslint : String?
    let eslintConfigGoogle : String?
    let eslintConfigPrettier : String?
    let eslintPluginPrettier : String?
    let eslintPluginReact : String?
    let husky : String?
    let lintStaged : String?
    let prettier : String?
    let sassLintAutoFix : String?
    
    enum CodingKeys: String, CodingKey {
        case eslint = "eslint"
        case eslintConfigGoogle = "eslint-config-google"
        case eslintConfigPrettier = "eslint-config-prettier"
        case eslintPluginPrettier = "eslint-plugin-prettier"
        case eslintPluginReact = "eslint-plugin-react"
        case husky = "husky"
        case lintStaged = "lint-staged"
        case prettier = "prettier"
        case sassLintAutoFix = "sass-lint-auto-fix"
    }
}

//MARK:- EslintConfig
struct EslintConfig : Codable {
    
    let extendsField : String?
    
    enum CodingKeys: String, CodingKey {
        case extendsField = "extends"
    }
}

//MARK:- LintStaged
struct LintStaged : Codable {
    
    let cssscss : [String]?
    let jsjsx : [String]?
    let jsonymlyamlmdvue : [String]?
    
    enum CodingKeys: String, CodingKey {
        case cssscss = "*.+(css|scss)"
        case jsjsx = "*.+(js|jsx)"
        case jsonymlyamlmdvue = "*.+(json|yml|yaml|md|vue)"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cssscss = try values.decodeIfPresent([String].self, forKey: .cssscss)
        jsjsx = try values.decodeIfPresent([String].self, forKey: .jsjsx)
        jsonymlyamlmdvue = try values.decodeIfPresent([String].self, forKey: .jsonymlyamlmdvue)
    }
    
}

struct Script : Codable {
    
    let build : String?
    let eject : String?
    let eslint : String?
    let eslintfix : String?
    let format : String?
    let scsslint : String?
    let start : String?
    let test : String?
    
    enum CodingKeys: String, CodingKey {
        case build = "build"
        case eject = "eject"
        case eslint = "eslint"
        case eslintfix = "eslint:fix"
        case format = "format"
        case scsslint = "scsslint"
        case start = "start"
        case test = "test"
    }
}


//MARK:- Husky
struct Husky : Codable {
    
    let hooks : Hook?
    
    enum CodingKeys: String, CodingKey {
        case hooks = "hooks"
    }
    
}

struct Hook : Codable {
    
    let preCommit : String?
    
    enum CodingKeys: String, CodingKey {
        case preCommit = "pre-commit"
    }
}



