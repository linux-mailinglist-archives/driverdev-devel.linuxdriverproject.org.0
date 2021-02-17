Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E7A31DB1E
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:08:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EE79871CC;
	Wed, 17 Feb 2021 14:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gK6pu7XM8Sya; Wed, 17 Feb 2021 14:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80AED87244;
	Wed, 17 Feb 2021 14:08:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4757C1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4222E86738
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MxUGm1cW2M88 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:08:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 455BE86457
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:08:03 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id o82so2231512wme.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=S7/rTx9uAE7nU43FzuKk4H4CEBU2du4dQVIjNNGuhZzRe3ta2fmRfgVY2JwNELBVpc
 nmjY59xfSPvmggrQQdhyHjLb69F900As5dBIdVkRCvc6YSfCi49sZ2t/gWGpJtPr6Z61
 dFRBkLrEK8go2QKkf4qpt6cO//DDHepKvQrFMTPSmqziYTbOauD4H8R5q/GfcQpMVQYz
 5m+OeZUokF7aPHrKSTArIryuaMAUH3YxlJAP7JcnODmEc+7lbi3p7Fm6gBxWJD80yIV6
 Smh32aTK51ql+vCZzFyXfNZB6GgBCmgvG64iLeYBC7lsJ3lqn4949MsLRVsC5s/4oklG
 /5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=OTsE4CkgRISMB5UE+F+BndSjoadAveQxX1Eqy7coAn20QueD+Pec4RPhAPJBB4+vk2
 4LOTNAEu5gYdub+Bq+6HKM9iEEbq8A2S/NyevgkLNNob3YSTkkzmvJ8nivoDP8A19jAB
 +Blb3/BooxP/2PozGt0tAEwgzc6DOh8ltc4ZtJYMCBBNArlbzK+WrK8z1ZYZkyYaY30B
 vIx7yozMAI835xGbSOfVec2puEuI4wzzl1ke7gsfo07dTGB9fu03mIC+BlqdgEu2zp4r
 kV29dZ0xYFZ/Sl3/tFT6haHK9RqwWcmX42roPXXql49ZqzJ96a02iSVeXx0Df2GOepmm
 NhiA==
X-Gm-Message-State: AOAM530GnpuUn/qThMEIdEtGgdWoS+VH5bV/WNylUU57vT0IggjsKWtk
 k7zzjiYdmanE90EqhYBVQLI=
X-Google-Smtp-Source: ABdhPJxXd+xHoijDXHWXCpESq3QScnr52RJTaYoIeNrrPXha9fSumedEDetlZ8LG7s+FBw7CiQ3N9Q==
X-Received: by 2002:a05:600c:2351:: with SMTP id
 17mr7340043wmq.2.1613570881854; 
 Wed, 17 Feb 2021 06:08:01 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id n66sm3274099wmn.25.2021.02.17.06.08.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 06:08:01 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v8 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Wed, 17 Feb 2021 15:07:52 +0100
Message-Id: <20210217140752.15712-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217140752.15712-1-sergio.paracuellos@gmail.com>
References: <20210217140752.15712-1-sergio.paracuellos@gmail.com>
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
