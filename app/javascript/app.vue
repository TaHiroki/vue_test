<template>
  <div id="app">
    <h1>日報一覧</h1>
    <div>
      <div v-for="report in reports" :key="report.id">
        <div>題：{{ report.index }}</div>
        <div>コメント：{{ report.content }}</div>
        <br />
        <br />
      </div>
    </div>

    <router-view></router-view>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Hello ",
      reports: [],
    };
  },
  created() {
    axios
      .get("http://localhost:3000/api/v1/api_reports/index")
      .then((response) => {
        this.reports = response.data.data;
        console.log(response.data.data);
      });
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
