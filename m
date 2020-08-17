Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 415F9245D77
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 43EC721577;
	Mon, 17 Aug 2020 07:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ExH1PKGOoV+T; Mon, 17 Aug 2020 07:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BC87204DB;
	Mon, 17 Aug 2020 07:11:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90CC81BF968
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D38B87582
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vmDHaU9Ta7Y0 for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8ECAE87594
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 507E522D71;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=rtpZd4CzicwKfG2N+/esSbmfEn6gndlbOTXOwshb8U0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DuvhNhk3rYC8285zkDOXymCUTZLpLXivzWn7eh9qseI/FdBlfN+8vjTiIz41lG3jF
 jtwWzOZHCDugoT6IyW4KrZPmG9VSr4Xdx5iv6LH8cB/oe02Go+Spy5TGZOMDyx3XCB
 x84m44ZRieEav/vSEdiJd3Vwp6+wc3oQKa+y8tYo=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00Bdku-FJ; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 36/44] staging: regulator: hi6421v600-regulator: initialize
 ramp_delay
Date: Mon, 17 Aug 2020 09:10:55 +0200
Message-Id: <67df5456e4f23c88ab4fd9331eb8202c3952e5c5.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Without that, the regulator's core complains with:

       ldo17: ramp_delay not set

For now, use the enable time, as we don't have any datasheets from
this device.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421v600-regulator.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 5ddaf7f8cacc..21467fce9980 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -267,6 +267,9 @@ static int hi6421_spmi_dt_parse(struct platform_device *pdev,
 		return ret;
 	}
 
+	/* FIXME: are there a better value for this? */
+	rdesc->ramp_delay = rdesc->enable_time;
+
 	/* parse .eco_uA */
 	ret = of_property_read_u32(np, "eco-microamp",
 				   &sreg->eco_uA);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
