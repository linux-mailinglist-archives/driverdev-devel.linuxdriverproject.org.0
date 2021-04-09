Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639D735A6F3
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 21:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A00A402A1;
	Fri,  9 Apr 2021 19:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H3pAQDEKSNDg; Fri,  9 Apr 2021 19:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F957401C9;
	Fri,  9 Apr 2021 19:21:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C82E91BF3DE
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 19:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4DC360695
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 19:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C3iRejguMt6k for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 19:20:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A89B360729
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 19:20:31 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id a4so6654498wrr.2
 for <devel@driverdev.osuosl.org>; Fri, 09 Apr 2021 12:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TQPV/D5Slla4tO1OZEdplYJsUdKoA4adaddnoqiUdzE=;
 b=e5f0gSXt301wIIg27vtvEpJ3yzzpVdind86ReZNPmOYLQPcYHMWMPUb15G5N+7B3VA
 Yn+4BBvRJls7/COt6pySwPs+OYc+f1LX3ZwXzK8+VHpjpi4Y24BaJTiAAwtDYKZkv0y0
 wOprxlvPqQdLsRqhPKIg7b3Mx4YQ16I5FC0k/a/slXYP/MmY4VjOj+ZQfwwGvk/5ud2f
 OMPO36CUWVVPLtvunwq18rAfPlLHfZxlFj6d/u0UsrSteJv3jyrHaAuiFnBspvqZs3nf
 uVVNW4PGhYoE7lY650uAIfpn1W1aSYsiCogjok57FmR3Tjnd6K8cnUUS4+axnAo/+rU+
 rdYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TQPV/D5Slla4tO1OZEdplYJsUdKoA4adaddnoqiUdzE=;
 b=PSK+xfuQS8/ZsCcz7s1wN29F04LAqr8iatat/gStQZytGHmIRKLHLDLjgdp/R6Q1sj
 l7MpyItMDUEdxuny6fTX4iuOOoFwoyuPysijlqR5e3aSOGfT8JZERTD3ZF6J1GXoE96e
 B2/QLxDmfuhchd9WINmeFxpPj2EQJXa3L6YCIybHawIqxctaI1nyHu0WQDi96bpdPSEi
 Kp9ekxjvlg+k94Rj0ecucfNMDVLOoEFSPN4FSXcEl1uaQ6FGkoLMTcBaWv7leKA40084
 Fl2rilLIMVK7FyQtC3LbA8lIjw83RwUGgDu0W+wHMClse41IGKmKdl44wLxtSPaAf6ON
 lNDw==
X-Gm-Message-State: AOAM533R76dTszh/Dw/4gI9OeGAJWnR2cjcxTFV1khez44EUs8+qY5gb
 p98yTuWy7gaeMN45Zk+2ABU=
X-Google-Smtp-Source: ABdhPJyVTCc1h+mzklLi+9jP8W2SUl5/zznK0UpSgoNNHyI0ZxKHURGdfSgqpp9VDKPLuMLd20M8Ng==
X-Received: by 2002:adf:90f0:: with SMTP id
 i103mr18693785wri.318.1617996029976; 
 Fri, 09 Apr 2021 12:20:29 -0700 (PDT)
Received: from localhost.localdomain
 (225.red-83-57-119.dynamicip.rima-tde.net. [83.57.119.225])
 by smtp.gmail.com with ESMTPSA id l9sm734259wrz.7.2021.04.09.12.20.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Apr 2021 12:20:29 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v12 4/4] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Fri,  9 Apr 2021 21:20:24 +0200
Message-Id: <20210409192024.10024-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210409192024.10024-1-sergio.paracuellos@gmail.com>
References: <20210409192024.10024-1-sergio.paracuellos@gmail.com>
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
index 809a68af5efd..ecad5d972122 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11288,6 +11288,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
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
