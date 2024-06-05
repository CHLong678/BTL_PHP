<?php require (__DIR__ . '/layouts/header.php'); ?>
<?php
require ('./database/connect.php');
require_once ('./database/query.php');

// Lấy giá trị id của chuyên mục từ URL
$id = $_GET['id'];

// Truy vấn để lấy các sản phẩm thuộc chuyên mục
$sql_sanpham = "SELECT * FROM sanpham WHERE machuyenmuc = '$id'";
$sanpham = queryResult($conn, $sql_sanpham);

// Truy vấn để lấy tên chuyên mục
$sql_chuyenmuc = "SELECT tenchuyenmuc FROM chuyenmuc WHERE machuyenmuc = '$id'";
$chuyenmuc = queryResult($conn, $sql_chuyenmuc);

if (is_string($chuyenmuc)) {
  // SQL query for chuyenmuc failed
  echo "Error: " . $chuyenmuc;
} else {
  $row_chuyenmuc = $chuyenmuc->fetch_assoc();
  ?>

  <!DOCTYPE html>
  <html lang="zxx">

  <head>
    <!-- ... -->
    <style>
      .no-product-message {
        text-align: center;
        font-size: 24px;
        font-weight: bold;
        color: #333;
        padding: 50px 0;
        background-color: #f8f8f8;
        border: 1px solid #e5e5e5;
        border-radius: 5px;
        animation: fadeIn 0.5s ease-in-out;
      }

      @keyframes fadeIn {
        0% {
          opacity: 0;
          transform: translateY(-20px);
        }

        100% {
          opacity: 1;
          transform: translateY(0);
        }
      }
    </style>
  </head>

  <body>
    <!-- Header và Navigation -->
    <!-- ... -->

    <section class="breadcrumb-section">
      <h2 class="sr-only">Site Breadcrumb</h2>
      <div class="container">
        <div class="breadcrumb-contents">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.php">Trang Chủ</a></li>
              <li class="breadcrumb-item active"><?php echo $row_chuyenmuc['tenchuyenmuc']; ?></li>
            </ol>
          </nav>
        </div>
      </div>
    </section>

    <main class="inner-page-sec-padding-bottom">
      <div class="container">
        <div class="shop-product-wrap grid with-pagination row space-db--30 shop-border">
          <?php if (is_int($sanpham)) {
            // SQL query for sanpham failed
            echo "<div class='d-flex justify-content-center text-center'><div class='no-product-message'>Không có sản phẩm nào trong chuyên mục này.</div></div>";
          } elseif ($sanpham->num_rows > 0) { ?>
            <?php while ($row = $sanpham->fetch_assoc()) { ?>
              <div class="col-lg-4 col-sm-6">
                <div class="product-card">
                  <div class="product-grid-content">
                    <div class="product-header">
                      <a href="" class="author">
                        <?php echo $row['tag']; ?>
                      </a>
                      <h3><a
                          href="san-pham.php?id=<?php echo $row['masanpham']; ?>"><?php echo substr($row['tensanpham'], 0, 28); ?>...</a>
                      </h3>
                    </div>
                    <div class="product-card--body">
                      <div class="card-image">
                        <img src="http://localhost:8080/webbansach/<?php echo $row['anhchinh']; ?>" alt=""
                          style="height: 350px; width: 350px;">
                        <div class="hover-contents">
                          <a href="san-pham.php?id=<?php echo $row['masanpham']; ?>" class="hover-image">
                            <img src="http://localhost:8080/webbansach/<?php echo $row['anhphu1']; ?>" alt=""
                              style="height: 350px; width: 350px;">
                          </a>
                        </div>
                      </div>
                      <div class="price-block">
                        <span class="price"><?php echo number_format($row['giaban']); ?>đ</span>
                        <del class="price-old"><?php echo number_format($row['giagoc']); ?>đ</del>
                        <span class="price-discount">-<?php echo number_format($row['giagoc'] - $row['giaban']); ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            <?php } ?>
          <?php } else { ?>
            <div class="d-flex justify-content-center text-center">
              <div class="no-product-message">Không có sản phẩm nào trong chuyên mục này.</div>
            </div>
          <?php } ?>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <!-- ... -->
  </body>

  </html>

<?php } ?>
<?php require (__DIR__ . '/layouts/footer.php'); ?>