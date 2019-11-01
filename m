Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C64AEBB59
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 01:03:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 75BFF234BD;
	Fri,  1 Nov 2019 00:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VcaB8obN7S8; Fri,  1 Nov 2019 00:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 532F5233B8;
	Fri,  1 Nov 2019 00:03:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C30251BF9CD
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 00:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B561987B08
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 00:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id euDQHMwTlWm8 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 00:03:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2FD387A2F
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 00:03:31 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id g50so10934572qtb.4
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 17:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VKxv5zSXLT1ehgNKTex+0kSfIDKsNz1FYp7ELOBKXaw=;
 b=uQ+7UtyjG5GA1UQaFEr6n72Aa3Q4dGYJnOftfMff/8zzfTXCojzeL74N5S4ghYJsk4
 oDU8oZ0+M0n6yy2h9bQoVd5OZQ+tOc46ZzkgEoh4NC4WjF4w3pfGBZFXyKb5akkGCT37
 fpJ0WYT4Y50xOk1AkIfDharSR6bHEfRupZQlC1zOzt7tSZKpsX22Snk6jq9MEctd5ehM
 jtKGS8hXO4BTODlIVlZRodLYBUMuntTj2eXCd0DH2/DGPy4lRwV6DybOvc0lLiPgAKMw
 hj3IhtwhiPqO1kFbc9gyl3876rMWhuN5qClB/zhaZMM6f6pGa8lryvbb7ONdyjVy0yTt
 4MxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VKxv5zSXLT1ehgNKTex+0kSfIDKsNz1FYp7ELOBKXaw=;
 b=k/TaZ7FsTs+hnlJ3sk0sD2ULV51jWvc4+3e7a+v3MSVlcbzkjhqfhWxSCoi19Q8FB+
 4g2ZY+AzF1z+jrPpvl8V/rK8okEye8j6dHS6jAq/XJGH6r96LlmaDH+D1FqrDKOc+57p
 ANKwf4UpGUz4KlHqj0YQX40qg0KHeEc29CH2fRa9qWCTuAdVui3WNCGYCOFqiwIYXt10
 BCqzAzhBXuAPUUmKSBjqizQhfh6Gt1yaT/7QRVmViQIlJ1yJy0ST41Ky3ue4KpTOr/1h
 KRffDf72eL4ZsiAZ6hpNPYLDQBV0agUAuuGadYPY3ozFWLacYiXzvXoKdQ2PMpy1LYRY
 +EvQ==
X-Gm-Message-State: APjAAAX1PKtiaMRoo0oddbUqCm4lWU50SGaQrMhPUL98uhc/ls77AakM
 B6mjmizSyySBe849/FgwNIM=
X-Google-Smtp-Source: APXvYqymy6b+iU9I+tawyTCVvYzzlBX02xlrg519Yb/4Rlqrui7DJhFfgNwIGWHab1ijOZsnqjWQSg==
X-Received: by 2002:ac8:549:: with SMTP id c9mr769668qth.178.1572566610732;
 Thu, 31 Oct 2019 17:03:30 -0700 (PDT)
Received: from localhost.localdomain ([187.34.252.37])
 by smtp.gmail.com with ESMTPSA id n5sm2693959qke.74.2019.10.31.17.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 17:03:30 -0700 (PDT)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Date: Thu, 31 Oct 2019 21:03:01 -0300
Message-Id: <20191101000301.12901-1-rodrigorsdc@gmail.com>
X-Mailer: git-send-email 2.23.0
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
V3:
   - Remove spi-cpol and spi-cpha field. They don't seem necessary
 .../bindings/iio/accel/adi,adis16240.yaml     | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
new file mode 100644
index 000000000000..9a4cd12c4818
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
@@ -0,0 +1,51 @@
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
+            spi-cpol;
+            spi-cpha;
+            interrupt-parent = <&gpio0>;
+            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
