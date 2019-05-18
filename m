Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212AB22558
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:16:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF9A687CCB;
	Sat, 18 May 2019 22:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RGD24+KPUCxU; Sat, 18 May 2019 22:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E036878CE;
	Sat, 18 May 2019 22:15:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E38A21BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DDE3F22720
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WvLt95Gf3h6H for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 799F3226E9
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:15:55 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id m32so12197791qtf.0
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y87QQQeaLiI1oNeEvmjlObGb959ta9/nwNHRHt6yTIY=;
 b=i7EWYzfUI7wZ55lYvmgrWJibFvXkvP5ATGyedFaUpxf2Id68eWrJgZFQPE8bwx3s9g
 SFuKshGbYvq6oKTjm/JUp1AN6XhIAgNjhZb9QbD+cCEeaf3eS3LVUuTVC1e2DSYst9Vu
 Tu8E8xjmY1j30fA/tQSj4Jnmvm21rPpI1NpWRY8F6s91eceoEMZBXJ4RVkXUBKskpYo8
 0wpDfL0JnajFkvF3i7s8ZdivBubFt7t+AsgSnv+/TeElhkhq4pDaaPSuGoRlViNtz7aG
 X1PvJ2B/5flcObh5uGyUdtZ8k8dFyMynjhbBSvoCAbhIrK3LY3TlVUGL/P98JOvBtCDS
 p2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y87QQQeaLiI1oNeEvmjlObGb959ta9/nwNHRHt6yTIY=;
 b=dOVkXEqyhc108L/6ofM68tedSj3b3wMqLgFUTay7L70uQvEyn4XCC7AVXqCD9YbOaz
 7CQptZTQi1MvfEXaoz7Ro8HzU1i1hQJAXuHvQVBNkziMvqbnaxy0CdkG7Biqg29gn3mv
 xxh+d2Ulj+3rqT8YpffsKupyEVK+8duv9X+Ymddm8kFtngGzbxmp7zMPGs2Uf83aNypH
 t5CgjcoyJardEJMaS5TBaexz1Fs8ENL2q0ZOdYOIRjMt//kX8e8VSS3Hb4LANXwd9qtW
 5L837YYdvQM/qlCsEUyf6HSo5EaXrcq5QCzV983n/GV++rNTVAp2bGU3mS6wvsDXfTHR
 /g2w==
X-Gm-Message-State: APjAAAUGOMMKJLWwSGRltoG4kbdbIz35/nC/699XJLGgjdcDksgPU0KF
 mvgBJntafVusLZmO8YVI5rM=
X-Google-Smtp-Source: APXvYqwg0K0VCuYjngl+wFVaIlBXJoCL0u/uoZfGo/MXwGzsNURXWzE9n9+Gn4qk06cQ2zrYdtInkg==
X-Received: by 2002:aed:2307:: with SMTP id h7mr54881137qtc.87.1558217754601; 
 Sat, 18 May 2019 15:15:54 -0700 (PDT)
Received: from tallys-pc.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id s17sm7702970qke.60.2019.05.18.15.15.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 15:15:54 -0700 (PDT)
From: Tallys Martins <tallysmartins@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: iio: ad2s1210: Add devicetree yaml doc
Date: Sat, 18 May 2019 19:15:58 -0300
Message-Id: <20190518221558.21799-2-tallysmartins@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190518221558.21799-1-tallysmartins@gmail.com>
References: <20190518221558.21799-1-tallysmartins@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Tallys Martins <tallysmartins@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.or,
 Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver currently has no devicetree documentation. This commit adds a
devicetree folder and documentation for it. Documentation must be moved
as well when the driver gets out of staging.

Signed-off-by: Tallys Martins <tallysmartins@gmail.com>
Signed-off-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
Co-developed-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
---
 .../Documentation/devicetree/ad2s1210.yaml    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml

diff --git a/drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml b/drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml
new file mode 100644
index 000000000000..733aa07b4626
--- /dev/null
+++ b/drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/iio/ad2s1210.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: |
+  Analog Devices Inc. AD2S1210 10-Bit to 16-Bit R/D Converters
+
+maintainers:
+  - Graff Yang <graff.yang@gmail.com>
+
+description: |
+  Analog Devices AD2S1210 Resolver to Digital SPI driver
+
+  https://www.analog.com/en/products/ad2s1210.html
+
+properties:
+  compatible:
+    enum:
+      - adi,ad2s1210
+
+  reg:
+    maxItems: 1
+
+  clock-frequency:
+    minimum: 2000
+    maximum: 20000
+    default: 8192
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+  resolver@0 {
+    compatible = "adi,ad2s1210";
+    reg = <0>;
+  };
+...
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
