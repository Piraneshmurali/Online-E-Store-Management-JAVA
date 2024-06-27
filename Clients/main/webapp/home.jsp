<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SILLKY</title>
  <style type="text/css">
 

:root {

  /**
   * colors
   */

  --rich-black-fogra-29: hsl(210, 26%, 7%);
  --champagne-pink_20: hsla(23, 61%, 90%, 0.2);
  --independence_30: hsla(245, 17%, 29%, 0.3);
  --gray-x-11-gray: hsl(0, 0%, 73%);
  --champagne-pink: hsl(340, 100%, 85%); /* Updated to pink */
  --spanish-gray: hsl(0, 0%, 60%);
  --sonic-silver: hsl(0, 0%, 47%);
  --deep-saffron: hsl(38, 100%, 70%); /* Updated to pink */
  --dark-orange: hsl(17, 100%, 56%); /* Updated to pink */
  --desert-sand: hsl(23, 49%, 82%);
  --isabelline: hsl(38, 44%, 96%);
  --gainsboro: hsl(0, 0%, 87%);
  --tangerine: hsl(30, 100%, 64%); /* Updated to pink */
  --cinnabar: hsl(356, 100%, 50%); /* Updated to pink */
  --black_95: hsla(0, 0%, 0%, 0.95);
  --cultured: hsl(0, 0%, 93%);
  --white: hsl(0, 0%, 100%);
  --black: hsl(0, 0%, 0%);
  --onyx: hsl(0, 0%, 27%);

  /**
   * typography
   */

  --ff-shadows-into-light: 'Shadows Into Light', cursive;
  --ff-roboto: 'Roboto', sans-serif;
  --ff-rubik: 'Rubik', sans-serif;

  --fs-1: 3.2rem;
  --fs-2: 2.2rem;
  --fs-3: 1.8rem;
  --fs-4: 1.4rem;
  --fs-5: 1.2rem;

  --fw-500: 500;
  --fw-600: 600;
  --fw-700: 700;

  /**
   * spacing
   */

  --section-padding: 60px;

  /**
   * shadow
   */

  --shadow-1: 0 1px 4px hsla(0, 0%, 0%, 0.2);
  --shadow-2: 0 1px 2px hsla(0, 0%, 0%, 0.2);

  /**
   * transition
   */

  --transition-1: 0.25s ease;
  --transition-2: 0.5s ease;

  /**
   * clip path
   */

  --clip-path-1: polygon(0 40%, 100% 0%, 100% 100%, 0 100%);
  --clip-path-2: polygon(0 0%, 100% 0%, 100% 100%, 0 100%);

}





/*-----------------------------------*\
  #RESET
\*-----------------------------------*/

*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

li { list-style: none; }

a {
  text-decoration: none;
  color: inherit;
}

a,
img,
svg,
span,
input,
select,
button,
textarea,
ion-icon { display: block; }

img { height: auto; }

input,
select,
button,
textarea {
  background: none;
  border: none;
  font: inherit;
}

input,
select,
textarea { width: 100%; }

button { cursor: pointer; }

ion-icon { pointer-events: none; }

address { font-style: normal; }

html {
  font-family: var(--ff-roboto);
  font-size: 10px;
  scroll-behavior: smooth;
}

body {
	background-color: var(--champagne-pink); /* Updated to white */
  color: var(--white);
  font-size: 1.6rem;
  line-height: 1.6;
  overflow-x: hidden;
}

body.active { overflow: hidden; }

:focus-visible { outline-offset: 4px; }

::selection {
  background-color: var(--champagne-pink); /* Updated to pink */
  color: var(--white);
}

::-webkit-scrollbar { width: 8px; }

::-webkit-scrollbar-track { background-color: var(--white); }

::-webkit-scrollbar-thumb { background-color: var(--champagne-pink); }

::-webkit-scrollbar-thumb:hover { background-color: var( --champagne-pink); }





/*-----------------------------------*\
  #REUSED STYLE
\*-----------------------------------*/

.container { padding-inline: 15px; }

.h1,
.h2,
.h3,
.h4 {
  font-family: var(--ff-rubik);
  color: var(--rich-black-fogra-29);
  line-height: 1.2;
  letter-spacing: -1px;
}

.h1,
.h2 { font-size: var(--fs-1); }

.h2,
.h3,
.h4 { font-weight: var(--fw-600); }

.h3 { font-size: var(--fs-2); }

.h4 { font-size: var(--fs-3); }

.btn {
  background-color: var(--bg-color, var( --black));
  color: var(--white);
  font-family: var(--ff-rubik);
  font-size: var(--fs-4);
  font-weight: var(--fw-500);
  height: var(--height, 45px);
  padding-inline: var(--padding-inline, 35px);
  transition: var(--transition-1);
}

.btn-hover {
  position: relative;
  overflow: hidden;
  background-color: var(--bg-color, var(--champagne-pink));
  z-index: 1;
}

.btn-hover::after {
  content: "";
  position: absolute;
  bottom: -1px;
  left: 20px;
  width: 1px;
  height: 1px;
  transform: translate(-50%, 51%) scale(var(--scale, 1));
  border-radius: 50%;
  background-color: var(--champagne-pink);
  z-index: -1;
  transition: var(--transition-2);
}

.btn-hover:is(:hover, :focus)::after { --scale: 500; }

.section { padding-block: var(--section-padding); }

.section.white { background-color: var(--isabelline); }

.section-divider { position: relative; }

.section-divider::before,
.section-divider::after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 15px;
  background-repeat: repeat no-repeat;
  background-position: bottom;
}

.section-divider.white::after { background-image: url("../images/shape-white.png"); }

.section-divider.gray::after { background-image: url("../images/shape-grey.png"); }

.w-100 { width: 100%; }

.has-scrollbar {
  display: flex;
  gap: 10px;
  overflow-x: auto;
  scroll-snap-type: inline mandatory;
  padding-block-end: 40px;
}

.has-scrollbar::-webkit-scrollbar { height: 12px; }

.has-scrollbar::-webkit-scrollbar-button { width: calc(25% - 40px); }

.has-scrollbar::-webkit-scrollbar-track {
  outline: 2px solid var( --champagne-pink);
  border-radius: 50px;
}

.has-scrollbar::-webkit-scrollbar-thumb {
  border: 3px solid var(--cultured);
  border-radius: 50px;
}

.section-title > .span {
  display: inline-block;
  color: var( --black);
}

.abs-img {
  position: absolute;
  transform: scale(1);
}

.scale-up-anim { animation: scaleUp 1s linear infinite alternate; }

@keyframes scaleUp {
  0% { transform: scale(1);}
  100% { transform: scale(1.05); }
}

