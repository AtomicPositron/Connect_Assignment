<script setup>
import { RouterLink } from 'vue-router';
import { ref } from 'vue';
import { useCourseInput } from '@/stores/courseinput'


const courseInput = useCourseInput()

const course = ref('')
const price = ref('')
const date = ref('')
const description = ref('')

const courses = ["MTH", "CHM", "AUTOCAD", "AUTODESK-INVENTOR", "PHY 101", "PHY 102"]
const prices = ["₦1400", "₦1600", "₦1800", "₦2000", "₦2200", "₦2800", "₦3000"]


const Checkout_function = () => {
  courseInput.addAssignment(course.value,date.value,price.value,description.value)
}
</script>

<template>
  <div class="body grid grid-row-2 place-items-center gap-2 mt-40 transition-all">
    <h1 class="md:text-9xl text-8xl mb-10 text-center">CONNECT</h1>
    <div class="flex flex-wrap flex-row justify-center align-center gap-x-4 gap-y-5">

      <select name="" id="select" v-model="course" class="outline-2 px-4 p-2 text-2xl rounded-sm" required>
        <option value="" disabled class="">
          Courses
        </option>
        <option v-for="item in courses" :value="item" :key="item.key">
          {{ item }}
        </option>
      </select>
      <select name="" id="" v-model="price" class="outline-2 px-4 p-2 text-2xl rounded-sm" required>
        <option value="" class="" disabled>Price Range</option>
        <option v-for="item in prices" :value="item" :key="item.key">
          {{ item }}
        </option>
      </select>
      <input type="date" name="" class="outline-2 px-4 p-2 text-2xl rounded-sm" v-model="date" id="" required>
    </div>
    <input name="" class="outline-2 px-4 p-2 mt-5 text-2xl rounded-sm" placeholder="Describe How you want it" v-model="description" id="">
    <RouterLink to="/payment">
      <button class="mt-10 bg-[#141933] p-3 w-fit text-white text-2xl rounded-sm tracking-wide"
        @click="Checkout_function">
        Checkout
      </button>
    </RouterLink>
  </div>
</template>
