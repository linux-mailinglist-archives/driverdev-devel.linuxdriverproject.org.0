Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5F14B341
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 09:45:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95D7685910;
	Wed, 19 Jun 2019 07:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwopfPxfDCID; Wed, 19 Jun 2019 07:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CE1784476;
	Wed, 19 Jun 2019 07:45:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A0311BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 817A92051C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8epFhhzsMfA
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id B6CD720526
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:04 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a15so603478wmj.5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OFadYhI/0x6/q+sdjpmhu4NvO8vA7jvVPdSCrscUkj8=;
 b=AECLgASy6h9iTGfa6lDtVPpq1oH5eI+NpdKMdBDFYe3ONa+Lihbf3ft4Icjq5wJodK
 Dg4ZXruCWRMEbgQLYSak6xh+xD3x3eRctVB8iZgKa4Fk3MNp/kTGMRsIfB6OMVqg5OGf
 uVUtniLa4HrG1vbqg2D+6JA+nkKhHPKTN638uyJOJxILXVOT6o3jJmrHBCrBdYc8AB9I
 +Y9IL+gRTrRL/hCzfdyb8GLZsyFd4ihLPg3tcLEmlGwOyXIuGUQ6/OEEqpm+hA7bfmAY
 fzkAyqHbZtTWEoWe06p1Qi6FOZeYsL8/C4nmw/9mXetaAjJbyQ8WhcA+BeHJp9E3HO5F
 H8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OFadYhI/0x6/q+sdjpmhu4NvO8vA7jvVPdSCrscUkj8=;
 b=uPlqSupv9Jtk3/sazD1aac0gbQJOrWFJGj6zypfLsIzRjeDvEdyfsf5OzX+ALz6xGN
 0h1DgOYlwsR15D7tkjgCtq3raiwEYZjb0umF9gwo031MkbyXcBm5reYqbYKJvOSmhWmt
 glOwPFSnK6lFUbmVVbthv7l9QnHfUAlb3pfCBhWFNR7ZHhiG3uVmi+pMzgz3YdTb6P2+
 McVS7m7BDqbnKKXy8BoXzh7AadS6AZaBwYB5r0U7VV7GImZ0OwcZ4vMkOfjx5oDFg828
 oOZhIEhvfcTpREgWMlgRcNommZVGcc5131m/LIA2srRjYeQZfjNOIoqbDzvRXHANdXkc
 Yb2w==
X-Gm-Message-State: APjAAAVNqxQWUVCIRngdbclgOO8Vf3XDk0Kfu+LScfKkRHWOWtHOzWGf
 An9t2dWwBiE5EHQXivZyh5dyX+au
X-Google-Smtp-Source: APXvYqw6T0IurCJ1oTnmsfbzHVy3YKSpWdFLkdQmzZzp6SxTrmedd3nuV78K89VFQGrIAG8Gm3in7A==
X-Received: by 2002:a1c:2d58:: with SMTP id t85mr6231053wmt.61.1560930303236; 
 Wed, 19 Jun 2019 00:45:03 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id j7sm17925440wru.54.2019.06.19.00.45.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Jun 2019 00:45:02 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: mt7621-dts: add gpio perst to pcie bindings node
Date: Wed, 19 Jun 2019 09:44:57 +0200
Message-Id: <20190619074458.31112-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Driver has been changed to use perts gpio reset instead of
perst builtin behaviour. Update device tree accordly.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 280ec33c8540..9c90cac82efc 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -1,4 +1,5 @@
 #include <dt-bindings/interrupt-controller/mips-gic.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	#address-cells = <1>;
@@ -468,6 +469,7 @@
 		#address-cells = <3>;
 		#size-cells = <2>;
 
+		perst-gpio = <&gpio 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pins>;
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
