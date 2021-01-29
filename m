Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA649308DC2
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 20:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83E8A86A8D;
	Fri, 29 Jan 2021 19:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HoQAdJwxm_Sf; Fri, 29 Jan 2021 19:52:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8934086A4A;
	Fri, 29 Jan 2021 19:52:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53FA21C113E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48CC822FB9
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CsmSNg4KWHb for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DF3082045A
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 43F7764E10;
 Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611949925;
 bh=JjIVgD2n/2qhJvQ6jOkaqibRKf9I32u+HalSwJuZenc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nNXwJIk4FDUpXTlnDx1mSiIIkUJnN9IMP1VQKOOrL7Zptpj336C8rL4scnpAZqv2a
 AZ01lGha268vHcql12bUZEN528kKR6urA+zNRxT90ed0MokN/SV8Z1L+u6UtkEiPP1
 JFIda/ixBDAtKzyeD31YWPvmmFZ9mFFZjDj4yWWYGYc34N1zrTVY5pPHxgFnzkEkFZ
 bBengVMlnJsGSTEcwOHADRNsUHMKoik3gtdzkCzuhycrCG049iQIdPv36WtOpEn7MB
 7OsaG8VBggQSxxDL95u+9SHSPLXHwCSlkvD3GjAShqWT0bDU6nCkJ9CjebVW7EzvXR
 CNQ1JOOa4z3pw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5ZoJ-007Wjm-3f; Fri, 29 Jan 2021 20:52:03 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v8 06/14] staging: hikey9xx: hi6421-spmi-pmic: fix IRQ handler
 code
Date: Fri, 29 Jan 2021 20:51:52 +0100
Message-Id: <2eae710c333a8ee6f9e0a086c84115bc90a782ca.1611949675.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611949675.git.mchehab+huawei@kernel.org>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
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
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>
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
index 909f7b106af4..48e4f92f7d1e 100644
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
