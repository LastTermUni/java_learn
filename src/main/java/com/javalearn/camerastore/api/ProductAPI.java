package com.javalearn.camerastore.api;

import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.BrandService;
import com.javalearn.camerastore.service.CategoryService;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/admin")
public class ProductAPI {
    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    ServletContext context;

    public static String path;

    static {
        try {
            path = (ProductAPI.class.getProtectionDomain().getCodeSource().getLocation().toURI()).getPath();
            if (path.endsWith(".jar") || path.endsWith(".war") || path.endsWith("classes/")) {
                // Chạy bằng tomcat (đã packaged)
                if (path.lastIndexOf("/target/") > 0) {
                    // Chạy ở local
                    path = path.substring(0, path.lastIndexOf("/target/"));
                } else {
                    // Chạy ở server
                    path = Paths.get(path).getParent().toString();
                }
            } else {
                // Chạy bằng IntellJ IDEA
                path = System.getProperty("user.dir");
            }
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
    }

    @GetMapping("/cateList")
    public List<Category> getCate() throws URISyntaxException {
        System.out.println(path);

        return categoryService.getCategory();
    }

    @GetMapping("/brandList")
    public List<Brand> getBrand() {

        return brandService.getBrands();
    }

    @PostMapping(value = "/product")
    public ResponseEntity<ProductRequest> addProduct(@RequestBody ProductRequest productRequest) {
        try {
            productRequest.setStatus(1);
            productService.saveProduct(productRequest);
            return new ResponseEntity<>(productRequest, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, HttpServletRequest request)
            throws URISyntaxException, IOException {

        // path
        String dirName = "/Front-end/images/product";

        // path mà để run app (folder target) , lấy mục resource ( /Front-end )
        String absolutePath = request.getServletContext().getRealPath(dirName);
        String fileName = StringUtils.cleanPath(Objects.requireNonNull(file.getOriginalFilename()));
        Path uploadPath = Paths.get(absolutePath).toAbsolutePath();

        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }
        try (InputStream inputStream = file.getInputStream()) {
            Path filePath = uploadPath.resolve(fileName);
            System.out.println(filePath);
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException ioe) {
            throw new IOException("Could not save image file: " + fileName, ioe);
        }

        // String url = "D:\\java
        // project\\java_learn\\src\\main\\webapp\\Front-end\\images\\product";
        //
        //// String url = path + "/uploads";
        // System.out.println(url);
        // Path pathImage = Paths.get(url, file.getOriginalFilename());
        //// Path pathImages = Paths.get(url, file.getOriginalFilename());
        // try {
        // Files.copy(file.getInputStream(), pathImage,
        // StandardCopyOption.REPLACE_EXISTING);
        // } catch (IOException e) {
        // e.printStackTrace();
        // }
        return "product-list";
    }

    // upload wth edit
    @PostMapping("/upload/{id}")
    public String uspload(@RequestParam("file") MultipartFile file, HttpServletRequest request)
            throws URISyntaxException, IOException {

        // path
        String dirName = "/Front-end/images/product";

        String absolutePath = request.getServletContext().getRealPath(dirName);
        String fileName = StringUtils.cleanPath(Objects.requireNonNull(file.getOriginalFilename()));
        Path uploadPath = Paths.get(absolutePath).toAbsolutePath();

        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }
        try (InputStream inputStream = file.getInputStream()) {
            Path filePath = uploadPath.resolve(fileName);
            System.out.println(filePath);
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException ioe) {
            throw new IOException("Could not save image file: " + fileName, ioe);
        }

        // String path =
        // (ProductAPI.class.getProtectionDomain().getCodeSource().getLocation().toURI()).getPath();
        // if (path.endsWith(".jar") || path.endsWith(".war") ||
        // path.endsWith("classes/")) {
        // // Chạy bằng tomcat (đã packaged)
        // if (path.lastIndexOf("/target/") > 0) {
        // // Chạy ở local
        // path = path.substring(0, path.lastIndexOf("/target/"));
        // } else {
        // // Chạy ở server
        // path = Paths.get(path).getParent().toString();
        // }
        // } else {
        // // Chạy bằng IntellJ IDEA
        // path = System.getProperty("user.dir");
        // }
        // String url = "C:\\Users\\VIET TIEN\\Desktop\\Java
        // Project\\java_learn\\src\\main\\webapp\\Front-end\\images\\product";

        // String url = path + "/uploads";
        // System.out.println(url);
        // Path pathImage = Paths.get(url, file.getOriginalFilename());
        // Path pathImages = Paths.get(url, file.getOriginalFilename());
        // try {
        // Files.copy(file.getInputStream(), pathImage,
        // StandardCopyOption.REPLACE_EXISTING);
        // } catch (IOException e) {
        // e.printStackTrace();
        // }
        return "product-list";
    }

    @GetMapping("/product")
    public List<Product> getProduct() {
        return productService.getProduct();
    }

}
