Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8365FB15F1
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Sep 2019 23:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 576B788188;
	Thu, 12 Sep 2019 21:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PEbB46KBFg+m; Thu, 12 Sep 2019 21:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAFD288056;
	Thu, 12 Sep 2019 21:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 844961BF2FD
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 21:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 816B288056
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 21:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4Z3lyaagjnh for <devel@linuxdriverproject.org>;
 Thu, 12 Sep 2019 21:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E3A288046
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 21:40:03 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id s18so26131869qkj.3
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 14:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L5+jAMtI1CIAC/4kswIhxg+hTT5z+UEj9oJQQaJeISg=;
 b=c16+RQYnxW6kaB0EHeYyU3adxGtPcgSkk1gXJPAcMW9cWmQKgM6GrLxoyWul4Dpcst
 W4wNft32yrnZBJ8n/THumcMc7kY6L7JeUHLgC5kBsrU/EmexYRfFzw97nQHjue+PSuoL
 IaEkXLIMj/NB2NzhtYDMTzautfhL/udKh6ZNQvCE0TCgRxQ8QXmVHD24iZFDTF+EZafA
 U+JUzkBnrSlbC+lkKHoNX8kzbCS6wFEFpsGQLKfW9e4wTb/90KjU3Igr5O6votzCyMix
 I2ZDRMlDt4Qj6pnyRrnv50vRit53anrXOvRLzD7UgQ/mdqILJklFBuETzuVzlNhl63mn
 8zlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L5+jAMtI1CIAC/4kswIhxg+hTT5z+UEj9oJQQaJeISg=;
 b=OTrf4qR8ZhclW4gmA4qRhyplLkwTbBNV6lMlNTwCqlhborFgMe4KQdqDyGsd0/ZAy9
 nTXkABCujh6jK49lIOdSfoWHgY3nk57I6thV9V/HKSy5t7coTAg7QfhnJZ6QaJtU6k2p
 Hw7cTVjak2PLXeTL+uoOZWYBbrzTN9J6GiypesIvT4wb+IrKB/RqFSrOn+Hs3mobXE4x
 rrXG+k0xXDFcIkBVT+1giNU/a3VjZOI4i/j3Ax15JTaiBR9Nck2ZVx2rAR0LAi/eQ2rx
 7NBMLzrBnTYdvCH3UzFFQ9c/CaPuWnXB5woN/pH4OZGyEeEMvBty5bH6u7tc+Fz5Bo+D
 Sqfw==
X-Gm-Message-State: APjAAAUma+cJbVHvqg4u7Tvh9Pr+l4q1vimCX13kRA7oMXi2ONq9P/qq
 w84Ta0yKRDciNmqhvAOREU0=
X-Google-Smtp-Source: APXvYqzKsEsyelFpRkqcom+4qOub5t05/y+CoXTvPvu3De/EusIO+CgjIUrZ5OJPNNgoxn3e3Io2gg==
X-Received: by 2002:a37:6554:: with SMTP id z81mr13856107qkb.107.1568324402181; 
 Thu, 12 Sep 2019 14:40:02 -0700 (PDT)
Received: from localhost.localdomain (201-93-93-180.dial-up.telesp.net.br.
 [201.93.93.180])
 by smtp.gmail.com with ESMTPSA id v2sm9318509qtv.22.2019.09.12.14.39.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 14:40:01 -0700 (PDT)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Date: Thu, 12 Sep 2019 18:39:29 -0300
Message-Id: <20190912213929.3664-1-rodrigorsdc@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Rodrigo Carvalho <rodrigorsdc@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch add device tree binding documentation for ADIS16240.

Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
---
V2:
  - Remove true constant for spi-cpha and spi-cpol
  - Add description field for spi-cpha and spi-cpol
  - Add maxItems field for spi-cpha and spi-cpol

 .../bindings/iio/accel/adi,adis16240.yaml     | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
new file mode 100644
index 000000000000..4b1bd2419604
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
@@ -0,0 +1,61 @@
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
+  spi-cpha:
+    description: |
+      See Documentation/devicetree/bindings/spi/spi-controller.yaml
+    maxItems: 1
+
+  spi-cpol: |
+    description: |
+      See Documentation/devicetree/bindings/spi/spi-controller.yaml
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
+            spi-cpol;
+            spi-cpha;
+            interrupt-parent = <&gpio0>;
+            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
-- 
2.23.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
