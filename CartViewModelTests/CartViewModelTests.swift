//
//  CartViewModelTests.swift
//  CartViewModelTests
//
//  Created by Tekla on 12/3/23.
//

import XCTest
@testable import UnitTestingAssignment

final class CartViewModelTests: XCTestCase {

    var cartViewModel: CartViewModel!
    
    override func setUpWithError() throws {
        cartViewModel = CartViewModel()
    }
    
    override func tearDownWithError() throws {
        cartViewModel = nil
    }
    
    func testFetchProducts() {
        
    }
    
    func testAddProductWithID() {
        
    }
    
    func testAddProduct() {
        let product = Product(id: 101, title: "Spaceship Model", description: "Self explanotory", price: 217.9, selectedQuantity: 6)
        cartViewModel.addProduct(product: product)
        XCTAssertEqual(cartViewModel.selectedProducts.count, 1)
    }
    
    func testRemoveProduct() {
        let product = Product(id: 101, title: "Spaceship Model", description: "Self explanotory", price: 217.9, selectedQuantity: 1)
        cartViewModel.addProduct(product: product)
        cartViewModel.removeProduct(withID: product.id ?? 0)
        cartViewModel.removeProduct(withID: product.id ?? 0)
        XCTAssertEqual(cartViewModel.selectedProducts.count, 0)
    }
    
    func testClearCart() {
        let product = Product(id: 101, title: "Spaceship Model", description: "Self explanotory", price: 217.9, selectedQuantity: 6)
        cartViewModel.addProduct(product: product)
        cartViewModel.clearCart()
        XCTAssertEqual(cartViewModel.selectedProducts.count, 0)
    }
    
    func testTotalPrice() {
        let product1 = Product(id: 101, title: "Spaceship Model", description: "Self explanotory", price: 217.9, selectedQuantity: 6)
        let product2 = Product(id: 102, title: "Submarine Model", description: "Self explanotory", price: 157.9, selectedQuantity: 2)
        cartViewModel.addProduct(product: product1)
        cartViewModel.addProduct(product: product2)
        XCTAssertEqual(cartViewModel.totalPrice, 6 * 217.9 + 157.9 * 2)
    }
    
    func testSelectedItemsQuantity() {
        let product1 = Product(id: 101, title: "Spaceship Model", description: "Self explanotory", price: 217.9, selectedQuantity: 7)
        let product2 = Product(id: 102, title: "Submarine Model", description: "Self explanotory", price: 157.9, selectedQuantity: 2)
        cartViewModel.addProduct(product: product1)
        cartViewModel.addProduct(product: product2)
        XCTAssertEqual(cartViewModel.selectedItemsQuantity, 9)
        
    }
    
}
