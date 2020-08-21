<template>
  <div id="app">
    <h1>新規登録</h1>
    <div>
      <label for="index">題：</label>
      <input id="index" type="text" v-model="report.index" />
      <p>題：{{ report.index }}</p>
      <label for="content">コメント：</label>
      <textarea id="content" v-model="report.content"></textarea>
      <p>コメント：{{ report.content }}</p>
      <button @click="createContent">送信</button>
    </div>
  </div>
</template>

<script>
import axios from "axios";

axios.defaults.headers.common = {
  "X-Requested-With": "XMLHttpRequest",
  "X-CSRF-TOKEN": document
    .querySelector('meta[name="csrf-token"]')
    .getAttribute("content"),
};

export default {
  data() {
    return {
      report: {
        index: "",
        content: "",
        user_id: 0,
      },
    };
  },
  methods: {
    createContent() {
      console.log(this.report);
      axios
        .post("http://localhost:3000/api/v1/api_reports/create", this.report)
        .then(
          (respons) => {
            this.$router.push({ path: "/" });
          },
          (error) => {
            console.log("error");
          }
        );
    },
  },
};
</script>