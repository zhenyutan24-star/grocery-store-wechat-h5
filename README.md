# 小店管家 H5

微信端 H5 私人小杂货店管理与客户下单 MVP。

## 入口

- 客户端：`client.html`
- 商家端：`owner.html`
- 主入口：`index.html`

## 公网预览

仓库公开后可先用 jsDelivr 打开：

- 客户端：https://cdn.jsdelivr.net/gh/zhenyutan24-star/grocery-store-wechat-h5@main/client.html
- 商家端：https://cdn.jsdelivr.net/gh/zhenyutan24-star/grocery-store-wechat-h5@main/owner.html

正式建议在 GitHub Pages / Cloudflare Pages / Netlify / Vercel 部署。

## Supabase 云数据库

执行 `supabase-schema.sql`，然后在商家端填写 Supabase Project URL、anon key、店铺 ID。保存后会生成可发送到微信的客户端和商家端链接。

## 功能

- 客户端浏览商品、分类筛选、搜索、购物车、提交订单、保存收货信息
- 商家端商品管理、称重商品、小数数量、进货单导入、拍照/文字订单导入、接单处理
- 订单状态：待处理、配货中、已完成、已取消
- 云端同步商品、订单、库存和订单状态
- 本地 localStorage 兜底和 JSON 备份

## 安全说明

当前是 MVP，Supabase anon key 会出现在前端链接中。正式商用应增加登录、权限控制和服务端接口。
