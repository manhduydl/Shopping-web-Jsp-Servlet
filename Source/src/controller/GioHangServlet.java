package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.Product;

/**
 * Servlet implementation class GioHangServlet
 */
public class GioHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Cart> cart = new ArrayList<Cart>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GioHangServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String ma_san_pham = request.getParameter("ma_san_pham");
		if (command.equals("addCart")) {
			Product p = new Product(Integer.parseInt(ma_san_pham), 0, "", "",
					0.0 , "", "");
			addToCart(p);
			// sau khi them vao gio hang ta se chuyen toi trang gio hang
			// can tao session de luu tru gia tri
			HttpSession session = request.getSession();

			// ta test xem gio hang co them duoc ko?
			System.out.println(cart.size());
			session.setAttribute("cart", cart);
			response.sendRedirect("/shop/cart.jsp");
		} else{
			if(command.equals("deleteCart")){
				Product p = new Product(Integer.parseInt(ma_san_pham), 0, "", "",
						0.0 , "", "");
				deleteFromCart(p);
				HttpSession session = request.getSession();

				// ta test xem gio hang co them duoc ko?
				System.out.println(cart.size());
				session.setAttribute("cart", cart);
				response.sendRedirect("/shop/cart.jsp");
			} else{
				if(command.equals("removeCart")){
					Product p = new Product(Integer.parseInt(ma_san_pham), 0, "", "",
							0.0 , "", "");
					removeFromCart(p);
					HttpSession session = request.getSession();

					//lưu vào session
					session.setAttribute("cart", cart);
					response.sendRedirect("/shop/cart.jsp");
				}else{
					if(command.equals("setCart")){
						Product p = new Product(Integer.parseInt(ma_san_pham), 0, "", "",
								0.0 , "", "");
						setCart(p,Integer.parseInt((String) request.getParameter("soluong")));
						HttpSession session = request.getSession();

						session.setAttribute("cart", cart);
						response.sendRedirect("/shop/cart.jsp");
					}
				}
			}
		}
	}

	private String removeFromCart(Product p) {
		for (Cart item : cart) {
			if (item.getP().getMa_san_pham() == p.getMa_san_pham()) {
				cart.remove(item);
				return "cart";
			}
		}
		return "cart";
	}
	
	private String setCart(Product p, int s) {
		for (Cart item : cart) {
			if (item.getP().getMa_san_pham() == p.getMa_san_pham()) {
				item.setQuantity(s);
				return "cart";
			}
		}
		Cart c = new Cart();
		c.setP(p);
		c.setQuantity(s);
		cart.add(c);
		return "cart";
	}

	// phuongw thuc them san pham moi vao trong gio hang
	public String addToCart(Product p) {
		for (Cart item : cart) {
			if (item.getP().getMa_san_pham() == p.getMa_san_pham()) {
				item.setQuantity(item.getQuantity() + 1);
				return "cart";
			}
		}
		Cart c = new Cart();
		c.setP(p);
		c.setQuantity(1);
		cart.add(c);
		return "cart";
	}
	
	// phuongw thuc giam bot 1 san pham khoi trong gio hang
		public String deleteFromCart(Product p) {
			for (Cart item : cart) {
				if (item.getP().getMa_san_pham() == p.getMa_san_pham() && item.getQuantity()>1) {
					item.setQuantity(item.getQuantity() - 1);
					return "cart";
				}
			}
			return "cart";
		}

}
