Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F98E107CF8
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 06:20:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A2FE88C64;
	Sat, 23 Nov 2019 05:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QlN1GrBDYPeU; Sat, 23 Nov 2019 05:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B49C888C07;
	Sat, 23 Nov 2019 05:20:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DE2E1BF471
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 05:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31813881A6
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 05:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjNqcF2yDlH6 for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 05:20:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 515138819D
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 05:20:35 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id d13so8261514qko.3
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 21:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dSJiW8z0Nr8ieUsuKFAIjeRJ7R7kZTaybvOXtSJez8Y=;
 b=lXYB2eRGlNxuE0Q92udIpIYYLqwUTkfcYVkiJ/UFbMufnWibKPiLkAjHcaFFCW4Z1T
 DPZ0hweJfKL5jW9a8x6fJjokWUgO8KiiPTKgB0J4M8dHNLGa0l6f539towW+estUsC5A
 TaR72yHkwBerFYw/wktS9eNI9xOoj8qNMwxzq4dEYPf5i1BaODO7WdsZRGWVDJFBTvvp
 cdbN3XxUlXHtYRTpEmLQbRBuK9k7XGHuBOaPUfUNDkjJDHObe4Y/84WjlKacImHOqAT3
 wGD0DePhU7oOzIeQMe1ID58w5aJVK7zXMwA+yZUE23A6CclmQAWp35WJr1Gp4Conww5V
 2ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dSJiW8z0Nr8ieUsuKFAIjeRJ7R7kZTaybvOXtSJez8Y=;
 b=QOfJ5BsDGNDcCfXqle12H1/kFlO91emn1m6M2y3wEOTxRnN72Ae0ubemHR4yzDRJqP
 IK7eAj+/zNxDYkBTOtifw4nHObeTl89nwgBM1Mrr/+6Oug+QwmKA6stWvq5p0fsO4WL+
 NgW/PTxcwcJG4kSvwtYZIE6LpWg6egfOXIyDpadLyb2pDKBX2PJ1/jME/T5JMW6LG1Sf
 Y5NSGyJoGeoY9D29v9VbF+2GSTs3ygjsty3ITDIQTHF0JhUbrF4sJnlvWde1wGy0hj3r
 DzmpjyXwoKxX+jnFk71lmT7Mjtvk7O7P3T1Lfuh+GvADaYhWRGVD6mpbB1Dg9pQR9gP6
 mNRg==
X-Gm-Message-State: APjAAAUSiCFd2Bt584r7OmUWEpHMVneyn4KrV79PSaC14V+3qgdOhPrF
 yuKcNursdQ3lJUVWzTpQxC4=
X-Google-Smtp-Source: APXvYqwcdIV4A8Q6CT/LktHtIuaaggY3aC//hpkQKzpsZhjuegjpeIoGV1oucIHmJrnUVMq8ZMTfSg==
X-Received: by 2002:a05:620a:1472:: with SMTP id
 j18mr12346580qkl.184.1574486434275; 
 Fri, 22 Nov 2019 21:20:34 -0800 (PST)
Received: from localhost.localdomain ([177.76.215.166])
 by smtp.gmail.com with ESMTPSA id e10sm145506qte.51.2019.11.22.21.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 21:20:33 -0800 (PST)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: alexandru.ardelean@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Date: Sat, 23 Nov 2019 02:19:27 -0300
Message-Id: <20191123051927.5016-1-rodrigorsdc@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rodrigo Carvalho <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch add device tree binding documentation for ADIS16240.

Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
---
V4:
   - Remove spi-cpha and spi-cpol in binding example, since this driver
supports only one timing mode.
 .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
new file mode 100644
index 000000000000..8e902f7c49e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ADIS16240 Programmable Impact Sensor and Recorder driver
+
+maintainers:
+  - Alexandru Ardelean <alexandru.ardelean@analog.com>
+
+description: |
+  ADIS16240 Programmable Impact Sensor and Recorder driver that supports
+  SPI interface.
+    https://www.analog.com/en/products/adis16240.html
+
+properties:
+  compatible:
+    enum:
+      - adi,adis16240
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* Example for a SPI device node */
+        accelerometer@0 {
+            compatible = "adi,adis16240";
+            reg = <0>;
+            spi-max-frequency = <2500000>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
