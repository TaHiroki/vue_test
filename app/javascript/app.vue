<template>
  <div id="app">
    <h1>日報管理サイト</h1>
    <nav>
      <router-link to="/" tag="div">一覧</router-link>
      <router-link to="/new" tag="div">新規登録</router-link>
    </nav>
    <router-view></router-view>
  </div>
</template>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
