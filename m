Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0FB3089A8
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E966187495;
	Fri, 29 Jan 2021 15:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Scgz83UarIur; Fri, 29 Jan 2021 15:03:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 538ED87367;
	Fri, 29 Jan 2021 15:03:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B348A1BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACD3686A1E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXj7Nfe-lJrR for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C58486944
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E2E364E0D;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932634;
 bh=CQxBRNiAq0l9GSDVr176GsIZ4WXIfCCyh1QjK8wMpSQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YMd6qISMTJFYmW56gtpkiWctHsO2libIN6kBPcaa9O0OjRrASd2+dR7YzmThwglFi
 +doQftHFBSYwBEKbCOEt1EBz+D9BAAjTI0hbSOESjd2y4TFbXRrBYUBQgC4TiXpyJC
 fkv/2cb1lxvGARiJB7qwYF+VD/vsC0euP3SqtXATd48gg8/KNd7Ki0Fc3kPDFzTxif
 7cNgvCu2FRr1Pl8YY6RhJyWDoUyoIB1fqREHwgMFBSneNgwFFIxYNxq+Vd/7H3Rkuy
 yw4+z5vqgTV41SRPA3Bq84DG1X0NfwXRPax7HbZWpWwvrqeyPr0QFs2wR4cgEnW8E5
 x6yKeCc4V+17Q==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJP-0078tG-W6; Fri, 29 Jan 2021 16:03:52 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 06/14] staging: hikey9xx: hi6421-spmi-pmic: fix IRQ handler
 code
Date: Fri, 29 Jan 2021 16:03:41 +0100
Message-Id: <1c6fe0a8422d0215e1255099f2b5a50f08b78b14.1611932194.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611932194.git.mchehab+huawei@kernel.org>
References: <cover.1611932194.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The conversion to regmap introduced a regression at the code
which reads from the IRQ register. Address that.

Fixes: 8148fe6afb24 ("staging: hikey9xx: spmi driver: convert to regmap")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 1b12464b51b4..ff13220c3038 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -66,7 +66,7 @@ static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
 	int i, offset;
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
-		regmap_read(ddata->regmap, offset, &data);
+		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &data);
 		data &= HISI_MASK_FIELD;
 		if (data != 0)
 			pr_debug("data[%d]=0x%d\n\r", i, data);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
