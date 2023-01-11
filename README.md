# 過去問合否判定システム

## 概要
関西学院大学工学部入試の得点から合否予測を行います。
この合否判定は2022年度の関西学院大学入試の合格最低点をもとに作成しました。
このプログラムはruby3.1.0をインストールしたubuntuで作成しました。

## インストール方法

## 使用パッケージのインストール方法
`gem instal thor`
https://qiita.com/ongaeshi/items/96f2c57111b1162f80f1
を参照しました。

## 使用方法
インストールした先で
`ruby lasthw.rb [course]`と入力してください。
`[course]`の欄には`material`、`electrical`、`program`、`artificial`を入力すること。
それぞれ物質工学課程、電気電子工学課程、情報科学課程、知能・機械工学課程です。
その後、`[English] [mathematics] [science]`の順に点数を半角で入力してください。
