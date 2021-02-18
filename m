Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AE431E6A6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:07:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B10CF86113;
	Thu, 18 Feb 2021 07:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FE4Jm8s60lq; Thu, 18 Feb 2021 07:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D36685190;
	Thu, 18 Feb 2021 07:07:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 419631BF32C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E63687256
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x7tfW4vi4Dse for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 07:07:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5BED686FAA
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 07:07:20 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id v14so1612649wro.7
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 23:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=lF85QSD+vYfT7DlSOt6Lh41R38GeGRS80DlSfvCEsrAPEM+asxWsbIPISJseavuhlY
 zsSCFytWTgoKlDwQfqEGEunVSsm4NPDAdiqaHaJhsm768AK3xAOXZgcufiRv8aj9tgnR
 DcvS2PhlLweBIVytmX6DUdg7RvEU9ZsNfSHiKJ1BKrQE1bc5FDxQd3bjOW4KLtORohox
 ypZaqFAtqe4mxX4RMSQivJ16sMxWE+aASBgKTaK7LJvUQwXllBuFMbgUNl+v4FaMCo/P
 34RSz3M/PTYv4UJlatoLLXTP2jsp/2K8bEXoj3+SNM2aZ3Yv4lc89MdQBPoLg7f3zk0a
 8LWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=SSnSn8DyA8M+DgEbYRG7FSb7hgO7lu5qNnVO8U+Vo8ir1QbuRwzZSovo7g3ltrngWL
 BdmPwA3IfXF5mvNNqdQNuUM8TL+VU2u64xVnb7yY3cpD97lYiJpT0AYP1FrvoYuDomLa
 HsK39UHFSWXf63EZpRl8Iw14hWWnjRa9mP5n4yhvXr1KMDU8NUlOtqIOmEHC6hkozb7N
 XGXeWM4QAS0wax/4DzKXCAmf6HAfjypNk/RGTfJgE9gKZB/zev0Cap/RnGQDhodcAtAR
 FyNsfPoz+VTVvQqGOZVopQMt13vSZf0hCEQ6cbNy7mu1lf74mBtJ26MYfCqGXvWzJLFC
 vlCg==
X-Gm-Message-State: AOAM533ZbQNyseK5RwJBmm1ehkBApFHGcHE72X540xgOyeqMtKe7fWJ5
 3x5sdLgCkAg6XdCASbmD+zc=
X-Google-Smtp-Source: ABdhPJzTOnJ2x02hqakckgGgFn+4lopjhaB9yCEKqRGzMSs12Rw6Xn/SU5cQxXjIf3qICSbhlK5vKQ==
X-Received: by 2002:adf:d20c:: with SMTP id j12mr2872975wrh.76.1613632038781; 
 Wed, 17 Feb 2021 23:07:18 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id 4sm6136555wma.0.2021.02.17.23.07.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 23:07:18 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v9 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Thu, 18 Feb 2021 08:07:09 +0100
Message-Id: <20210218070709.11932-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
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
