Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D43132A3
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 18:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3373E22658;
	Fri,  3 May 2019 16:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dlw+LUACf0zp; Fri,  3 May 2019 16:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60C6E22EC1;
	Fri,  3 May 2019 16:59:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 632901BF23C
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 16:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 594A822658
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 16:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UelYXHwwWFXN for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 16:59:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id DB19A21526
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 16:59:40 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id e56so6773470ede.7
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 09:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GntDUdRv2LjiXWw6FhKRuwz7o/K7nJhCWNMfoZ1WUyQ=;
 b=x6GI58E6YgrnmtqjCH1kPZW2BBsuxyw9ohXw5am9N4qq3QzQctsXyMjI0luedcIEJR
 NcWcnsHyT64T2/DvRMEQuajZjP9BARR/A7K3kZdnBJ+H15g4UaG2RYf9idvDoT8JdkDH
 QJ1XxUUzLnSE5nEMMQY0pL3gpTKBVC0kuenzdbXsZJByl0i3hUnEOpwjVN1pSnneVsLV
 vGNdxOGvjJn+3zA9qPztRprOblJTAZlrp8nzZ7/Rz8k874O1ppBEP3+6o7O4D/qCq/rp
 8/PN4mr4lEw46KLkA4OC7RNcnxf+irJ8EHyM4tUnDUGI53xrhquXUSW8vkVDs640IjHt
 rZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GntDUdRv2LjiXWw6FhKRuwz7o/K7nJhCWNMfoZ1WUyQ=;
 b=eeKS2KoIh6YT5I23+Z7UyoCxPsMqjRM0wFiyXBjK0ATdHyVEBjAwZazW0zBdLxUdyV
 bncu/Ipr7068IJTz0SAmjxLEuIQoKnASJXDWwmD3GE2WfjdZUOPbR3skASPpJNtouD4Y
 8epj59ERUeslLzh/hYyZtPXpNwdruCuzzkztEmbQu5htn5NL4uB26OSpwyhoVZSH99tz
 eCOsxKsNp/XDezT88VvaIGMnqBeRoim3eXkJY8ZhhiUqi+eMEgciQZOuuBqfgRaRjTI+
 sQG198xVh9iTD+xDvw0eLNSQj1Xv8STEkocXvVXu1yOA7vYsh1Cc/Sg9uyGrbfVFyL43
 12Ng==
X-Gm-Message-State: APjAAAW9GoaB21Aik8etCTI6Bh7uQOVWBywkzuSU9rCPWiBF8bGubUZr
 GbEb98l33ccwv4IKIqPp/Cay7Q==
X-Google-Smtp-Source: APXvYqy/S6hBgD1axyPUFRCSenqSo8RTxJsUTA305zXcKyF+vXq2xcw1P5WE8Af6j0WEm//K2YdGFw==
X-Received: by 2002:a17:906:4cd6:: with SMTP id
 q22mr7326058ejt.14.1556902427513; 
 Fri, 03 May 2019 09:53:47 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:47 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 2/5] nvmem: imx-ocotp: Ensure WAIT bits are preserved when
 setting timing
Date: Fri,  3 May 2019 17:53:39 +0100
Message-Id: <20190503165342.30139-3-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The i.MX6 and i.MX8 both have a bit-field spanning bits 27:22 called the
WAIT field.

The WAIT field according to the documentation for both parts "specifies
time interval between auto read and write access in one time program. It is
given in number of ipg_clk periods."

This patch ensures that the relevant field is read and written back to the
timing register.

Fixes: 0642bac7da42 ("nvmem: imx-ocotp: add write support")

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 6600c4ddeb51..85a7d0da3abb 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -189,7 +189,8 @@ static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
 	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
 	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
 
-	timing = strobe_prog & 0x00000FFF;
+	timing = readl(priv->base + IMX_OCOTP_ADDR_TIMING) & 0x0FC00000;
+	timing |= strobe_prog & 0x00000FFF;
 	timing |= (relax       << 12) & 0x0000F000;
 	timing |= (strobe_read << 16) & 0x003F0000;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
