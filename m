Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA7F24D98A
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 18:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7114086BB3;
	Fri, 21 Aug 2020 16:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpOXN_H-qUIb; Fri, 21 Aug 2020 16:14:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17C2686B9E;
	Fri, 21 Aug 2020 16:14:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA0A61BF2A7
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 16:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C04A720554
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 16:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5fKETXUi9LKs for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 16:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 06F9B204D1
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 16:14:44 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 297DD20855;
 Fri, 21 Aug 2020 16:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598026483;
 bh=6AiJeu8UD5jdIPklU0UJ85alxQ5UPRtJBuOG4bUtfxI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aunaR5FBdgQt5wL42NKzGamqwzNXUyi6DEPTvvWE1Dy9It7NKiCigUYdVlX7FmQ7S
 LCg/cylpYLQ4Hwdu9QblneSmZ9OyNQ2WOECr3Qu6pp4N0jJv184wHz233y/sNsgEMV
 VSszcKZYfstI0+vuTXEGxSMDgn6CKaQZgUVlk940=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.8 16/62] staging: rts5208: fix memleaks on error
 handling paths in probe
Date: Fri, 21 Aug 2020 12:13:37 -0400
Message-Id: <20200821161423.347071-16-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161423.347071-1-sashal@kernel.org>
References: <20200821161423.347071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Evgeny Novikov <novikov@ispras.ru>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Evgeny Novikov <novikov@ispras.ru>

[ Upstream commit 11507bf9a8832741db69efd32bf09a2ab26426bf ]

rtsx_probe() allocates host, but does not free it on error handling
paths. The patch adds missed scsi_host_put().

Found by Linux Driver Verification project (linuxtesting.org).

Signed-off-by: Evgeny Novikov <novikov@ispras.ru>
Link: https://lore.kernel.org/r/20200623141230.7258-1-novikov@ispras.ru
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rts5208/rtsx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index be0053c795b7a..937f4e732a75c 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -972,6 +972,7 @@ static int rtsx_probe(struct pci_dev *pci,
 	kfree(dev->chip);
 chip_alloc_fail:
 	dev_err(&pci->dev, "%s failed\n", __func__);
+	scsi_host_put(host);
 scsi_host_alloc_fail:
 	pci_release_regions(pci);
 	return err;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
