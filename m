Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB3B2FBC1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 17:11:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38E1F21511;
	Tue, 19 Jan 2021 16:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4EL3wZxvM8ax; Tue, 19 Jan 2021 16:11:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 124652155D;
	Tue, 19 Jan 2021 16:11:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 514391BF576
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D2181FD42
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUgujNwCzAjP for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2FF2920508
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6572B23139;
 Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611072651;
 bh=x28SiU6l6j7WY3/WuLOb8FaTKIg2knDGi8jFvYYTrbo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gvDWFm8exPgkzziXSZzcKX0jqVDhhLDVSXMhsT0RphUQMbckgYsrGNflBj9PuL5Df
 YAs6l0sAdrdIrUrrug6LVmdIQprmjuJ0u/ZTQdh/I8LKiGmb0ogvrZWMH29AtvRN2+
 nlXv0APDb3txnYjMcm9doIJe5D1xJfBcm6K7dmAgSYX+jZeLaBZKdQTZHstTqCsMuH
 juQsBgFgYMWv/qM02idUXR+z92VOyiKGnb1h78hhhjT9qvhbBVVctyDzjSAhkFml5V
 23rvoZ4NlPoqD0toKAEDXQQctMgXD4iJ1P1pS5Woch8FXkFYQPQw6QFrmQOnRIthVQ
 sqJY9iuN0HakA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1taj-0012bv-5N; Tue, 19 Jan 2021 17:10:49 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 12/21] staging: hikey9xx: hi6421v600-regulator: fix
 get_optimum_mode
Date: Tue, 19 Jan 2021 17:10:38 +0100
Message-Id: <b2841fe918ba783611552c9e7c63f58fd78a8f20.1611072387.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611072387.git.mchehab+huawei@kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
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
