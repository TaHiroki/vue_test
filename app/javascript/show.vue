<template>
  <div id="app">
    <h1>詳細番号 {{ $route.params.id }}</h1>
    <router-link to="/">一覧</router-link>
    <div>
      <p>題：{{ report.index }}</p>
      <p>コメント：{{ report.content }}</p>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      report: {},
    };
  },
  created() {
    axios
      .get("http://localhost:3000/api/v1/api_reports/show", {
        params: { id: this.$route.params.id },
      })
      .then((response) => {
        this.report = response.data.data;
        console.log(response.data.data);
      });
  },
};
</script>