.section-subtitle {
  color: var();
  font-family: var(--ff-rubik);
  text-align: center;
  font-weight: var(--fw-500);
}

.badge {
  position: absolute;
  background: var(--bg-color, var(--black));
  color: var(--white);
  font-size: var(--fs-5);
  font-weight: var(--fw-600);
  padding: var(--padding-block, 2px) 15px;
}

.rating-wrapper {
  display: flex;
  gap: 5px;
  color: var( --champagne-pink);
}





/*-----------------------------------*\
  #HEADER
\*-----------------------------------*/

/* .navbar, */
.header-btn-group .btn { display: none; }

.header {
  --color: var(--white);
  --btn-color: var(--champagne-pink);
background-color: var(--white);
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  padding-block: 20px;
  border-block-end: 1px solid var(--champagne-pink);
  z-index: 4;
}

.header.active {
  --color: var(--rich-black-fogra-29);
  --btn-color: var(--rich-black-fogra-29);

  position: fixed;
  top: -86px;
  background-color: var(--white);
  box-shadow: var(--shadow-1);
  animation: slideIn 0.5s ease-out forwards;
}

@keyframes slideIn {
  0% { transform: translateY(0); }
  100% { transform: translateY(100%); }
}

.header .container {
	
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.logo {
  color: black;
  font-family: var(--ff-rubik);
  font-size: 2.8rem;
  font-weight: var(--fw-700);
  letter-spacing: -2px;
}

.logo .span {
  display: inline-block;
  color: var( --champagne-pink);
}

.header-btn-group {
 color: var(--champagne-pink);
  display: flex;
  align-items: center;
  
  gap: 20px;
}

/* .search-btn {
  color: var(--btn-color);
  font-size: 20px;
}

.search-btn ion-icon { --ionicon-stroke-width: 50px; } */

.nav-toggle-btn {
  display: grid;
  gap: 4px;
}

.line {
  width: 10px;
  height: 3px;
  background-color: var(--champagne-pink);
  border-radius: 5px;
  transition: var(--transition-1);
}

.line.middle { width: 20px; }

.line.bottom { margin-left: auto; }

.nav-toggle-btn.active .line.top { transform: translate(1px, 3px) rotate(45deg); }

.nav-toggle-btn.active .line.middle { transform: rotate(-45deg); }

.nav-toggle-btn.active .line.bottom { transform: translate(-1px, -3px) rotate(45deg); }

.navbar {
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translateX(-50%);
  width: calc(100% - 30px);
  background-color: var(--white);
  padding-inline: 20px;
  box-shadow: var(--shadow-1);
  height: 0;
  overflow: hidden;
  visibility: hidden;
  transition: var(--transition-1);
  color:black;
}

.navbar.active {
  height: 236px;
  visibility: visible;
}

.navbar-list { 
margin-block: 10px;
 }

.nav-item:not(:last-child) { border-block-end: 1px solid hsla(0, 0%, 0%, 0.04); }

.navbar-link {
  color: black !important;
  font-size: var(--fs-4);
  font-family: var(--ff-rubik);
  font-weight: var(--fw-500);
  padding: 10px 15px;
  transition: var(--transition-1);
}

.navbar-link:is(:hover, :focus) { color: var(--champagne-pink); }


section-text1{
color:black;
}

p .section-subtitle1{
color:color: hsl(330, 50%, 50%);
}

/*-----------------------------------*\
  #SEARCH BOX
\*-----------------------------------*/

.search-container {
  position: fixed;
  top: -60%;
  left: 0;
  width: 100%;
  height: 110%;
  background-color: var(--black_95);
  display: flex;
  justify-content: center;
  align-items: center;
  padding-inline: 15px;
  z-index: 5;
  visibility: hidden;
  opacity: 0;
  transition: var(--transition-2);
}

.search-container.active {
  visibility: visible;
  opacity: 1;
  transform: translateY(50%);
}

.search-box {
  position: relative;
  width: 100%;
  max-width: 500px;
}

.search-input {
  color: var(--gainsboro);
  font-size: 3rem;
  padding: 20px 15px;
  padding-inline-end: 70px;
}

.search-input::placeholder { color: var(--spanish-gray); }

.search-input::-webkit-search-cancel-button { display: none; }

.search-submit {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  right: 15px;
  color: var(--onyx);
  font-size: 4rem;
  transition: var(--transition-1);
}

.search-submit:is(:hover, :focus) { color: var(--gainsboro); }

.search-close-btn {
  position: absolute;
  inset: 0;
  z-index: -1;
  cursor: url("../images/close.png"), auto;
}





/*-----------------------------------*\
  #HERO
\*-----------------------------------*/

.hero-banner { display: none; }

.hero {
  background-repeat: no-repeat;
  background-size: cover;
  background-color: var(--champagne-pink);
  background-position: center;
  padding-block: 145px 60px;
  text-align: center;
}

.hero-subtitle {
  color: hsl(330, 50%, 50%);
  font-family: var(--ff-shadows-into-light);
  font-size: var(--fs-3);
  letter-spacing: 1px;
  margin-block-end: 25px;
}

.hero-title {
  color: var(--black);
  max-width: 12ch;
  margin-inline: auto;
}

.hero-text {
  color: white;
  margin-block: 15px 30px;
  max-width: 44ch;
  margin-inline: auto;
}

.hero .btn { margin-inline: auto; }

.hero .btn:is(:hover, :focus) {
  background-color: var(--white);
  color: var(--black);
}





/*-----------------------------------*\
  #PROMO
\*-----------------------------------*/

.promo-card {
  position: relative;
  background-color: var(--white);
  text-align: center;
  padding: 40px 30px;
  box-shadow: var(--shadow-2);
  z-index: 1;
}

.promo-card::after {
  content: "";
  position: absolute;
  inset: 0;
  background-color: var( --champagne-pink);
  clip-path: var(--clip-path-1);
  transform: scaleY(0.3);
  transform-origin: bottom;
  z-index: -1;
  transition: var(--transition-1);
}

.promo-card:hover::after {
  clip-path: var(--clip-path-2);
  transform: scaleY(1);
}

.promo-card .card-icon svg { margin-inline: auto; }

.promo-card:hover .card-icon path { fill: var(--white); }

.promo-card:hover :is(.card-title, .card-text) { color: var(--white); }

.promo-card .card-title {
  margin-block: 15px;
  transition: var(--transition-1);
}

.promo-card .card-text {
  margin-block-end: 15px;
  transition: var(--transition-1);
}

.promo-card .card-banner {
  max-width: max-content;
  margin-inline: auto;
  aspect-ratio: 1 / 1;
}

.promo-item {
  min-width: 100%;
  scroll-snap-align: start;
}





/*-----------------------------------*\
  #ABOUT
\*-----------------------------------*/

.about { text-align: center; }

.about-banner {
  position: relative;
  aspect-ratio: 1 / 0.9;
}

.about-img {
  max-width: max-content;
  margin-inline: auto;
}

.about-banner .abs-img {
  top: 0;
  left: 100px;
}

.about .section-title {
  max-width: 15ch;
  margin-block: 40px 10px;
  margin-inline: auto;
}

.about-list { margin-block: 20px 30px; }

.about-item {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 10px;
}

.about-item:not(:last-child) { margin-block-end: 10px; }

.about-item ion-icon {
  background-color: var( --champagne-pink);
  color: var(--white);
  font-size: 1.2rem;
  padding: 4px;
  border-radius: 50%;
  --ionicon-stroke-width: 110px;
}

.about-item .span {
  color: var(--rich-black-fogra-29);
  font-family: var(--ff-rubik);
  font-weight: var(--fw-500);
}

.about .btn { margin-inline: auto; }





/*-----------------------------------*\
  #dress MENU
\*-----------------------------------*/

.dress-menu {
  background-color: var(--isabelline);
  text-align: center;
}

.dress-menu .section-title { margin-block: 10px 20px; }

.dress-menu .section-text {
  max-width: 44ch;
  margin-inline: auto;
  margin-block-end: 30px;
}

.fiter-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 10px;
  margin-block-end: 40px;
}

