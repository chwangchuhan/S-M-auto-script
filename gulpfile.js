const {src, dest, run, series} = require('gulp')
const shell = require('gulp-shell')
const path = require('path')
const fs = require('fs')
const clean = require('gulp-clean')
const UUID = require('uuid')

function getUUID () {
    return UUID.v4().substr(0,8)
}

const luaScripts = fs.readdirSync('./')

const sleep = function (time) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve()
        }, time);
    })
}

const checkPackFileNames = [
    /^一键lua脚本.+\.lua/,
    /^换装.+\.lua/,
    /^皇帝戒指.+\.lua/,
]
const filterFileNames = [
    /^(?!一键lua脚本-小星球（经验）完整版)/,
    /^(?!一键lua脚本-影子之书)/,
	/^(?!一键lua脚本-小星球（任务版）)/,
	/^(?!一键lua脚本-浮游岛)/,
	/^(?!一键lua脚本-火山超能场)/,
]


console.log('-------等待打包�??--------');

// 删除build
function cleanBuild () {
    console.log('-------build目录清除�??-------');
    return src('S-M-auto-script').pipe(clean({allowEmpty: true,}))
    
}

// 复制config
function copyConfig () {
    console.log('-------生成config目录-------');
    return src('config/**/*')
        .pipe(dest('S-M-auto-script/config'))
}

// 复制mouse
function copyMouse () {
    console.log('-------生成mouse目录-------');
    return src('mouse/**/*')
        .pipe(dest('S-M-auto-script/mouse'))
}

// 复制打包common
function compileCommon () {
    console.log('-------正在构建common-------');
    return src('lib/common.lua')
            .pipe(dest('S-M-auto-script/lib'))
            .pipe(shell([`luajit -o .\\S-M-auto-script\\lib\\common.lua  S-M-auto-script\\lib\\common.lua`]))
}

function defaultTask (cb) {
  luaScripts.map((fileName) => {
    if (fileName) {
        let res = checkPackFileNames.map((reg) => {
            return reg.test(fileName)
        }).includes(true)

        let filtersRes = filterFileNames.map((reg) => {
            return reg.test(fileName)
        }).includes(false)

        if (res && !filtersRes) {
            console.log('正在打包文件 -----   ' + fileName)
            const uuid = getUUID()

            fs.writeFileSync(`S-M-auto-script/${fileName}`, `check=1;dofile(path_scripts.."S-M-auto-script\\\\lib\\\\${uuid}.lua")`)

            src(fileName)
                .pipe(dest('S-M-auto-script/lib/script'))
                .pipe(shell([`luajit -o .\\S-M-auto-script\\lib\\${uuid}.lua  S-M-auto-script\\lib\\script\\${fileName}`]))
            }
    }
  })
  cb()
}

// 删除build
async function cleanScript () {
    console.log('-------build目录清除�??-------');
    await sleep(15000)
    return src('S-M-auto-script/lib/script').pipe(clean({allowEmpty: true}))
}

exports.default = series(
    cleanBuild,
    copyConfig,
    copyMouse,
    compileCommon,
    defaultTask,
    cleanScript,
);