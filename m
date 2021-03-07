Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBB132FF6F
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Mar 2021 08:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFDF54EC81;
	Sun,  7 Mar 2021 07:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zqa23U9fPYx5; Sun,  7 Mar 2021 07:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB7FC4EC91;
	Sun,  7 Mar 2021 07:05:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF2161BF275
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C908D605DC
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tl0LZn9VHS-N for <devel@linuxdriverproject.org>;
 Sun,  7 Mar 2021 07:04:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A091B605DF
 for <devel@driverdev.osuosl.org>; Sun,  7 Mar 2021 07:04:36 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id a18so7787890wrc.13
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 23:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=ZkK7FWrJfuSpUq6/z7zUYaLAQfToKIzzuh1PSitIK4/mVsPE3pER/rXpbaYLVzCs9r
 SfpfktaLW3bN0oa0wWAX2jQCfVAbG+ZqQAxQhr8SR/zvcMl/R0SXmgr+IUjmlzEfkQl2
 dzmIo0f/2iCV/396qZTq/maXPk0vZNmTOekiU1q5vlzOevWRyBvoCUY/s/xL8wnxohYN
 OJRzonA7Liv9o7tLFNDcNWm6RTbVssgVgrLw7ih19z2INkbBf1igNoT0KefFrs/kqG1C
 NWM+18bDbOCYX0YpUmbAPVmRbDaFvn9IH0VouHBHUzg4Vqtlrle71OMa6FDPcA5qkJop
 6zkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=CJSGj2n4hFDRGlRDp+CHRYoqHx1mixCKYUqJn6BBhjZnpkm7Ced5WaD87Bxduc+QtO
 yN6j/JIvJHmxfL1ID/qfHOtD8/nh/MYgn43+NpzylL3ZbDoqIdVgu1uHB3D50yDGP9ti
 Zum7dxixu4meQu+QcVa3tFYdGH1YP6khXI/eKhLjwYGwU1SS4SQf2dQuFHllSnwkvBLc
 YUz62VS7+GOy/D+nCvTEJvBvkhIui+NnHmtqm61t0KmbaCJbiLjlkMXqJyrnTy+O4k+0
 03cK7ffukXKnYZeexSxlqSHgg8TN4nndlqfEDXMNZeBKXF+yumI3yXjqWLSHclGmwwFF
 e59A==
X-Gm-Message-State: AOAM531RSJzQoZdDXJaa+6fV7WDxtMfnibMAljj/4yhaZ7Szi4R/X9sg
 O6MsSG2b7rU+TNo/S8k80Dw=
X-Google-Smtp-Source: ABdhPJxBBivX7xNbxARtmrY+iRTQFW5/37DA2r3euj8VFCLaVfgR+Xx5MFMm2jAqGyNyXi/5ciEQOw==
X-Received: by 2002:a5d:4523:: with SMTP id j3mr17603895wra.288.1615100674931; 
 Sat, 06 Mar 2021 23:04:34 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id j9sm12162533wmi.24.2021.03.06.23.04.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Mar 2021 23:04:34 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v10 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Sun,  7 Mar 2021 08:04:26 +0100
Message-Id: <20210307070426.15933-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
References: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 clock driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 809a68af5efd..be5ada6b4309 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11288,6 +11288,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
+F:	drivers/clk/ralink/clk-mt7621.c
+
 MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