.filter-btn {
  background-color: var(--white);
  color: var(--color, var(--rich-black-fogra-29));
  font-family: var(--ff-rubik);
  font-weight: var(--fw-500);
  padding: 5px 20px;
  border: 1px solid var(--border-color, var(--cultured));
}

.filter-btn.active {
  background-color: var( --champagne-pink);
  --color: var(--white);
  --border-color: var( --champagne-pink);
}

.dress-menu-list {
  display: grid;
  gap: 30px;
}

.dress-menu-card {
  background-color: var(--white);
  padding: 40px;
  box-shadow: var(--shadow-2);
}

.dress-menu-card:focus-within { outline: 1px auto -webkit-focus-ring-color; }

.dress-menu-card .card-banner {
  position: relative;
  padding-block-start: 30px;
  max-width: max-content;
  aspect-ratio: 1 / 1;
  margin-inline: auto;
}

.dress-menu-card .badge {
  top: 0;
  left: 0;
}

.dress-menu-btn {
  position: absolute;
  top: calc(50% + 15px);
  left: 50%;
  transform: translate(-50%, 0);
  min-width: max-content;
  --bg-color: var(--black);
  width: 60%;
  --height: 40px;
  --padding-inline: 20px;
  opacity: 0;
  transition: var(--transition-2);
}

.dress-menu-btn:is(:hover, :focus) { --bg-color: var( --champagne-pink); }

.dress-menu-card:is(:hover, :focus-within) .dress-menu-btn {
  transform: translate(-50%, -50%);
  opacity: 1;
}

.dress-menu-card .wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 15px;
  margin-block: 20px 10px;
}

.dress-menu-card .category {
  font-family: var(--ff-rubik);
  font-weight: var(--fw-500);
}

.dress-menu-card .rating-wrapper { font-size: 1.4rem; }

.dress-menu-card .card-title { margin-block-end: 10px; }

.dress-menu-card .price-wrapper {
  display: flex;
  justify-content: center;
  gap: 5px;
  font-family: var(--ff-rubik);
  font-weight: var(--fw-600);
}

.dress-menu-card .price-text {
  color: var(--cinnabar);
  text-transform: uppercase;
  padding-inline-end: 5px;
}

.dress-menu-card .price { color: var( --champagne-pink); }

.dress-menu-card .del { color: var(--gray-x-11-gray); }





/*-----------------------------------*\
  #CTA
\*-----------------------------------*/

.cta {
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  text-align: center;
  overflow: hidden;
}

.cta::before {
  bottom: auto;
  top: 0;
  background-image: url("../images/shape-grey.png");
  transform: scaleY(-1);
}

.cta .section-title {
  color: var(--white);
  line-height: 1.5;
  letter-spacing: -2px;
  max-width: 17ch;
  margin-inline: auto;
}

.cta .section-text {
  color: var(--white);
  margin-block: 25px 20px;
}

.cta .btn { margin-inline: auto; }

.cta-banner {
  position: relative;
  aspect-ratio: 1 / 0.9;
}

.cta-img { transform: scale(1.3) translateY(60px); }

.cta-banner .abs-img {
  top: 50px;
  left: 10px;
}





/*-----------------------------------*\
  #DELIVERY
\*-----------------------------------*/

.delivery-content { margin-block-end: 40px; }

.delivery .section-title {
  max-width: 17ch;
  line-height: 1.6;
  letter-spacing: -2px;
}

.delivery .section-text { margin-block: 15px 25px; }

.delivery-banner {
  position: relative;
  aspect-ratio: 1 / 0.86;
}

.delivery-img {
  position: absolute;
  top: 0;
  left: 0;
  transform: translateX(-80px);
  transition: var(--transition-2);
}





/*-----------------------------------*\
  #TESTIMONIALS
\*-----------------------------------*/

.testi { text-align: center; 
}

.testi .section-title { margin-block: 10px 20px; }

.testi .section-text {
	color:black;
  max-width: 44ch;
  margin-inline: auto;
  margin-block-end: 30px;
}

.testi-card {
  background-color: var(--white);
  padding: 40px;
  text-align: left;
  box-shadow: var(--shadow-2);
}

.testi-card .profile-wrapper {
color:black;
  display: flex;
  align-items: center;
  gap: 15px;
}

.testi-card .avatar {
  min-width: max-content;
  border-radius: 50%;
  overflow: hidden;
}

.testi-card .testi-name { margin-block-end: 2px; }

.testi-card .testi-title {
  font-family: var(--ff-rubik);
  font-size: var(--fs-4);
}

.testi-card .testi-text { 
color:black;
margin-block: 20px 15px; }

.testi-item {
  min-width: 100%;
  scroll-snap-align: start;
}





/*-----------------------------------*\
  #BANNER
\*-----------------------------------*/

.banner { color: var(--white); }

.banner-list {
  display: grid;
  gap: 10px;
}

.banner-lg { height: 430px; }

.banner-sm { height: 200px; }

.banner-md { height: 240px; }

.banner-card {
  position: relative;
  height: 100%;
  box-shadow: var(--shadow-2);
  overflow: hidden;
}

