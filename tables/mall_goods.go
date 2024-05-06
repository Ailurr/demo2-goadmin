package tables

import (
	"demo2-goadmin/models"
	"fmt"
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	"strconv"
	"time"
)

func GetMallGoodsTable(ctx *context.Context) table.Table {

	mallGoods := table.NewDefaultTable(ctx, table.DefaultConfigWithDriver("mysql").SetPrimaryKey("id", db.Int))

	info := mallGoods.GetInfo()

	info.AddField("ID", "id", db.Int).
		FieldFilterable().FieldCopyable()
	info.AddField("标题", "title", db.Varchar)
	info.AddField("现价", "price", db.Decimal)
	info.AddField("原价", "cost_price", db.Decimal)
	info.AddField("默认SKU", "spec", db.Int).FieldJoin(types.Join{
		Table:     "mall_goods_sku",
		Field:     "mall_goods_sku_id",
		JoinField: "id",
	})
	info.AddField("关键词", "keyword", db.Varchar)
	info.AddField("大图", "big_image", db.Varchar).FieldImage("50", "50")
	info.AddField("是否显示首页推荐大图", "is_index_recommend", db.Tinyint).FieldDisplay(func(model types.FieldModel) interface{} {
		if model.Value == "0" {
			return "否"
		}
		return "是"
	})
	info.AddField("创建时间", "created_at", db.Timestamp)
	info.AddField("更新时间", "updated_at", db.Timestamp)

	info.AddField("SKUs", "mall_goods_sku_id", db.Varchar).FieldDisplay(func(model types.FieldModel) interface{} {
		type result struct {
			Spec string `json:"spec"`
		}
		var res []result
		models.Orm.Raw(`SELECT spec FROM mall_goods_sku where mall_goods_id = ?`, model.Row["id"].(int64)).Scan(&res)
		return fmt.Sprint(res)
	})

	info.SetTable("mall_goods").SetTitle("MallGoods").SetDescription("MallGoods")

	formList := mallGoods.GetForm()
	formList.AddField("ID", "id", db.Int, form.Default)
	formList.AddField("标题", "title", db.Varchar, form.Text)
	formList.AddField("原价", "price", db.Decimal, form.Text)
	formList.AddField("原价", "cost_price", db.Decimal, form.Text)
	formList.AddField("默认SKU_ID", "mall_goods_sku_id", db.Int, form.Text).FieldDefault("").FieldDisableWhenCreate()
	formList.AddField("关键词", "keyword", db.Varchar, form.Text)
	formList.AddField("大图", "big_image", db.Varchar, form.Text)
	formList.AddField("是否显示首页推荐大图", "is_index_recommend", db.Tinyint, form.SelectSingle).FieldOptions(types.FieldOptions{
		{Text: "是", Value: "1"},
		{Text: "否", Value: "0"},
	})
	formList.AddField("创建时间", "created_at", db.Timestamp, form.Datetime).FieldDisableWhenUpdate()
	formList.AddField("更新时间", "updated_at", db.Timestamp, form.Datetime).FieldDefault(strconv.FormatInt(time.Now().Unix(), 10))

	formList.SetTable("mall_goods").SetTitle("MallGoods").SetDescription("MallGoods")

	return mallGoods
}
