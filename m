Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22F22256A
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDF8F87C16;
	Sat, 18 May 2019 22:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWNL7rH683bn; Sat, 18 May 2019 22:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECDBA878D1;
	Sat, 18 May 2019 22:41:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39CCF1BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3625A85D94
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-4Aus_-E0jS for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:41:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0BDF285CFE
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:41:19 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id f24so12133163qtk.11
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rdPx5/YxFpSy0ERuJlDi1pCpRRi+1n/Zz/+OlelD9So=;
 b=FJCbU/zwkd1ybQFCZz+699GV78RWenKbd4yAsMu89og+U+ud/G0gBA1lLk0jhGKsHd
 /20pvQNl52SYjWHYXchRUJjluZBM2eBKpfnPvW1OozPtO56p/DzxBQFQUiVXlJU6Tgo5
 NiM5cke8s86ykQn1jl2k3Ilrvuh02qxKhkqRp9jdQC0Hrph2C8UzakGGFpmHm/jVsFCe
 YdJALjVEEwbmU5XL7oJ0Yw2bEk8leZkaPI4sCmG5F3PY7EBLqB9WfpBW2KJBu14Y9dmg
 TTGGm7pzAPSacONyQ7Iw3eoaotMknPYVxUW4nFb5E5FZUAOAP7+Tlohju3+bAr61PSN1
 kzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rdPx5/YxFpSy0ERuJlDi1pCpRRi+1n/Zz/+OlelD9So=;
 b=OCUvAU/2WDVhHzIbnIrholmosmQVa4O/9L85GlPg1GbD80rcXbCaL2GhUEbVlMyy7v
 vGCXq5ULcsthJjPqZEXnKHKhUknET08kbq1gPRsN5iOcxWWJhJTTXD3Umwxv4WXqiV4v
 ZUULM6aa1vHyeDHjDDCx+NxnwyCuFnxDIaCUxxK8pPBRcvJbha14sqDXe5IxCj//KBUR
 CDiSeQYGlKZpFJXgcl2uCoo+Sc0xy43RZJhwND8UcbzI1qy7XHCi+LdVd1/kWdXQxSFj
 AGH1OAzDLkE0NFgR7RAIGOOlV4b1RnIt/Zf6XIQXwWnKYWFLDtR7YlHQs0pWK/v6G4b2
 XjLg==
X-Gm-Message-State: APjAAAWAeIdp5tcIAU2bj1PlBDt0RSNyTRr57xW9JEhNPbKY6GOPJ4/i
 QuD7SkiLwoviVtUvX1N+2Njdn8G3VL8=
X-Google-Smtp-Source: APXvYqzxdBO9MMb6dET4SnQAlTM0tXLawxXOprdKRncPC6Dp2iRyLxgfWrglWQjKRRXI+LF10RTPeg==
X-Received: by 2002:aed:3f9d:: with SMTP id s29mr1168876qth.337.1558219278103; 
 Sat, 18 May 2019 15:41:18 -0700 (PDT)
Received: from renatolg ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id y47sm1236580qtb.55.2019.05.18.15.41.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 15:41:17 -0700 (PDT)
Date: Sat, 18 May 2019 19:41:12 -0300
From: Renato Lui Geh <renatogeh@gmail.com>
To: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
 stefan.popa@analog.com, alexandru.Ardelean@analog.com,
 robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Message-ID: <9992a318aec777b9b7788bb40d976aa89e5963fe.1558219042.git.renatogeh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds a YAML binding for the Analog Devices AD7780/1 and
AD7170/1 analog-to-digital converters.

Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
---
 .../bindings/iio/adc/adi,ad7780.txt           | 48 -----------
 .../bindings/iio/adc/adi,ad7780.yaml          | 85 +++++++++++++++++++
 2 files changed, 85 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
deleted file mode 100644
index 440e52555349..000000000000
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-* Analog Devices AD7170/AD7171/AD7780/AD7781
-
-Data sheets:
-
-- AD7170:
-	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
-- AD7171:
-	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
-- AD7780:
-	* https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
-- AD7781:
-	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
-
-Required properties:
-
-- compatible: should be one of
-	* "adi,ad7170"
-	* "adi,ad7171"
-	* "adi,ad7780"
-	* "adi,ad7781"
-- reg: spi chip select number for the device
-- vref-supply: the regulator supply for the ADC reference voltage
-
-Optional properties:
-
-- powerdown-gpios:  must be the device tree identifier of the PDRST pin. If
-		    specified, it will be asserted during driver probe. As the
-		    line is active high, it should be marked GPIO_ACTIVE_HIGH.
-- adi,gain-gpios:   must be the device tree identifier of the GAIN pin. Only for
-		    the ad778x chips. If specified, it will be asserted during
-		    driver probe. As the line is active low, it should be marked
-		    GPIO_ACTIVE_LOW.
-- adi,filter-gpios: must be the device tree identifier of the FILTER pin. Only
-		    for the ad778x chips. If specified, it will be asserted
-		    during driver probe. As the line is active low, it should be
-		    marked GPIO_ACTIVE_LOW.
-
-Example:
-
-adc@0 {
-	compatible =  "adi,ad7780";
-	reg =	      <0>;
-	vref-supply = <&vdd_supply>
-
-	powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
-	adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
-	adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
-};
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
new file mode 100644
index 000000000000..931bc4f8ec04
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital converters
+
+maintainers:
+  - Michael Hennerich <michael.hennerich@analog.com>
+
+description: |
+  The ad7780 is a sigma-delta analog to digital converter. This driver provides
+  reading voltage values and status bits from both the ad778x and ad717x series.
+  Its interface also allows writing on the FILTER and GAIN GPIO pins on the
+  ad778x.
+
+  Specifications on the converters can be found at:
+    AD7170:
+      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
+    AD7171:
+      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
+    AD7780:
+      https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
+    AD7781:
+      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
+
+properties:
+  compatible:
+    enum:
+      - adi,ad7170
+      - adi,ad7171
+      - adi,ad7780
+      - adi,ad7781
+
+  reg:
+    description:
+      Chip select number for the device
+    maxItems: 1
+
+  vref-supply:
+    description:
+      The regulator supply for the ADC reference voltage
+    maxItems: 1
+
+  powerdown-gpios:
+    description:
+      Must be the device tree identifier of the PDRST pin. If
+      specified, it will be asserted during driver probe. As the
+      line is active high, it should be marked GPIO_ACTIVE_HIGH.
+    maxItems: 1
+
+  adi,gain-gpios:
+    description:
+      Must be the device tree identifier of the GAIN pin. Only for
+      the ad778x chips. If specified, it will be asserted during
+      driver probe. As the line is active low, it should be marked
+      GPIO_ACTIVE_LOW.
+    maxItems: 1
+
+  adi,filter-gpios:
+    description:
+      Must be the device tree identifier of the FILTER pin. Only
+      for the ad778x chips. If specified, it will be asserted
+      during driver probe. As the line is active low, it should be
+      marked GPIO_ACTIVE_LOW.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - vref-supply
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    adc@0 {
+      compatible =  "adi,ad7780";
+      reg = <0>;
+      vref-supply = <&vdd_supply>;
+
+      powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+      adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
+      adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
+    };
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