.banner-card .banner-img {
  background-color: var(--gainsboro);
  width: 100%;
  height: 100%;
  object-fit: cover;
  transform: scale(1);
  transition: var(--transition-2);
}

.banner-card:is(:hover, :focus-within) .banner-img { transform: scale(1.05); }

.banner-item-content {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  left: 20px;
  right: 20px;
  max-height: calc(100% - 30px);
}

.banner-md .banner-item-content { left: 50%; }

.banner-subtitle,
.banner-title {
  font-family: var(--ff-rubik);
  font-weight: var(--fw-600);
  line-height: 1.2;
  letter-spacing: -0.5px;
}

.banner-lg .banner-subtitle {
  font-size: var(--fs-2);
  margin-block-end: 10px;
}

.banner-lg .banner-title {
  font-size: var(--fs-1);
  max-width: 16ch;
}

:is(.banner-md, .banner-sm) .banner-title {
  font-size: var(--fs-2);
  max-width: 10ch;
}

.banner-card .banner-text { margin-block: 10px 15px; }

.banner-card .btn {
  --bg-color: var(--black);
  --height: 40px;
  --padding-inline: 25px;
}

.banner-card .btn:is(:hover, :focus) { background-color: var(--champagne-pink); }





/*-----------------------------------*\
  #BLOG
\*-----------------------------------*/

.blog { text-align: center; }

.blog .section-title { margin-block: 10px 20px; }

.blog .section-text {
  margin-block-end: 40px;
  max-width: 44ch;
  margin-inline: auto;
}

.blog-list {
  display: grid;
  gap: 30px;
}

.blog-card {
  background-color: var(--white);
  text-align: left;
  box-shadow: var(--shadow-2);
}

.blog-card .card-banner {
  position: relative;
  aspect-ratio: 1 / 0.65;
  background-color: var(--gainsboro);
}

.blog-card .badge {
  top: 20px;
  right: 20px;
  font-family: var(--ff-rubik);
  text-transform: uppercase;
  --bg-color: var(--tangerine);
  --padding-block: 5px;
}

.blog-card .card-content { padding: 30px; }

.blog-card .card-meta-wrapper {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
  align-items: center;
  gap: 12px 20px;
}

.blog-card .card-meta-link {
  display: flex;
  align-items: center;
  gap: 10px;
}

.blog-card .card-meta-link ion-icon {
  color: var(--tangerine);
  font-size: 1.5rem;
  --ionicon-stroke-width: 60px;
}

.blog-card :is(.meta-info, .btn-link) {
  color: var(--rich-black-fogra-29);
  font-family: var(--ff-rubik);
  font-size: var(--fs-5);
  font-weight: var(--fw-600);
  text-transform: uppercase;
  line-height: 1;
  transition: var(--transition-1);
}

.blog-card .card-meta-link:is(:hover, :focus) .meta-info {
  color: var( --champagne-pink);
}

.blog-card .card-title {
  font-size: var(--fs-3);
  margin-block: 20px 15px;
  transition: var(--transition-1);
}

.blog-card .card-title:is(:hover, :focus) {
  opacity: 0.8;
  text-decoration: underline;
}

.blog-card .card-text { margin-block-end: 20px; }

.blog-card .btn-link {
  display: flex;
  align-items: center;
  gap: 5px;
}

.blog-card .btn-link ion-icon { font-size: 1.5rem; }

.blog-card .btn-link:is(:hover, :focus) {
  color: var( --champagne-pink);
  gap: 10px;
}





/*-----------------------------------*\
  #FOOTER
\*-----------------------------------*/

.footer { overflow: hidden; }

.footer-top {
  position: relative;
  padding-block: 120px;
  background-repeat: no-repeat;
  background-size: contain;
  background-position: bottom;
  border-block-end: 2px solid var(--independence_30);
}

.footer-top::after {
  content: url(../images/delivery-boy.svg);
  position: absolute;
  bottom: -11px;
  left: -160px;
  width: 160px;
  animation: running-cycle 20s linear infinite;
}

@keyframes running-cycle {
  0% { left: -160px; }
  100% { left: 100%; }
}

.footer-top .container {
  display: grid;
  gap: 30px;
}

.footer .logo {
  color: var(--rich-black-fogra-29);
  font-size: 3.2rem;
}

.footer-text { margin-block: 15px 25px; }

.social-list {
  display: flex;
  gap: 5px;
}

.social-link {
  background-color: var(--champagne-pink_20);
  color: var(--white);
  font-size: 1.5rem;
  padding: 10px;
  transition: var(--transition-1);
}

.social-link:is(:hover, :focus) { background-color: var(--rich-black-fogra-29); }

.footer-list-title {
  position: relative;
  max-width: max-content;
  color: var(--rich-black-fogra-29);
  font-family: var(--ff-rubik);
  font-size: var(--fs-3);
  font-weight: var(--fw-600);
  letter-spacing: -1px;
  margin-block-end: 20px;
}

.footer-list-title::after {
  content: "";
  position: absolute;
  top: 10%;
  transform: translateY(-50%);
  left: calc(100% + 15px);
  background-color: var( --champagne-pink);
  width: 40px;
  height: 4px;
  border-inline-end: 5px solid var( --champagne-pink);
  box-shadow: inset -5px 0 0 var(--white);
}

.footer-list > li:not(:last-child) { 
margin-block-end: 15px; }

.footer-list address { max-width: 20ch; }

.footer-form {
margin-top: 20px;
  background-color: var(--white);
  padding: 30px;
  border: 1px solid var(--cultured);
  box-shadow: var(--shadow-2);
}

.input-wrapper {
  display: grid;
  gap: 10px;
  margin-block-end: 10px;
}

.input-field {
  color: var(--spanish-gray);
  font-size: var(--fs-4);
  border: 1px solid var(--cultured);
  padding: 8px 12px;
}

.input-field::placeholder { color: var(--spanish-gray); }

.input-field::-webkit-calendar-picker-indicator { opacity: 0.5; }

textarea.input-field {
  min-height: 50px;
  max-height: 150px;
  height: 100px;
  resize: vertical;
  margin-block-end: 10px;
}

.footer-form .btn {
  font-size: var(--fs-15);
  --height: 40px;
  --padding-inline: 25px;
}

.footer-form .btn:is(:hover, :focus) { background-color: var(--rich-black-fogra-29); }

.footer-bottom {
  padding-block: 20px;
  text-align: center;
}

.copyright-link { display: inline-block; }

.copyright-link:is(:hover, :focus) { text-decoration: underline; }
.footer-form .footer-list-title{
	top: 5%;
}




/*-----------------------------------*\
  #BACK TO TOP
\*-----------------------------------*/

