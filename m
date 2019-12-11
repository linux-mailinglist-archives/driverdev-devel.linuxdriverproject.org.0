Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ED811AF7C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 16:13:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B748B8842E;
	Wed, 11 Dec 2019 15:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5KYofrQJp5tA; Wed, 11 Dec 2019 15:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE850870D7;
	Wed, 11 Dec 2019 15:13:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2914B1BF8A8
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 15:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 25E9085F4D
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 15:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIBT24B8IZtd for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 15:13:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAB4985E28
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 15:13:48 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9D8A2467E;
 Wed, 11 Dec 2019 15:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576077228;
 bh=hQ/UauJDG+Ahl5wENQlLIFAczqZfBM8cOYQwA1HoduA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k29wZFwGDGW8K1TlWHtMKxWONp+4s21HT970SfPr7zpfAhLzXBO5dR2dmCXhPum9s
 LwqwqmX5vjghnNLDanGMrAu6HjTWSxpVsSZwp5/oQTmJ6y57Umwx1MTtwuZ+tCofb4
 TCiEwTqt8UnOF6EMZFjoHM97ybAZfxfGCsUKlSJ8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 107/134] Drivers: hv: vmbus: Fix crash handler
 reset of Hyper-V synic
Date: Wed, 11 Dec 2019 10:11:23 -0500
Message-Id: <20191211151150.19073-107-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211151150.19073-1-sashal@kernel.org>
References: <20191211151150.19073-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@linuxdriverproject.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Michael Kelley <mikelley@microsoft.com>

[ Upstream commit 7a1323b5dfe44a9013a2cc56ef2973034a00bf88 ]

The crash handler calls hv_synic_cleanup() to shutdown the
Hyper-V synthetic interrupt controller.  But if the CPU
that calls hv_synic_cleanup() has a VMbus channel interrupt
assigned to it (which is likely the case in smaller VM sizes),
hv_synic_cleanup() returns an error and the synthetic
interrupt controller isn't shutdown.  While the lack of
being shutdown hasn't caused a known problem, it still
should be fixed for highest reliability.

So directly call hv_synic_disable_regs() instead of
hv_synic_cleanup(), which ensures that the synic is always
shutdown.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>
Reviewed-by: Dexuan Cui <decui@microsoft.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/hv/vmbus_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index 53a60c81e220d..05ead1735c6e3 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -2308,7 +2308,7 @@ static void hv_crash_handler(struct pt_regs *regs)
 	vmbus_connection.conn_state = DISCONNECTED;
 	cpu = smp_processor_id();
 	hv_stimer_cleanup(cpu);
-	hv_synic_cleanup(cpu);
+	hv_synic_disable_regs(cpu);
 	hyperv_cleanup();
 };
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
