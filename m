Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEF7CF2F3
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5EE9287EA9;
	Tue,  8 Oct 2019 06:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HE0Mg9glmbXO; Tue,  8 Oct 2019 06:45:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86B5187E8B;
	Tue,  8 Oct 2019 06:45:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5292C1BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4FBDD8630A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1VJAuJESm-U for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:45:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E4706862C7
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:45:19 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q21so10195913pfn.11
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CcheW1vW9hSmABg4YWiwfH2esPJUWBi/6SmHmUcXbdA=;
 b=csNLLt+L1H7BlCZ52kWNwty+jH2wA2PJqvwNUp5Sf6fuh5/ByjhmznarOz5X3E+WIN
 jsG4GA8Q0/S/fa4OQOz4mUC2hwwkL67r45314QoBvbm38P+lAW5WVTvB8KjjEUopdBmw
 LY2fdmR5sybVGaldLQM5JZjPOvgeFeaV0w8RXshBhfItksZfpyccy/wKAHcJCvWJOYga
 HU9TsWQoig1laho8Ec3T21sBvd/bJzNnYBBv+JjRW5jSREVoC+7+hoxNl3SzMnT6YjSY
 Tms9SvuxQFMN4Cxdsr55iYZd27noq/KAAn1J/8Kv8+pehtMq5vIfYLskV18Njz37gBgh
 oJYw==
X-Gm-Message-State: APjAAAXeNHB/+bQwOkckK2K4hJqZ44YsJmHk7KS8I4KxgvtByHE5FFsf
 uubR7rU23dVZVgPP7tQxZ62KyhFM
X-Google-Smtp-Source: APXvYqxYL3C1doH44xTNDN/ljFD8+G18oKO+obxZAKtv0YQXq38cgNjtZUy5/5dSfuG96he9W9vKag==
X-Received: by 2002:a17:90a:2ec5:: with SMTP id
 h5mr3943930pjs.87.1570517119541; 
 Mon, 07 Oct 2019 23:45:19 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id k5sm13156500pgo.45.2019.10.07.23.45.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:45:19 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: emxx_udc: make use of devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 12:14:27 +0530
Message-Id: <1570517072-29201-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniela Mormocea <daniela.mormocea@gmail.com>,
 Cristian Sicilia <sicilia.cristian@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//emxx_udc/emxx_udc.c:3092:1-10: WARNING: Use
devm_platform_ioremap_resource for mmio_base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 147481b..9e0c19e 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -3078,7 +3078,6 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 {
 	int	status = -ENODEV;
 	struct nbu2ss_udc	*udc;
-	struct resource *r;
 	int irq;
 	void __iomem *mmio_base;
 
@@ -3088,8 +3087,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, udc);
 
 	/* require I/O memory and IRQ to be provided as resources */
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mmio_base = devm_ioremap_resource(&pdev->dev, r);
+	mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mmio_base))
 		return PTR_ERR(mmio_base);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
