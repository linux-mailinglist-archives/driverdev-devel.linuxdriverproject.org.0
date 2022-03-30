Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AE74EC098
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 13:50:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63FCE84545;
	Wed, 30 Mar 2022 11:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BNl-nqtGXgpC; Wed, 30 Mar 2022 11:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F090B847CC;
	Wed, 30 Mar 2022 11:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5B91BF5A4
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A26141C92
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1nc6TjFGm999 for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 11:50:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E910F41C85
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 11:50:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 778BDB81C24;
 Wed, 30 Mar 2022 11:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C82BC36AE2;
 Wed, 30 Mar 2022 11:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648641039;
 bh=8XMINSXaSbfKJrYh9dECjJqF0AVdv8TqKHJzrJ7r5kw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PyBqfF1C9Dpu622PqMVt2O6Vc2rNCHC5nZ/zlCkg3G+bnRuLZziyDIDv6SvcQQ8hC
 0SpeydRrpciaAWMoJL7Bh+4JSfw5dyeg7fM4f7CBpPUgyLRRXyxFWyKqC/I3AsKSfK
 GFZl6LKb28teOdZx3ULdTIuRMxjYIpYB636THL1ULGeBp2K3arWDT+N4HVRIJ2BN1+
 8A9fN13NHtgx/8v6kabSJl2avPABIT7X2Qa8fvpEzB98NwdPCTupuYAibY5LM5ztl2
 Ri38xnSoI5MAG/Aa5kf362l/bhSPMVDm3OSccVWdbN9yYsu/Rh/hcoOHwy2vvQLq/1
 q0G4tEO7guaVA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.15 21/50] media: atomisp: fix dummy_ptr check to
 avoid duplicate active_bo
Date: Wed, 30 Mar 2022 07:49:35 -0400
Message-Id: <20220330115005.1671090-21-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220330115005.1671090-1-sashal@kernel.org>
References: <20220330115005.1671090-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, Tsuchiya Yuto <kitakar@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Tsuchiya Yuto <kitakar@gmail.com>

[ Upstream commit 127efdbc51fe6064336c0452ce9c910b3e107cf0 ]

