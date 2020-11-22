Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A2A2BC4CE
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 10:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07FBA87168;
	Sun, 22 Nov 2020 09:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UEXB7JsK939; Sun, 22 Nov 2020 09:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7588485E5E;
	Sun, 22 Nov 2020 09:56:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56AFF1BF568
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 519C720022
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0MkVzeC+QcZ for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 09:56:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 724972043E
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 09:56:08 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id s13so14468219wmh.4
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 01:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g0CHHJRFLkJgpWDc0kWpwLPadBEpgRbUEt1rTCDH2OM=;
 b=QM/vOEu84chd8mToZdajKu9RssxQXHCnUjUoXlPNMo+GlfRh3Q/dFonAVhdhnK4/en
 lMWOn/Q9Dj1HpQmmEj9RVFWzBYOpUj0ZcdaCheQas1lK2Gc3kYFhomBnbJgAXdAZOZfS
 Xuk4tmaIjT0X8y9urRS4vkvm7BhOTBUwWZtVB/RY5Pcpr9FqtwTezSvT/2yWYQbeSHS3
 cuiklLs+HhdI2Awk5hDCcuKakSTCDy9J+fp/1X/OqP4+uYBbAp6h9SpDe3FV5LphwoK9
 ED0HWdQJxbv32DJtVh9L3OX0sAYkefqzA2k8iDF463vLzl2OpozpkiMemYSIVRa110aH
 lQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g0CHHJRFLkJgpWDc0kWpwLPadBEpgRbUEt1rTCDH2OM=;
 b=tjc3y41Bpm/RH9Vp1d4F1Cedc9vuDcLoRtwdQ9ADDkKBeJZeiK+BtK1aRZ5BHARS1Q
 CktaQPOByIe2ajaiM3lywBAQ19OeWi8zfozKgMqr20hLksV2njG0CoINNw/7XH7KC35Q
 68dTttbtjDE/mLBjBtXF2kthGiGDPg+C4hvS6zTGxXBxk4psVM2c+BO7p16cpdTDmYEi
 lA/a6rvornm6T30ZSRc4XOTag1mNUrFFfTr5e1EYSYZeYirWlHP90KM185Zf8yaWXRuk
 R41L09ES+7BOOhGjd98S2fORv3gr0vEnBXRmmR+f1j1z0DVFKHt3Jpro2aj8f/CCD7ZN
 fCQg==
X-Gm-Message-State: AOAM5329zcjGBvqSC+5NmBEx9A/okwFi/B6+Wps9RGrx5PWEIVocuONL
 Rpzx6W00IVsBPnvtKDaKMT4=
X-Google-Smtp-Source: ABdhPJxp3A0DQalRpG59cJRBY8DqpvXBtw/5bNQayIpkHdNJ42AqfdelkZyrvHAVKpsKqC9PR2ya2g==
X-Received: by 2002:a05:600c:2159:: with SMTP id
 v25mr6450376wml.155.1606038966972; 
 Sun, 22 Nov 2020 01:56:06 -0800 (PST)
Received: from localhost.localdomain (196.red-83-40-48.dynamicip.rima-tde.net.
 [83.40.48.196])
 by smtp.gmail.com with ESMTPSA id p21sm10593570wma.41.2020.11.22.01.56.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Nov 2020 01:56:06 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v4 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Sun, 22 Nov 2020 10:55:56 +0100
Message-Id: <20201122095556.21597-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devel@driverdev.osuosl.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 evicetree@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
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
index f1f088a29bc2..30822ad6837c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11142,6 +11142,12 @@ L:	linux-wireless@vger.kernel.org
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
