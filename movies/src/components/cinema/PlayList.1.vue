<template>
  <div class="plist">
    <div class="date">观影时间 :</div>
    <el-table
      :data="tableData"
      stripe
      style="width: 100%"
    >
      <el-table-column
        prop="date"
        label="放映时间"
      >
      </el-table-column>
      <el-table-column
        prop="name"
        label="语言版本"
      >
      </el-table-column>
      <el-table-column
        prop="address"
        label="放映厅"
      >
      </el-table-column>
      <el-table-column
        prop="price"
        label="售价（元）"
      >
      </el-table-column>
      <el-table-column
        prop="seate"
        label="选座购票"
      >
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tableData: [
        {
          date: "14:25",
          name: "国语3D",
          address: "1号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "15:10",
          name: "国语3D",
          address: "2号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "16:50",
          name: "国语3D",
          address: "1号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "17:35",
          name: "国语3D",
          address: "2号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "19:15",
          name: "国语3D",
          address: "1号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "20:00",
          name: "国语3D",
          address: "2号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "21:40",
          name: "国语3D",
          address: "1号厅",
          price:"￥33",
          seate:"选座购票"
        },
        {
          date: "22:25",
          name: "国语3D",
          address: "2号厅",
          price:"￥33",
          seate:"选座购票"
        }
      ]
    };
  }
};
</script>

<style scoped>
    .plist {
        width: 1200px;
        margin: 20px auto 30px;
    }

    .date {
        font-size: 14px;
        color: #999;
    }

    .el-table th>.cell {
        font-size: 16px;
        color: #333;
    }

    .el-table td {
        padding: 12px 30px;
        
    }

    .el-table_3_column_15  .cell {
      color: red;
    }
</style>
