Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7375221D4
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CB2586AE6;
	Sat, 18 May 2019 06:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KtuvfZ4wBUvs; Sat, 18 May 2019 06:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A43F86A98;
	Sat, 18 May 2019 06:35:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 737161BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F4E386074
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJQfgyde7q0x for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:35:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 38A4B8435A
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:35:01 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z16so4301590pgv.11
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mnwK63y6Dxz7mIJI05T7x97DYFRtJ17NMuTrKIc014M=;
 b=asRGrqpWpdfE+Rc7WtUKB1pcF8teYsALgNKT7TQGybNVqxUP2MmEJceB/zBt/+GeZM
 jYPOzwVuv6N+NgDdtssYNO/zekixpzX4ZytS+5+ggzC0oqUMVdrDwhqSpsdGHT9mGT65
 id5r71CCO6lQW43uiu6ce6gwOe9vq4TGaNLeMtlQ8kLOA4fuH3loWS0n7gkRpBC51iPp
 3P8oiqbomgexqc0jxHYxSLhNfvkJkqVShUgEfa/za74A6006zXFwTprRGxNXqyH/ehU/
 FgU/aml4uEfT3l6fNyM84l2Z+kBhlmW/8KuRvSVV9gJAH+su+MH2D5cSGhtnJWBaA0x2
 EkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mnwK63y6Dxz7mIJI05T7x97DYFRtJ17NMuTrKIc014M=;
 b=DytPCswOxYmMYkAu+pCWFD7XLMPe3EOhFEcMfwRwQGrc+L+BAgZ1qTT/KEAUpsBKR4
 1PrRdmGaMyHZfvE+hf2hURytiXVtQN0TdW3mzr8Y56vh7/+3pt7uY9aFDGw0yPBCGtux
 gsPjwfKVrF4EKrYwrzk4tLtaasUC3gUzy8//qhGz1E/lHeOIM/IT9C5CZ1gV3x46YFHt
 vI+sMVHFD3g5TIkby326AVj+Y/JXkFCXnh81QCgnfL9EY/RMtnNChShJFfPGzVn8r7IH
 NuhDOn1jG1mxKuA+f4BHm7vSRFgFo/0VWXJ+5pg/L0A6UQ5j0Ym1eNZox+DgWisjEF/t
 bFmA==
X-Gm-Message-State: APjAAAUL6OIoWAOjAERWo4inJepXOWq0JUp6JcteHtFt1PATZh903rsh
 Cr5UWiJH3Mm9v58rfGnRfZM=
X-Google-Smtp-Source: APXvYqzy0dU1DJkuJies9x8QhHTMqulFVzTwRJrsGIDL21neEEQGcysLNHo1CtlvbkWmKfh15z+Jhg==
X-Received: by 2002:a63:903:: with SMTP id 3mr48670314pgj.400.1558161300803;
 Fri, 17 May 2019 23:35:00 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.34.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:35:00 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 5/6] staging: rtl8723bs: use help instead of ---help--- in
 Kconfig
Date: Sat, 18 May 2019 12:03:40 +0530
Message-Id: <20190518063341.11178-6-moseschristopherb@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518063341.11178-1-moseschristopherb@gmail.com>
References: <20190518063341.11178-1-moseschristopherb@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Moses Christopher <moseschristopherb@gmail.com>,
 arnd@arndb.de, insafonov@gmail.com, sparmaintainer@unisys.com,
 hdegoede@redhat.com, forest@alittletooquiet.net, yangbo.lu@nxp.com,
 christian.gromm@microchip.com, davem@davemloft.net, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  - Resolve the following warning from the Kconfig,
    "WARNING: prefer 'help' over '---help---' for new help texts"

Signed-off-by: Moses Christopher <moseschristopherb@gmail.com>
---
 drivers/staging/rtl8723bs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/Kconfig b/drivers/staging/rtl8723bs/Kconfig
index 744091d46f4c..a88467334dac 100644
--- a/drivers/staging/rtl8723bs/Kconfig
+++ b/drivers/staging/rtl8723bs/Kconfig
@@ -5,7 +5,7 @@ config RTL8723BS
 	depends on m
 	select WIRELESS_EXT
 	select WEXT_PRIV
-	---help---
+	help
 	This option enables support for RTL8723BS SDIO drivers, such as
 	the wifi found on the 1st gen Intel Compute Stick, the CHIP
 	and many other Intel Atom and ARM based devices.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
