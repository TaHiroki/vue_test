<template>
  <div id="app">
    <h1>日報一覧</h1>
    <div>
      <div v-for="report in reports" :key="report.id">
        <div>題：{{ report.index }}</div>
        <div>コメント：{{ report.content }}</div>
        <router-link :to="'/show/' + report.id ">詳細</router-link>
        <br />
        <br />
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      reports: [],
    };
  },
  created() {
    axios
      .get("http://localhost:3000/api/v1/api_reports/index")
      .then((response) => {
        this.reports = response.data.data;
      });
  },
};
</script>