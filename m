Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 032E5108111
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Nov 2019 00:36:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACC3A86B43;
	Sat, 23 Nov 2019 23:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUShPkyh8iED; Sat, 23 Nov 2019 23:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95F6486B49;
	Sat, 23 Nov 2019 23:36:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 545FA1BF568
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 23:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5150685F18
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 23:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJVc7HZ-ZvAK for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 23:36:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5DF385F10
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 23:36:02 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id q8so9923636qtr.10
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 15:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2od3CCfgH/wIJisYHutA7VGKvbA/ioFGgCw20B9AbCQ=;
 b=aVRPkvGbxERhDbAG8Ocv8JoY/lx7E3zCK+HMvmy0zK/T+ZOHuhS5Bjgd6h1wXmkVbP
 JYq7hmz23+kDhPYYJpZpLIXdCyBrb2E+kw5BJGyBxfgmTZRSIaJHFZ0CrDMxg50kmHsp
 6TnrKhZbTFV9i0J+Hp8Ln7IQhM4oDmtodv6LnY9VYg+7iJzcCr4l+gUhVscdOz48vwRP
 GLKHjawSPd5dJfwlw3tTIb49UWFWKYPvHqLoDznjCaFFAVZoMrRHfGNwtT2qZEcEV04m
 7fDjZOjf9+Ra8YcjpSXVxycuR7s4FrUNiZSCJBIAcVN7uxF3SXyF2hM/H3SoiiiUNYOy
 HvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2od3CCfgH/wIJisYHutA7VGKvbA/ioFGgCw20B9AbCQ=;
 b=I4muB9LX7J4mTJlHeUrfgClTVUBNYR2TtZwO0Clz/3wZNr4rBo5++7pQoRYxHvc5Ia
 JmVHlHIb3DXtkJOlD+/qFGgOr8/vBPSrvxLo9rU1BtCgc/k0qNSA2hTWeIOFXd85ENYy
 tyttUzj7BooDObdKadZjP728dNSvpnaD6gLyzVJvAGGsZ5w3VX8uRwv8Wuy2JfNaQwpN
 XY1xsevfLePKBrdCABxJHAeCZ3vW572iX7kk0vXXDjm2Nz8xz1z1arfXRALKbItMySS8
 qibz252oyFryLXcs7zp5cQYTIBfW9IPR+pMhKuhgD18/UObWvYFlA/hUwktjpi4zE6SH
 gGVA==
X-Gm-Message-State: APjAAAWlTysv0c2/IHtIh998kcfeJiWRIC5JZGgUA0mCBlpLVzCFghj4
 vL7DBwhXhf+sNx1O6YrUPPU=
X-Google-Smtp-Source: APXvYqwiW5oPSsRKtf1m5y8Vp4pPXQoOpP371XN7h1l7Y0p0ha1FctguEtstT6uIp6HcajHDmWmkVg==
X-Received: by 2002:ac8:424e:: with SMTP id r14mr4386591qtm.193.1574552161525; 
 Sat, 23 Nov 2019 15:36:01 -0800 (PST)
Received: from localhost.localdomain ([177.76.215.166])
 by smtp.gmail.com with ESMTPSA id f22sm1357518qtc.43.2019.11.23.15.35.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 15:36:01 -0800 (PST)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 alexandru.ardelean@analog.com
Subject: [PATCH v5 2/2] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Date: Sat, 23 Nov 2019 20:35:10 -0300
Message-Id: <20191123233510.4890-2-rodrigorsdc@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191123233510.4890-1-rodrigorsdc@gmail.com>
References: <20191123233510.4890-1-rodrigorsdc@gmail.com>
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
V5:
  - None 

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