.back-top-btn {
  position: fixed;
  bottom: 10px;
  right: 20px;
  background-color: var( --champagne-pink);
  color: var(--white);
  padding: 15px;
  border-radius: 50%;
  box-shadow: var(--shadow-1);
  z-index: 2;
  opacity: 0;
  visibility: hidden;
  transition: var(--transition-1);
}

.back-top-btn.active {
  opacity: 1;
  visibility: visible;
  transform: translateY(-10px);
}

.back-top-btn:is(:hover, :focus) { background-color: var(--champagne-pink); }





/*-----------------------------------*\
  #MEDIA QUERIES
\*-----------------------------------*/

/**
 * responsive for larger than 480px screen
 */

@media (min-width: 480px) {

  /**
   * HEADER
   */

  .header-btn-group .btn {
    display: block;
    --bg-color: var(--black);
  }
  
}





/**
 * responsive for larger than 550px screen
 */

@media (min-width: 550px) {

  /**
   * REUSED STYLE
   */

  .container {
    max-width: 550px;
    width: 100%;
    margin-inline: auto;
  }

  .has-scrollbar > li { min-width: calc(50% - 5px); }



  /**
   * HERO
   */

  .hero-title { --fs-1: 4.2rem; }



  /**
   * FOOTER
   */

  .footer-top .container { grid-template-columns: 1fr 1fr; }

}





/**
 * responsive for larger than 768px screen
 */

@media (min-width: 768px) {

  /**
   * REUSED STYLE
   */

  .container { max-width: 720px; }



  /**
   * HERO
   */

  .hero {
    position: relative;
    text-align: left;
    overflow: hidden;
    z-index: 1;
  }

  .hero-content > :is(*, .btn) { margin-inline: 0; }

  .hero-banner {
    display: block;
    position: absolute;
    top: calc(50% + 86px);
    transform: translateY(-50%);
    right: 50px;
    max-width: 40%;
    aspect-ratio: 1 / 0.9;
  }

  .hero-img {
    position: absolute;
    bottom: 0;
  }

  .hero::after {
    content: "";
    position: absolute;
    right: 0;
    bottom: -2px;
    width: 100%;
    height: 100%;
    background-image: url("../images/hero-bg-shape.png");
    background-repeat: no-repeat;
    background-size: contain;
    background-position: right bottom;
    pointer-events: none;
    z-index: -1;
  }



  /**
   * ABOUT
   */

  .about .container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 30px;
  }

  .about { text-align: left; }

  .about .section-title { margin-block-start: 0; }

  .about :is(.section-title, .btn) { margin-inline: 0; }

  .about-item { justify-content: flex-start; }



  /**
   * dress MENU
   */

  .dress-menu-list { grid-template-columns: 1fr 1fr; }

  .dress-menu-card :is(.wrapper, .price-wrapper) { justify-content: flex-start; }

  .dress-menu-card .card-title { text-align: left; }



  /**
   * CTA
   */

  .cta .container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    align-items: center;
    gap: 30px;
  }

  .cta { text-align: left; }

  .cta :is(.section-title, .btn) { margin-inline: 0; }

  .cta-img { transform: scale(1.3) translate(90px, 20px); }



  /**
   * DELIVERY
   */

  .delivery .container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    align-items: center;
    gap: 50px;
  }



  /**
   * BANNER
   */

  .banner-list { grid-template-columns: repeat(4, 1fr); }

  .banner-lg {
    grid-column: 1 / 3;
    grid-row: 1 / 3;
  }

  .banner-md {
    grid-column: 3 / 5;
    grid-row: 2 / 3;
    height: 220px;
  }



  /**
   * BLOG
   */

  .blog-list { grid-template-columns: 1fr 1fr; }

  .blog-card { height: 100%; }



  /**
   * FOOTER
   */

  .input-wrapper { grid-template-columns: 1fr 1fr; }

}





/**
 * responsive for larger than 992px screen
 */

@media (min-width: 992px) {

  /**
   * CUSTOM PROPERTY
   */

  :root {

    /**
     * spacing
     */

    --section-padding: 120px;

  }



  /**
   * REUSED STYLE
   */

  .container { max-width: 960px; }

  .has-scrollbar > li { min-width: calc(33.33% - 6.66px); }

  .h2 { --fs-1: 4.2rem; }



  /**
   * HEADER
   */

  .nav-toggle-btn { display: none; }

  .header .container { gap: 20px; }

  .navbar,
  .navbar.active {
    all: unset;
    margin-inline-start: auto;
  }

  .navbar-list {
  color:black;
    margin-block: 0;
    display: flex;
    gap: 5px;
  }

  .nav-item:not(:last-child) { border-block-end: none; }

  .navbar-link {
    --fs-4: 1.5rem;
    color: var(--btn-color);
    letter-spacing: -0.5px;
  }



  /**
   * HERO
   */

  .hero {
    min-height: 660px;
    display: grid;
    align-items: center;
  }

  .hero-subtitle { --fs-3: 3.2rem; }

  .hero-title {
    --fs-1: 7rem;
    letter-spacing: -2.5px;
  }

  .hero-text { font-size: var(--fs-3); }

  .hero-banner {
    max-width: 45%;
    top: auto;
    bottom: 0;
    transform: translateY(0);
  }

  .hero-img-bg { transform: scale(1.4) translate(20px, -20px); }



  /**
   * dress MENU
   */

  .dress-menu-list { grid-template-columns: repeat(3, 1fr); }

  .dress-menu-card { height: 100%; }



  /**
   * CTA
   */

  .cta-img { transform: scale(1.4) translate(20px, 40px); }

  .cta-banner .abs-img { left: -50px; }

  :is(.cta, .delivery) .section-title { line-height: 1.2; }



  /**
   * BANNER
   */

  .banner-lg .banner-title {
    --fs-1: 3.6rem;
    letter-spacing: -2px;
  }

  :is(.banner-md, .banner-sm) .banner-title,
  .banner-lg .banner-subtitle { --fs-2: 3.2rem; }



  /**
   * TESTIMONIALS
   */

  .testi-list { padding-block-end: 0; }



  /**
   * BLOG
   */

  .blog-list { grid-template-columns: repeat(3, 1fr); }

  .blog-card .card-title { --fs-3: 2.2rem; }



  /**
   * FOOTER
   */

  .footer-top .container { grid-template-columns: 1fr 1fr 1fr 1.6fr; }

  .footer-form { margin-block-start: -170px; }



  /**
   * BACK TO TOP
   */

  .back-top-btn {
    bottom: 20px;
    right: 30px;
  }

}





/**
 * responsive for larger than 1200px screen
 */

