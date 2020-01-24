Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9448A148734
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:21:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49DE48835D;
	Fri, 24 Jan 2020 14:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRUGru1k-1JO; Fri, 24 Jan 2020 14:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 763F28805D;
	Fri, 24 Jan 2020 14:21:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FFB71BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CDEE8765A
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snoVZHEGtMR0 for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C56F687658
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:21:51 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C946321556;
 Fri, 24 Jan 2020 14:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875711;
 bh=JacYCh+mGWW/F/w+j0QpaISIlwxB72yrB1+Wv1wznAU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1YALEhSrm+7/TqfiGbiZLaOgOUYtYmFnOXevbzK16AHkYPexjjKpgpHJj3+ZWx5s8
 3LTsJ0H0qYSxF4ZMKzjTzExHPOn/ygEiZYK7MxNisbsIBVllgnHU067ZYkjypOrXZu
 aMDpWi+lBb/WjYuiev+91jh8ad0y0+9TvjV2Jd0A=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 27/32] hv_netvsc: Fix memory leak when removing
 rndis device
Date: Fri, 24 Jan 2020 09:21:14 -0500
Message-Id: <20200124142119.30484-27-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124142119.30484-1-sashal@kernel.org>
References: <20200124142119.30484-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Haiyang Zhang <haiyangz@microsoft.com>, devel@linuxdriverproject.org,
 Mohammed Gamal <mgamal@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mohammed Gamal <mgamal@redhat.com>

[ Upstream commit 536dc5df2808efbefc5acee334d3c4f701790ec0 ]

kmemleak detects the following memory leak when hot removing
a network device:

unreferenced object 0xffff888083f63600 (size 256):
  comm "kworker/0:1", pid 12, jiffies 4294831717 (age 1113.676s)
  hex dump (first 32 bytes):
    00 40 c7 33 80 88 ff ff 00 00 00 00 10 00 00 00  .@.3............
    00 00 00 00 ad 4e ad de ff ff ff ff 00 00 00 00  .....N..........
  backtrace:
    [<00000000d4a8f5be>] rndis_filter_device_add+0x117/0x11c0 [hv_netvsc]
    [<000000009c02d75b>] netvsc_probe+0x5e7/0xbf0 [hv_netvsc]
    [<00000000ddafce23>] vmbus_probe+0x74/0x170 [hv_vmbus]
    [<00000000046e64f1>] really_probe+0x22f/0xb50
    [<000000005cc35eb7>] driver_probe_device+0x25e/0x370
    [<0000000043c642b2>] bus_for_each_drv+0x11f/0x1b0
    [<000000005e3d09f0>] __device_attach+0x1c6/0x2f0
    [<00000000a72c362f>] bus_probe_device+0x1a6/0x260
    [<0000000008478399>] device_add+0x10a3/0x18e0
    [<00000000cf07b48c>] vmbus_device_register+0xe7/0x1e0 [hv_vmbus]
    [<00000000d46cf032>] vmbus_add_channel_work+0x8ab/0x1770 [hv_vmbus]
    [<000000002c94bb64>] process_one_work+0x919/0x17d0
    [<0000000096de6781>] worker_thread+0x87/0xb40
    [<00000000fbe7397e>] kthread+0x333/0x3f0
    [<000000004f844269>] ret_from_fork+0x3a/0x50

rndis_filter_device_add() allocates an instance of struct rndis_device
which never gets deallocated as rndis_filter_device_remove() sets
net_device->extension which points to the rndis_device struct to NULL,
leaving the rndis_device dangling.

Since net_device->extension is eventually freed in free_netvsc_device(),
we refrain from setting it to NULL inside rndis_filter_device_remove()

Signed-off-by: Mohammed Gamal <mgamal@redhat.com>
Reviewed-by: Haiyang Zhang <haiyangz@microsoft.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/hyperv/rndis_filter.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/hyperv/rndis_filter.c b/drivers/net/hyperv/rndis_filter.c
index b19557c035f25..aa0bbffe49005 100644
--- a/drivers/net/hyperv/rndis_filter.c
+++ b/drivers/net/hyperv/rndis_filter.c
@@ -1331,8 +1331,6 @@ void rndis_filter_device_remove(struct hv_device *dev,
 	/* Halt and release the rndis device */
 	rndis_filter_halt_device(rndis_dev);
 
-	net_dev->extension = NULL;
-
 	netvsc_device_remove(dev);
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
