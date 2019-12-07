Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABC0115B05
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Dec 2019 05:54:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21E2388643;
	Sat,  7 Dec 2019 04:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocapNcaudicp; Sat,  7 Dec 2019 04:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3BF08813E;
	Sat,  7 Dec 2019 04:54:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DF801BF280
 for <devel@linuxdriverproject.org>; Sat,  7 Dec 2019 04:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52B55204FE
 for <devel@linuxdriverproject.org>; Sat,  7 Dec 2019 04:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TiUe1fvX7lf2 for <devel@linuxdriverproject.org>;
 Sat,  7 Dec 2019 04:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 65A2120489
 for <devel@driverdev.osuosl.org>; Sat,  7 Dec 2019 04:54:16 +0000 (UTC)
Received: by mail-ua1-f51.google.com with SMTP id f9so3394422ual.4
 for <devel@driverdev.osuosl.org>; Fri, 06 Dec 2019 20:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PoAYAtQsECMKBQu3m3UL38cyfBNcCrjyU109EM5/2Kk=;
 b=vKFZXiU88cdk8U11fBerp2o/L9d60eSFcOf8iuyvdLhzAF+nThRMBGnaPY0Gm5EIO7
 fwco54CdXQfPHpYvhDp/m3EsVFrA8TciyqTvJ9DvDSTciLEHNm1xMdpNHsrdltMGQRSm
 xtv2y6APCIZ1MqVTlB6QAWiJGI/ezpQB/bIdhtivtjotOiONQAqwtXpVRfc2yqmWlbiD
 vRkWv2u45JfIoQsNVwLZhMnUfq7FIJbR7f8RoUo2lxqi+rH8L5qHNT7dlDPzaTYkoFSr
 R3h5DB6Kf8hIPGe9YU85vzyjY8YbKZvv9cUWekwvVS1fkbN0PqjgnSv1IXBi67u2+BUN
 7D3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PoAYAtQsECMKBQu3m3UL38cyfBNcCrjyU109EM5/2Kk=;
 b=CDzE3SjUJhkhtTLyO9fuerrvf7aMbGTnYCTO4cM5rIe5vX5oO1UBFTocBtkNEyq0oY
 rQBc3MiSAtDfyHVuAJOpu5019ekXeyrztuIrosJF0PgVLRCzbyQBVKeqYkrvMLL0fmCY
 q0MxZzOetKQHkE9Av2Wrwv7uDFQSJyLmrzk2gXBm+n17sOutsQC0B6YfzgXont/rblGB
 MAptha6cr4vKwdDdT/4Nh/szBBeNBQ8SAj/LOB3uqy0Fmht0xNY5Ox/fOWtOm5qUmBsx
 qyqHe0vPjzujIvSa6gQuNOtRqgsKzMPh2V7BVjeUwgYBB2317uzrMazFYPikHnUHuyI4
 J20A==
X-Gm-Message-State: APjAAAWO0JfByf68Dd2sM6+wPLfBJBSmpTsHkFMFQCtTbrT/wOyOY0ep
 OnidIOLwXK8CgrEz7vg0rjc=
X-Google-Smtp-Source: APXvYqz5B4qddztDDlAGY2AqZoYhWgimCOX1uIFxzn4FIBcw/FxrrTMa9ztU/J7UcMFTFBUysGo9Jw==
X-Received: by 2002:ab0:30a4:: with SMTP id b4mr10697339uam.85.1575694455208; 
 Fri, 06 Dec 2019 20:54:15 -0800 (PST)
Received: from localhost.localdomain ([177.45.184.74])
 by smtp.gmail.com with ESMTPSA id w132sm8156205vkw.46.2019.12.06.20.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 20:54:14 -0800 (PST)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v6 2/2] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Date: Sat,  7 Dec 2019 01:53:39 -0300
Message-Id: <20191207045339.9186-2-rodrigorsdc@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207045339.9186-1-rodrigorsdc@gmail.com>
References: <20191207045339.9186-1-rodrigorsdc@gmail.com>
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

Signed-off-by: Rodrigo Carvalho <rodrigorsdc@gmail.com>
---
V6:
  - Update SPDX license identifier

 .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
new file mode 100644
index 000000000000..4147f02b5e3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