@media (min-width: 1200px) {

  /**
   * REUSED STYLE
   */

  .container { max-width: 1200px; }



  /**
   * HERO
   */

  .hero { min-height: 770px; }



  /**
   * PROMO
   */
  
  .promo .promo-item { min-width: calc(25% - 7.5px); }



  /**
   * ABOUT
   */

  .about .container { gap: 60px; }



  /**
   * CTA
   */

  .cta { --section-padding: 60px; }

  .cta .section-title { max-width: 18ch; }



  /**
   * BANNER
   */

  .banner-md .banner-item-content { left: 55%; }



  /**
   * FOOTER
   */

  .footer-top .container { grid-template-columns: 1.4fr 1fr 1fr ; }

}
  
  </style>

  <!-- 
    - favicon
  -->
  <link rel="shortcut icon" href="favicon.svg" type="image/svg+xml">

  <!-- 
    - custom css link
  -->
  

  <!-- 
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Rubik:wght@400;500;600;700&family=Shadows+Into+Light&display=swap"
    rel="stylesheet">

  <!-- 
    - preload images
  -->
  <link rel="preload" as="image" href="hero_banner.png" media="min-width(768px)">
<link rel="preload" as="image" href="hero-banner-bg.png" media="min-width(768px)">

<!--   <link rel="preload" as="image" href="hero-bg.jpg">
  <link rel="preload" href="hero.jpg" as="image"> -->

</head>

<body id="top">

  <!-- 
    - #HEADER
  -->
  
  <header class="header" data-header>
    <div class="container">

      <h1>
        <a href="#" class="logo">SILLKY<span class="span">.</span></a>
      </h1>

      <nav class="navbar" data-navbar>
        <ul class="navbar-list">

          <li class="nav-item">
            <a href="#home" class="navbar-link" data-nav-link>Home</a>
          </li>

          <li class="nav-item">
            <a href="#about" class="navbar-link" data-nav-link>About Us</a>
          </li>

          <li class="nav-item">
            <a href="#dress-menu" class="navbar-link" data-nav-link>Shop</a>
          </li>

          <!-- <li class="nav-item">
            <a href="#blog" class="navbar-link" data-nav-link>Blog</a>
          </li> -->

          <li class="nav-item">
            <a href="#" class="navbar-link" data-nav-link>Contact Us</a>
          </li>

        </ul>
      </nav>

      <div class="header-btn-group">
        <!-- <button class="search-btn" aria-label="Search" data-search-btn>
          <ion-icon name="search-outline"></ion-icon>
        </button> -->
<a href="login.jsp">
        <button class="btn btn-hover" style="background-color: black;">logout</button>
      </a>
        <button class="nav-toggle-btn" aria-label="Toggle Menu" data-menu-toggle-btn>
          <span class="line top"></span>
          <span class="line middle"></span>
          <span class="line bottom"></span>
        </button>
      </div>

    </div>
  </header>
  <main>
    <article>

      <!-- 
        - #HERO
      -->

      <section class="hero" id="home" style="background-image: url('Hero_bg1.jpg')">
        <div class="container">

          <div class="hero-content">

            <p class="hero-subtitle">Find Your Perfect Outfit</p>

<h2 class="h1 hero-title">Discover Dresses for Every Occasion!</h2>

<p class="hero-text">Dresses are the perfect choice for any occasion, whether it's a casual day out or a formal event.</p>


            <!-- <button class="btn">Book A Table</button> -->

          </div>

          <figure class="hero-banner">
            <img src="hero-banner-bg.png" width="820" height="716" alt="" aria-hidden="true"
              class="hero-img-bg">

            <img src="hero_banner.png" width="620" height="716" alt="AKKA" class="w-100 hero-img"
              >
          </figure>

        </div>
      </section>





      <!-- 
        - #PROMO
      -->

      <section class="section section-divider white promo">
        <div class="container">

          <ul class="promo-list has-scrollbar">

            <li class="promo-item">
              <div class="promo-card">

                <div class="card-icon">
                  

                <h3 class="h3 card-title">Mexican Salwar</h3>

                <p class="card-text">
                  Dresses are garments worn to enhance appearance and express personal style
                </p>

                <img src="promo-1.png" width="300" height="300" loading="lazy" alt="Maxican Salwar"
                  class="w-100 card-banner">

              </div>
            </li>

            <li class="promo-item">
              <div class="promo-card">

                <div class="card-icon">
                  
                </div>

                <h3 class="h3 card-title">Soft Silk</h3>

                <p class="card-text">
                  Dresses are garments worn to enhance appearance and express personal style
                </p>

                <img src="promo-2.png" width="300" height="300" loading="lazy" alt="Soft silk"
                  class="w-100 card-banner">

              </div>
            </li>

            <li class="promo-item">
              <div class="promo-card">

                <div class="card-icon">
                  
                </div>

                <h3 class="h3 card-title">French Frock</h3>

                <p class="card-text">
                  Dresses are garments worn to enhance appearance and express personal style
                </p>

                <img src="promo-3.png" width="300" height="300" loading="lazy" alt=""
                  class="w-100 card-banner">

              </div>
            </li>

            <li class="promo-item">
              <div class="promo-card">

                <div class="card-icon">
                  
                </div>

                <h3 class="h3 card-title">Indian saree</h3>

                <p class="card-text">
                  Dresses are garments worn to enhance appearance and express personal style
                </p>

                <img src="promo-4.png" width="300" height="300" loading="lazy" alt=""
                  class="w-100 card-banner">

              </div>
            </li>

            <li class="promo-item">
              <div class="promo-card">

                <div class="card-icon">
                  
                </div>

                <h3 class="h3 card-title">Anarkali saree</h3>

                <p class="card-text">
                  Dresses are garments worn to enhance appearance and express personal style
                </p>

                <img src="promo-5.png" width="300" height="300" loading="lazy" alt=""
                  class="w-100 card-banner">

              </div>
            </li>

          </ul>

        </div>
      </section>





      <!-- 
        - #ABOUT
      -->

      <section class="section section-divider gray about" id="about">
        <div class="container">

          <div class="about-banner">
            <img src="about-banner.png" width="509" height="459" loading="lazy" 
              class="w-100 about-img">

            <img src="sale-shape-red.png" width="216" height="226" alt="get up to 50% off now"
              class="abs-img scale-up-anim">
          </div>

          <div class="about-content">

            <h2 class="h2 section-title">
              Trendy Dresses and Elegant Attire
              <span class="span">for Every Occasion!</span>
            </h2>

            <p class="section-text">
              Our dress store in Hangzhou offers a wide range of fashionable outfits suitable for various events and styles.
            </p>

            <ul class="about-list">

              <li class="about-item">
                <ion-icon name="checkmark-outline"></ion-icon>

                <span class="span">Stylish & Comfortable Designs</span>
              </li>

              <li class="about-item">
                <ion-icon name="checkmark-outline"></ion-icon>

                <span class="span">Diverse Collections for All Ages</span>
              </li>

              <li class="about-item">
                <ion-icon name="checkmark-outline"></ion-icon>

                <span class="span">Personalized Fitting Services</span>
              </li>

              <li class="about-item">
                <ion-icon name="checkmark-outline"></ion-icon>

                <span class="span">Efficient Home Delivery</span>
              </li>

            </ul>
