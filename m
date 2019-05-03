Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5217E132A6
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 19:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9C6D88526;
	Fri,  3 May 2019 17:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csriexBYBRMW; Fri,  3 May 2019 17:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D25B8849C;
	Fri,  3 May 2019 17:00:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D55431BF350
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2A3D87AAF
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xy8SSsL+xhQd for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 17:00:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21B1F8807C
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 17:00:13 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id w35so5116823edd.1
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 10:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mUKYBeA7ET4vqRjNG0ORQtRPuOUTlJyWQvyqzvY85GQ=;
 b=fjjOJqX13hBff9Pqz1CdnYNSRkHFArX6JK/QHx/MbdIwnPsL3cFu7dh6ib0/hkvPWF
 ZrywTea+gG7fU0a6omm3QPMTUWR7zg4QKk1O8GimzjoZA/lgsmQhLW0s5CLYXT0dOhyc
 NOhV6foDGpVmokomgWx3q84ukwFNvflJzIG1SgH4l2M5jsqhk9eFMzswQQlBYUaUd1vq
 4XadtmK8QEOYue77vUGemQMLg5x2cjsoN6NgzAg9G4Cx3C3gTnKuOslpbG2V0OmvtEMy
 126mg14Es2tV9KSoMI/qb/hN3i9vaPe6IrjDuTnSgV07vL87HfQh7oXnZWi2WctufTqb
 RzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mUKYBeA7ET4vqRjNG0ORQtRPuOUTlJyWQvyqzvY85GQ=;
 b=eEDCmpdohr6tHqaXjs7zAP+mgdL0ZhZXcpyj1Ybwq8ErGZ9M8FwoPSZjeUBOXgMBun
 S/aU8Lb/CXT7U1ayi00HsUxdWuPVaUCV8JMAWsU/5v65PsTnDoXaWU9UWFCd2ho1vmmg
 gUxkQoXbfrSRtNJ0oX1W42IhkZznGjsOjZfPtMov5H7WXNhBtzCyibmmn1sWHfZeo+74
 Q3548jWjphWuBtd99Dr19+eUncDXjwTivrcVna/fIsV34dTcaof3BDMWSH+BXA9bxRrX
 C3gEoC2nk8IxsqpfWjO457bryn20AbDblDowEZIXX+5zIVlZSNxi87eHuWFVL1M9+k9X
 HR2w==
X-Gm-Message-State: APjAAAUUbkPFN+tYdsOBaSpTanv0wJI5nhJTu76AZztGI/BidSTrNTSu
 a+QIduOez5oiH7+Vn3bfYbzIZg==
X-Google-Smtp-Source: APXvYqwso79I8sOgF9/Uyfyz8CiLS4rqN8+jOS+SSo7I58jQARx2l3BNArsuUtX417LEgsFJvAIpsA==
X-Received: by 2002:aa7:d8d1:: with SMTP id k17mr9786195eds.250.1556902428639; 
 Fri, 03 May 2019 09:53:48 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:48 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 3/5] nvmem: imx-ocotp: Change TIMING calculation to u-boot
 algorithm
Date: Fri,  3 May 2019 17:53:40 +0100
Message-Id: <20190503165342.30139-4-pure.logic@nexus-software.ie>
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

The RELAX field of the OCOTP block is turning out as a zero on i.MX8MM.
This messes up the subsequent re-load of the fuse shadow registers.

After some discussion with people @ NXP its clear we have missed a trick
here in Linux.

The OCOTP fuse programming time has a physical minimum 'burn time' that is
not related to the ipg_clk.

We need to define the RELAX, STROBE_READ and STROBE_PROG fields in terms of
desired timings to allow for the burn-in to safely complete. Right now only
the RELAX field is calculated in terms of an absolute time and we are
ending up with a value of zero.

This patch inherits the u-boot timings for the OCOTP_TIMING calculation on
the i.MX6 and i.MX8. Those timings are known to work and critically specify
values such as STROBE_PROG as a minimum timing.

Fixes: 0642bac7da42 ("nvmem: imx-ocotp: add write support")

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Suggested-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 36 ++++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 85a7d0da3abb..2c5009691dd6 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -50,7 +50,9 @@
 #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
 #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
 
-#define DEF_RELAX			20	/* > 16.5ns */
+#define TIMING_STROBE_PROG_US		10	/* Min time to blow a fuse */
+#define TIMING_STROBE_READ_NS		37	/* Min time before read */
+#define TIMING_RELAX_NS			17
 #define DEF_FSOURCE			1001	/* > 1000 ns */
 #define DEF_STROBE_PROG			10000	/* IPG clocks */
 #define IMX_OCOTP_WR_UNLOCK		0x3E770000
@@ -182,12 +184,38 @@ static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
 	 * fields with timing values to match the current frequency of the
 	 * ipg_clk. OTP writes will work at maximum bus frequencies as long
 	 * as the HW_OCOTP_TIMING parameters are set correctly.
+	 *
+	 * Note: there are minimum timings required to ensure an OTP fuse burns
+	 * correctly that are independent of the ipg_clk. Those values are not
+	 * formally documented anywhere however, working from the minimum
+	 * timings given in u-boot we can say:
+	 *
+	 * - Minimum STROBE_PROG time is 10 microseconds. Intuitively 10
+	 *   microseconds feels about right as representative of a minimum time
+	 *   to physically burn out a fuse.
+	 *
+	 * - Minimum STROBE_READ i.e. the time to wait post OTP fuse burn before
+	 *   performing another read is 37 nanoseconds
+	 *
+	 * - Minimum RELAX timing is 17 nanoseconds. This final RELAX minimum
+	 *   timing is not entirely clear the documentation says "This
+	 *   count value specifies the time to add to all default timing
+	 *   parameters other than the Tpgm and Trd. It is given in number
+	 *   of ipg_clk periods." where Tpgm and Trd refer to STROBE_PROG
+	 *   and STROBE_READ respectively. What the other timing parameters
+	 *   are though, is not specified. Experience shows a zero RELAX
+	 *   value will mess up a re-load of the shadow registers post OTP
+	 *   burn.
 	 */
 	clk_rate = clk_get_rate(priv->clk);
 
-	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
-	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
-	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
+	relax = DIV_ROUND_UP(clk_rate * TIMING_RELAX_NS, 1000000000) - 1;
+	strobe_read = DIV_ROUND_UP(clk_rate * TIMING_STROBE_READ_NS,
+				   1000000000);
+	strobe_read += 2 * (relax + 1) - 1;
+	strobe_prog = DIV_ROUND_CLOSEST(clk_rate * TIMING_STROBE_PROG_US,
+					1000000);
+	strobe_prog += 2 * (relax + 1) - 1;
 
 	timing = readl(priv->base + IMX_OCOTP_ADDR_TIMING) & 0x0FC00000;
 	timing |= strobe_prog & 0x00000FFF;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
