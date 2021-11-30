<!-- <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet"> -->
<section style="min-height: calc(100vh - 120px - 32px);" class="w-full my-auto flex justify-center items-center">
    <div style="min-height: calc(100vh - 120px - 64px);" class="w-4/5 bg-white shadow-md flex flex-col">
        <div class="bg-green-800 w-full h-16 flex justify-between items-center px-8">
            <div class="text-white flex space-x-1">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                </svg>
                <p>CARRITO ({{itemCount}})</p>
            </div>
            <div class=""></div>
        </div>
        <div class="flex-1 px-4 py-4 flex">
            <div class="flex-auto">
                {{foreach items}}
                <div id="{{id}}" class="flex justify-between items-center h-28 pr-8">
                    <div class="flex items-center">
                        <div class="w-28">
                            <img class="object-contain" src="{{img}}" alt="">
                        </div>
                        <div class="text-xs text-gray-600">
                            <p class="font-bold text-sm text-black">{{name}}</p>
                            <p>{{provider}}</p>
                            <p>Precio Unidad: <span class="font-bold text-black">L.{{price}}</span></p>
                            <p>SUBTOTAL (x{{cant}} artículo(s))</p>
                        </div>
                    </div>
                    <div class="flex items-center space-x-4">
                        <div class="hidden lg:block">
                            <p class="text-green-500 font-bold">L. {{subtot}}</p>
                        </div>
                        <div class="">
                            <form action="Cart.php" method="post">
                                <input type="hidden" name="id" id="id" value="{{id}}">
                                <input type="hidden" name="mode" value="DEL">
                                <button class="bg-red-500 text-white p-2 shadow-md rounded-full transition-all duration-150 hover:shadow-none" aria-label="delete from cart">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                    </svg>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                {{endfor items}}
            </div>
            <div class="w-96 shadow-md rounded-md space-y-8 px-4 py-8">
                <div class="flex justify-between">
                    <span class="font-extrabold text-gray-800">TOTAL:</span>
                    <span class="font-bold text-green-500 text-lg">L.{{total}}</span>
                </div>
                <div class="">
                    <button id="buyMore" type="button" class="border border-green-500 text-green-500 font-bold w-full h-10 rounded-3xl transform transition-all duration-150 hover:scale-105">
                        MÁS PRODUCTOS
                    </button>
                </div>
                <div class="">
                    <a href="" class="flex justify-between items-center text-white bg-green-500 font-bold w-full h-10 rounded-3xl px-4 transform transition-all duration-150 hover:scale-105">
                        <span class="flex-auto text-center">CONTINUAR</span>
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    document.addEventListener("DOMContentLoaded", () => {
        const btnBuyMore = document.getElementById("buyMore");

        btnBuyMore.addEventListener("click", () => {
            window.history.back();
        });
    });
</script>