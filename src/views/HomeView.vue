<script setup lang="ts">
import Layout from '@/layouts/PublicLayout.vue'
import Card from 'primevue/card'
import Button from 'primevue/button'
import { reactive } from 'vue'

const state = reactive({
  avm: false,
  expert: false,
  discount: false
})

/* eslint-disable no-useless-escape */
</script>
<template>
  <Layout :hideTopMenu="false">
    <div>
      <div class="m-2 md:m-6">
        <Card class="col-12 md:col-offset-3 md:col-6 my-4">
          <template #content>
            <h1>Do your AVM dApp audits with Biatec</h1>
            <div class="my-5">
              <a href="https://forms.gle/UJfEyEgGDxLVNXsa9">
                <Button>Do audits</Button>
              </a>
            </div>

            <div class="grid">
              <div class="col">
                <Card
                  @mouseover="state.avm = true"
                  @mouseleave="state.avm = false"
                  @click="state.avm = true"
                >
                  <template #content>
                    <div class="text-center">
                      <i class="pi pi-cog" style="font-size: 2rem"></i>
                      <div class="text-xl mt-2">AVM first</div>
                    </div>
                  </template>
                </Card>
              </div>
              <div class="col">
                <Card
                  @mouseover="state.expert = true"
                  @mouseleave="state.expert = false"
                  @click="state.expert = true"
                >
                  <template #content>
                    <div class="text-center">
                      <i class="pi pi-box" style="font-size: 2rem"></i>
                      <div class="text-xl mt-2">Expert audits</div>
                    </div>
                  </template>
                </Card>
              </div>
              <div class="col">
                <Card
                  @mouseover="state.discount = true"
                  @mouseleave="state.discount = false"
                  @click="state.discount = true"
                >
                  <template #content>
                    <div class="text-center">
                      <i class="pi pi-wallet" style="font-size: 2rem"></i>
                      <div class="text-xl mt-2">AVM first</div>
                    </div>
                  </template>
                </Card>
              </div>
            </div>

            <div v-if="state.avm" class="text-center text-2xl my-5">
              We are also builders on Algorand and focus primarly on Algorand tech
            </div>
            <div v-if="state.expert" class="text-center text-2xl my-5">
              We have deep knowledge of TEAL, tealscript, pyteal, python, ARCs, web development,
              DBs, BE development, CICD deployment, and more
            </div>
            <div v-if="state.discount" class="text-center text-2xl my-5">
              If we do not discover at least High vulnerability in your code, you will get discount
              50% of the price
            </div>
          </template>
        </Card>
      </div>
    </div>
  </Layout>
</template>
<style>
.svg-image {
  height: 8em;
}
</style>