The dummy_ptr check in hmm_init() [1] results in the following
"hmm_init Failed to create sysfs" error exactly once every
two times on atomisp reload by rmmod/insmod (although atomisp module
loads and works fine regardless of this error):

	[  140.230662] sysfs: cannot create duplicate filename '/devices/pci0000:00/0000:00:03.0/active_bo'
	[  140.230668] CPU: 1 PID: 2502 Comm: insmod Tainted: G         C OE     5.15.0-rc4-1-surface-mainline #1 b8acf6eb64994414b2e20bad312a7a2c45f748f9
	[  140.230675] Hardware name: OEMB OEMB/OEMB, BIOS 1.51116.238 03/09/2015
	[  140.230678] Call Trace:
	[  140.230687]  dump_stack_lvl+0x46/0x5a
	[  140.230702]  sysfs_warn_dup.cold+0x17/0x24
	[  140.230710]  sysfs_add_file_mode_ns+0x160/0x170
	[  140.230717]  internal_create_group+0x126/0x390
	[  140.230723]  hmm_init+0x5c/0x70 [atomisp 7a6a680bf400629363d2a6f58fd10e7299678b99]
	[  140.230811]  atomisp_pci_probe.cold+0x1136/0x148e [atomisp 7a6a680bf400629363d2a6f58fd10e7299678b99]
	[  140.230875]  local_pci_probe+0x45/0x80
	[  140.230882]  ? pci_match_device+0xd7/0x130
	[  140.230887]  pci_device_probe+0xfa/0x1b0
	[  140.230892]  really_probe+0x1f5/0x3f0
	[  140.230899]  __driver_probe_device+0xfe/0x180
	[  140.230903]  driver_probe_device+0x1e/0x90
	[  140.230908]  __driver_attach+0xc0/0x1c0
	[  140.230912]  ? __device_attach_driver+0xe0/0xe0
	[  140.230915]  ? __device_attach_driver+0xe0/0xe0
	[  140.230919]  bus_for_each_dev+0x89/0xd0
	[  140.230924]  bus_add_driver+0x12b/0x1e0
	[  140.230929]  driver_register+0x8f/0xe0
	[  140.230933]  ? 0xffffffffc153f000
	[  140.230937]  do_one_initcall+0x57/0x220
	[  140.230945]  do_init_module+0x5c/0x260
	[  140.230952]  load_module+0x24bd/0x26a0
	[  140.230962]  ? __do_sys_finit_module+0xae/0x110
	[  140.230966]  __do_sys_finit_module+0xae/0x110
	[  140.230972]  do_syscall_64+0x5c/0x80
	[  140.230979]  ? syscall_exit_to_user_mode+0x23/0x40
	[  140.230983]  ? do_syscall_64+0x69/0x80
	[  140.230988]  ? exc_page_fault+0x72/0x170
	[  140.230991]  entry_SYSCALL_64_after_hwframe+0x44/0xae
	[  140.230997] RIP: 0033:0x7f7fd5d8718d
	[  140.231003] Code: b4 0c 00 0f 05 eb a9 66 0f 1f 44 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b3 6c 0c 00 f7 d8 64 89 01 48
	[  140.231006] RSP: 002b:00007ffefc25f0e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
	[  140.231012] RAX: ffffffffffffffda RBX: 000055ac3edcd7f0 RCX: 00007f7fd5d8718d
	[  140.231015] RDX: 0000000000000000 RSI: 000055ac3d723270 RDI: 0000000000000003
	[  140.231017] RBP: 0000000000000000 R08: 0000000000000000 R09: 00007f7fd5e52380
	[  140.231019] R10: 0000000000000003 R11: 0000000000000246 R12: 000055ac3d723270
	[  140.231021] R13: 0000000000000000 R14: 000055ac3edd06e0 R15: 0000000000000000
	[  140.231038] atomisp-isp2 0000:00:03.0: hmm_init Failed to create sysfs

The problem is that dummy_ptr == 0 is a valid value. So, change the logic
which checks if dummy_ptr was allocated.

At this point, atomisp now gives WARN_ON() in hmm_free() [2] on atomisp
reload by rmmod/insmod. Again, the check is wrong there.

So, change both checks for mmgr_EXCEPTION, which is the error value when
HMM allocation fails, and initialize dummy_ptr with such value.

[1] added on commit
    d9ab83953fa7 ("media: atomisp: don't cause a warn if probe failed")
[2] added on commit
    b83cc378dfc4 ("atomisp: clean up the hmm init/cleanup indirections")

Link: https://lore.kernel.org/linux-media/20211017162337.44860-3-kitakar@gmail.com

Signed-off-by: Tsuchiya Yuto <kitakar@gmail.com>
Co-developed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/atomisp/pci/hmm/hmm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
index 6a5ee4607089..c1cda16f2dc0 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
@@ -39,7 +39,7 @@
 struct hmm_bo_device bo_device;
 struct hmm_pool	dynamic_pool;
 struct hmm_pool	reserved_pool;
-static ia_css_ptr dummy_ptr;
+static ia_css_ptr dummy_ptr = mmgr_EXCEPTION;
 static bool hmm_initialized;
 struct _hmm_mem_stat hmm_mem_stat;
 
@@ -209,7 +209,7 @@ int hmm_init(void)
 
 void hmm_cleanup(void)
 {
-	if (!dummy_ptr)
+	if (dummy_ptr == mmgr_EXCEPTION)
 		return;
 	sysfs_remove_group(&atomisp_dev->kobj, atomisp_attribute_group);
 
@@ -288,7 +288,8 @@ void hmm_free(ia_css_ptr virt)
 
 	dev_dbg(atomisp_dev, "%s: free 0x%08x\n", __func__, virt);
 
-	WARN_ON(!virt);
+	if (WARN_ON(virt == mmgr_EXCEPTION))
+		return;
 
 	bo = hmm_bo_device_search_start(&bo_device, (unsigned int)virt);
 
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
