Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8452FE3A4
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FA4D86BA1;
	Thu, 21 Jan 2021 07:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vik+NJ-tpwiQ; Thu, 21 Jan 2021 07:18:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CC7486D0D;
	Thu, 21 Jan 2021 07:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53BCB1BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5074186CF3
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1VlUHmQxn23O for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41EF386D10
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 462E5239D0;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213508;
 bh=x28SiU6l6j7WY3/WuLOb8FaTKIg2knDGi8jFvYYTrbo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EGaDM58hfJN9YE84ayR73e9cGjciWAu/pxtNF113RFQahEnMaag+vc+ZXhtjuzQPt
 o/VFU/XI3ZGKdp8ySYW9Ez+Lcecv49QkTkaeZn7bCKs/FqReozcJ0Y1b1lI4VI9E2S
 4EQSCBuR/idN6sZxl/nL61I5tgYd0K2KQYpXai9hSwoqlDoYSpm4zyr40xugcykgLk
 4YPBn1rQAtD5BH6zMaD37XFKRSBfjq+oyUcH65xmsyqpqLSdiaCH4A74OOtXNAhtt0
 JsJ2kWStqvGMGy45m+Yxy3BFhWPcll8jjhHAgNPgxtu/XqL57VJpGmRkPduy7YjKtN
 cOo7VH4azm+6Q==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004BsK-KG; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 12/21] staging: hikey9xx: hi6421v600-regulator: fix
 get_optimum_mode
Date: Thu, 21 Jan 2021 08:18:14 +0100
Message-Id: <f087981eb695eaab8c301c42977a4aa884affbbf.1611212783.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611212783.git.mchehab+huawei@kernel.org>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
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

During the driver refactor, a regression broke the logic inside
hi6421_spmi_regulator_get_optimum_mode(). Basically, if a LDO
has eco_uA == 0, it doesn't support economic mode. So, it should
return REGULATOR_MODE_NORMAL.

If economic mode is supported, it can return either
REGULATOR_MODE_IDLE or REGULATOR_MODE_NORMAL, depending on the
load current.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421v600-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 9f096d4e46db..382a0b21643e 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -206,7 +206,7 @@ hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
 {
 	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 
-	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
+	if (!sreg->eco_uA || ((unsigned int)load_uA > sreg->eco_uA))
 		return REGULATOR_MODE_NORMAL;
 
 	return REGULATOR_MODE_IDLE;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
