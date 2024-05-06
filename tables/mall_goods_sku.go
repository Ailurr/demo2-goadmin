package tables

import (
	"demo2-goadmin/models"
	"fmt"
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	"strconv"
	"time"
)

func GetMallGoodsSkuTable(ctx *context.Context) table.Table {

	mallGoodsSku := table.NewDefaultTable(ctx, table.DefaultConfigWithDriver("mysql").SetPrimaryKey("id", db.Int))

	info := mallGoodsSku.GetInfo()

	info.AddField("ID", "id", db.Int).
		FieldFilterable().FieldCopyable()
	info.AddField("所属商品ID", "mall_goods_id", db.Int).FieldCopyable().FieldFilterable()
	info.AddField("规格详情", "spec", db.Varchar)
	info.AddField("现价", "price", db.Decimal)
	info.AddField("原价", "cost_price", db.Decimal)
	info.AddField("库存量", "stock", db.Int)
	info.AddField("状态", "status", db.Tinyint).FieldDisplay(func(model types.FieldModel) interface{} {
		if model.Value == "0" {
			return "不可用"
		}
		return "可用"
	})
	info.AddField("创建时间", "created_at", db.Timestamp)
	info.AddField("更新时间", "updated_at", db.Timestamp)

	info.SetTable("mall_goods_sku").SetTitle("商品SKU表").SetDescription("商品规格详情")

	formList := mallGoodsSku.GetForm()
	formList.AddField("ID", "id", db.Int, form.Default)
	formList.AddField("所属商品ID", "mall_goods_id", db.Int, form.Text)
	formList.AddField("规格详情", "spec", db.Varchar, form.Text)
	formList.AddField("现价", "price", db.Decimal, form.Text)
	formList.AddField("原价", "cost_price", db.Decimal, form.Text)
	formList.AddField("库存量", "stock", db.Int, form.Number).FieldDefault("0")
	formList.AddField("状态", "status", db.Tinyint, form.SelectSingle).FieldOptions(types.FieldOptions{
		{Text: "可用", Value: "1"},
		{Text: "不可用", Value: "0"},
	}).FieldDefault("0")
	formList.AddField("创建时间", "created_at", db.Timestamp, form.Datetime).FieldDisableWhenUpdate()
	formList.AddField("更新时间", "updated_at", db.Timestamp, form.Datetime).FieldDefault(strconv.FormatInt(time.Now().Unix(), 10))

	formList.SetPostHook(func(values form2.Values) error {
		// if goods default sku if null,set it.
		var defaultSkuId int
		models.Orm.Raw(`SELECT "mall_goods_sku_id" FROM mall_goods WHERE id = ?`, values.Get("mall_goods_id")).Scan(&defaultSkuId)
		if defaultSkuId == 0 {
			rows := models.Orm.Exec("UPDATE mall_goods SET mall_goods_sku_id =? WHERE id = ?", values.Get("id"), values.Get("mall_goods_id")).RowsAffected
			if rows == 0 || rows == 1 {
				return nil
			} else {
				return fmt.Errorf("rows affected is not 0 or 1, but %d", rows)
			}
		}
		return nil
	})

	formList.SetTable("mall_goods_sku").SetTitle("MallGoodsSku").SetDescription("MallGoodsSku")

	return mallGoodsSku
}
