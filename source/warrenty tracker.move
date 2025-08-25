module MyModule::WarrantyService {
    use aptos_framework::signer;

    struct Warranty has store, key {
        product_id: u64,
        warranty_expiry: u64,
        service_records: vector<u64>
    }

    public fun register_product(owner: &signer, product_id: u64, expiry: u64) {
        let warranty = Warranty {
            product_id,
            warranty_expiry: expiry,
            service_records: vector::empty<u64>(),
        };
        move_to(owner, warranty);
    }

    public fun add_service(owner: &signer, service_date: u64) acquires Warranty {
        let warranty = borrow_global_mut<Warranty>(signer::address_of(owner));
        vector::push_back(&mut warranty.service_records, service_date);
    }
}