<a href="order.jsp">
            <button class="btn btn-hover" style="background-color: black;">Order Now</button>
          </a>
          </div>

        </div>
      </section>





      <!-- 
        - #dress MENU
      -->

      <section class="section dress-menu" id="dress-menu">
        <div class="container">

        <p class="section-subtitle1" style="color: hsl(330, 50%, 50%); font-size: 20px; ">Popular Dresses</p>



          <h2 class="h2 section-title">
            Our Stylish <span class="span">Dresses</span>
          </h2>

          <p class="section-text1" style="color: black;">
            Dresses are garments worn to enhance appearance and express personal style
          </p>

          <ul class="fiter-list">

           
          </ul>

          <ul class="dress-menu-list">

            <li>
              <div class="dress-menu-card">

                <div class="card-banner">
                  <img src="dress-menu-1.png" width="300" height="300" loading="lazy"
                    alt="" class="w-100">

                  <div class="badge">-15%</div>
<a href="order.jsp">
                  <button class="btn dress-menu-btn" acti>Order Now</button>
                </a>
                </div>

                <div class="wrapper">
                  <p class="category">salwar</p>

                  <div class="rating-wrapper">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                  </div>
                </div>

                <h3 class="h3 card-title">indian sarees Unlimited</h3>

                <div class="price-wrapper">

                  <p class="price-text">Price:</p>

                  <data class="price">Rs:49.00</data>

                  <del class="del" value="69.00">Rs:69.00</del>

                </div>

              </div>
            </li>

            <li>
              <div class="dress-menu-card">

                <div class="card-banner">
                  <img src="dress-menu-2.png" width="300" height="300" loading="lazy"
                    alt="" class="w-100">

                  <div class="badge">-10%</div>
<a href="order.jsp">
                  <button class="btn dress-menu-btn">Order Now</button></a>
                </div>

                <div class="wrapper">
                  <p class="category">Frock</p>

                  <div class="rating-wrapper">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                  </div>
                </div>

                <h3 class="h3 card-title">Anarkali Salwar</h3>

                <div class="price-wrapper">

                  <p class="price-text">Price:</p>

                  <data class="price" value="29.00">Rs:29.00</data>

                  <del class="del">Rs:39.00</del>

                </div>

              </div>
            </li>

            <li>
              <div class="dress-menu-card">

                <div class="card-banner">
                  <img src="dress-menu-3.png" width="300" height="300" loading="lazy"
                    alt="" class="w-100">

                  <div class="badge">-25%</div>
<a href="order.jsp">
                  <button class="btn dress-menu-btn">Order Now</button></a>
                </div>

                <div class="wrapper">
                  <p class="category">Sarees</p>

                  <div class="rating-wrapper">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                  </div>
                </div>

                <h3 class="h3 card-title">White Castle Saree</h3>

                <div class="price-wrapper">

                  <p class="price-text">Price:</p>

                  <data class="price" value="49.00">Rs:49.00</data>

                  <del class="del">Rs:69.00</del>

                </div>

              </div>
            </li>

            <li>
              <div class="dress-menu-card">

                <div class="card-banner">
                  <img src="dress-menu-4.png" width="300" height="300" loading="lazy"
                    alt="" class="w-100">

                  <div class="badge">-20%</div>
<a href="order.jsp">
                  <button class="btn dress-menu-btn">Order Now</button></a>
                </div>

                <div class="wrapper">
                  <p class="category">Blouses</p>

                  <div class="rating-wrapper">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                  </div>
                </div>

                <h3 class="h3 card-title">Best Saree Supreme</h3>

                <div class="price-wrapper">

                  <p class="price-text">Price:</p>

                  <data class="price" value="59.00 ">Rs:59.00</data>

                  <del class="del">Rs:69.00</del>

                </div>

              </div>
            </li>

            <li>
              <div class="dress-menu-card">

                <div class="card-banner">
                  <img src="dress-menu-5.png" width="300" height="300" loading="lazy"
                    alt="" class="w-100">

                  <div class="badge">-5%</div>
                 <a href="order.jsp">
                  <button class="btn dress-menu-btn">Order Now</button></a>
                </div>

                <div class="wrapper">
                  <p class="category">Jeans</p>

                  <div class="rating-wrapper">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                  </div>
                </div>

                <h3 class="h3 card-title">Skirts</h3>

                <div class="price-wrapper">

                  <p class="price-text">Price:</p>

                  <data class="price" value="49.00">Rs:49.00</data>

                  <del class="del">Rs:69.00</del>

                </div>

              </div>
            </li>

            <li>
              <div class="dress-menu-card">

                <div class="card-banner">
                  <img src="dress-menu-6.png" width="300" height="300" loading="lazy"
                    alt="" class="w-100">

                  <div class="badge">-15%</div>
                 <a href="order.jsp">
                  <button class="btn dress-menu-btn">Order Now</button></a>
                </div>

                <div class="wrapper">
                  <p class="category">Kurta</p>

                  <div class="rating-wrapper">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                  </div>
                </div>

                <h3 class="h3 card-title">Top</h3>

                <div class="price-wrapper">

                  <p class="price-text">Price:</p>

                  <data class="price" value="49.00">Rs:49.00</data>

                  <del class="del">Rs:69.00</del>

                </div>

              </div>
            </li>

          </ul>


        </div>
      </section>
      <!-- 
        - #CTA
      -->

      <section class="section section-divider white cta" style="background-color:var(--champagne-pink)">
      
        <div class="container">

          <div class="cta-content">

            <h2 class="h2 section-title">
               Discover the Latest Trends in
              <span class="span">Fashionable Dresses!</span>
            </h2>

            <p class="section-text">
              Our dress store in Hangzhou offers a wide selection of trendy dresses to suit every style and occasion.
            </p>
