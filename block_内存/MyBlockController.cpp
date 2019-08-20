

struct __MyBlockController__viewDidLoad_block_impl_0 {
    struct __block_impl impl;
    struct __MyBlockController__viewDidLoad_block_desc_0* Desc;
    __MyBlockController__viewDidLoad_block_impl_0(void *fp, struct __MyBlockController__viewDidLoad_block_desc_0 *desc, int flags=0) {
        impl.isa = &_NSConcreteStackBlock;
        impl.Flags = flags;
        impl.FuncPtr = fp;
        Desc = desc;
    }
};

//实现函数
static void __MyBlockController__viewDidLoad_block_func_0(struct __MyBlockController__viewDidLoad_block_impl_0 *__cself) {
    
    printf("Block\n");
    
}

//内存分配
static struct __MyBlockController__viewDidLoad_block_desc_0 {
    size_t reserved;
    size_t Block_size;
}__MyBlockController__viewDidLoad_block_desc_0_DATA = {
    0, sizeof(struct __MyBlockController__viewDidLoad_block_impl_0)
    
};