<a href="order.jsp">
            <button class="btn btn-hover" style="background-color: black;">Order Now</button></a>
          </div>

          <figure class="cta-banner">
            <img src="cta-banner.png" width="700" height="637" loading="lazy" alt="Burger"
              class="w-100 cta-img">

            <img src="sale-shape.png" width="216" height="226" loading="lazy"
              alt="get up to 50% off now" class="abs-img scale-up-anim">
          </figure>

        </div>
      </section>










      <!-- 
        - #TESTIMONIALS
      -->

      <section class="section section-divider white testi">
        <div class="container">

          <p class="section-subtitle1"style="color: hsl(330, 50%, 50%); font-size: 20px; ">Testimonials</p>

          <h2 class="h2 section-title">
            Our Customers <span class="span">Reviews</span>
          </h2>


          <ul class="testi-list has-scrollbar">

            <li class="testi-item">
              <div class="testi-card">

                <div class="profile-wrapper">

                  <figure class="avatar">
                    <img src="avatar-1.jpg" width="80" height="80" loading="lazy" alt="">
                  </figure>

                  <div>
                    <h3 class="h4 testi-name">Harry Potter</h3>

                    <p class="testi-title">CEO Dreamie</p>
                  </div>

                </div>

                <blockquote class="testi-text">
                  "I would be lost without this dress store. I would like to personally thank you for your outstanding service."
                </blockquote>

                <div class="rating-wrapper">
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                </div>

              </div>
            </li>

            <li class="testi-item">
              <div class="testi-card">

                <div class="profile-wrapper">

                  <figure class="avatar">
                    <img src="avatar-2.jpg" width="80" height="80" loading="lazy" alt="">
                  </figure>

                  <div>
                    <h3 class="h4 testi-name">Steve Jobs</h3>

                    <p class="testi-title">CEO Apple</p>
                  </div>

                </div>

                <blockquote class="testi-text">
                  "I would be lost without this dress store. I would like to personally thank you for your outstanding service."
                </blockquote>

                <div class="rating-wrapper">
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                </div>

              </div>
            </li>

            <li class="testi-item">
              <div class="testi-card">

                <div class="profile-wrapper">

                  <figure class="avatar">
                    <img src="avatar-3.jpg" width="80" height="80" loading="lazy" alt="">
                  </figure>

                  <div>
                    <h3 class="h4 testi-name">Sundar pichai</h3>

                    <p class="testi-title">CEO Google</p>
                  </div>

                </div>

                <blockquote class="testi-text">
                  "I would be lost without this dress store. I would like to personally thank you for your outstanding service."
                </blockquote>

                <div class="rating-wrapper">
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                </div>

              </div>
            </li>

          </ul>

        </div>
      </section>






      <!-- 
        - #BANNER
      -->

      <section class="section section-divider gray banner">
        <div class="container">

          <ul class="banner-list">

            <li class="banner-item banner-lg">
              <div class="banner-card">

                <img src="banner-1.jpg" width="550" height="450" loading="lazy"
                  alt="" class="banner-img">

                <div class="banner-item-content">
                  <p class="banner-subtitle">50% Off Now!</p>

                  <h3 class="banner-title">Discount For Trendy Frocks!</h3>

                  <p class="banner-text">Sale off 50% only this week</p>

                  <a href="order.jsp" ></a><button class="btn">Order Now</button>
                </div>

              </div>
            </li>

            <li class="banner-item banner-sm">
              <div class="banner-card">

                <img src="banner-2.jpg" width="550" height="465" loading="lazy" alt=""
                  class="banner-img">

                <div class="banner-item-content">
                  <h3 class="banner-title">Indian Kurta</h3>

                  <p class="banner-text">50% off Now</p>

                 <a href="order.jsp"> <button class="btn">Order Now</button></a>
                </div>

              </div>
            </li>

            <li class="banner-item banner-sm">
              <div class="banner-card">

                <img src="banner-3.jpg" width="550" height="465" loading="lazy" alt=""
                  class="banner-img">

                <div class="banner-item-content">
                  <h3 class="banner-title">American Frocks</h3>

                  <p class="banner-text">50% off Now</p>

                  <button class="btn">Order Now</button>
                </div>

              </div>
            </li>

            <li class="banner-item banner-md">
              <div class="banner-card">

                <img src="banner-4.jpg" width="550" height="220" loading="lazy" alt=""
                  class="banner-img">

                <div class="banner-item-content">
                  <h3 class="banner-title">Trendy Skirts</h3>

                  <p class="banner-text">Sale off 50% only this week</p>

                  <a href="order.jsp"><button class="btn">Order Now</button></a>
                </div>

              </div>
            </li>

          </ul>

        </div>
      </section>






  <!-- 
    - #FOOTER
  -->
 <footer class="footer">

    <div class="footer-top" style="background-image: url('footer-illustration.png')">
      <div class="container">

        <div class="footer-brand">

          <a href="" class="logo">SILLKY<span class="span">.</span></a>

          <p class="footer-text">
            Secure & trusted site for Dress Shopping and Booking Reservations.
          </p>

          <ul class="social-list">

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-facebook"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-twitter"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-instagram"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-pinterest"></ion-icon>
              </a>
            </li>

          </ul>

        </div>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Contact Info</p>
          </li>

          <li>
            <p class="footer-list-item">+94 123456789</p>
          </li>

          <li>
            <p class="footer-list-item">sillky@gmail.com</p>
          </li>

          <li>
            <address class="footer-list-item"> chavackacheri west, Chavakacheri, jaffna 40000</address>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Opening Hours</p>
          </li>

          <li>
            <p class="footer-list-item">Monday-Friday: 08:00-22:00</p>
          </li>

          <li>
            <p class="footer-list-item">Tuesday 4PM: Till Mid Night</p>
          </li>

          <li>
            <p class="footer-list-item">Saturday: 10:00-16:00</p>
          </li>

        </ul>

        <form action="" class="footer-form">

          <p class="footer-list-title">Leave Feedback</p>

          <div class="input-wrapper">

            <input type="text" name="full_name" required placeholder="Your Name" aria-label="Your Name"
              class="input-field">

            <input type="email" name="email_address" required placeholder="Email" aria-label="Email"
              class="input-field">

          </div>

          <textarea name="message" required placeholder="Message" aria-label="Message" class="input-field"></textarea>

          <button type="submit" class="btn">Submit</button>

        </form>

      </div>
    </div>

    <div class="footer-bottom">
      <div class="container">
        <p class="copyright-text">
          &copy; 2024 <a href="#" class="copyright-link">SILLKY</a> All Rights Reserved.
        </p>
      </div>
    </div>

  </footer>

   <!-- 
    - #BACK TO TOP
  -->
<a href="#top" class="back-top-btn" aria-label="Back to top" data-back-top-btn>
    <ion-icon name="chevron-up"></ion-icon>
  </a>
   <script src="script.js" defer></script>
     <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>
</body>
</html>