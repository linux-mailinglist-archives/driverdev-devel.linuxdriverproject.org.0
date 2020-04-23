Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B621B540F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 07:16:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D8038742F;
	Thu, 23 Apr 2020 05:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wIgwrHenMa-Y; Thu, 23 Apr 2020 05:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B85386FF9;
	Thu, 23 Apr 2020 05:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B36081BF860
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 05:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AE198226EA
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 05:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DWvLXxM90GGo for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 05:16:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.73])
 by silver.osuosl.org (Postfix) with ESMTP id BD373226CA
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
 Message-Id; bh=TrzYTDfytViynK+naGYn5v/ejGdr6gnHFlmxV0uufuI=; b=s
 nQJNtr9Sg0Aad4BfcOh8dAMUMYv8GelraExmwqTA8hVhPMRGRT6iQcEa09/RqXK9
 rydLzkZ+HQbIbrrueo6yMzqIw80bSWvgEoRM4WFY12gGA0w+eiOzN8uri1FL5c5k
 TGLXwwwmd+uX4aOr5UdXtlVj1CVmqJVL25jahv1qwk=
Received: from localhost.localdomain (unknown [120.229.255.80])
 by app2 (Coremail) with SMTP id XQUFCgB3f_+lJKFeqLpPAA--.18803S3;
 Thu, 23 Apr 2020 13:16:22 +0800 (CST)
From: Xiyu Yang <xiyuyang19@fudan.edu.cn>
To: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Ben Chan <benchan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: gasket: Fix mapping refcnt leak when register/store
 fails
Date: Thu, 23 Apr 2020 13:15:40 +0800
Message-Id: <1587618941-13718-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XQUFCgB3f_+lJKFeqLpPAA--.18803S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Cry3CF17CFyUJr1DZw43Wrg_yoW8Jw47pr
 48Gry5uwsxZw1jkr1kAa1UGFW5X3sFy34rKrZ5Jwn5Zws5Ca4xtrWFya4UJFWUAFW8AF4f
 KF4qkrW5uwn8CFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUBj14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26rxl
 6s0DM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r126r1DMcIj6I8E87Iv67AKxVWUJVW8Jw
 Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
 YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxEwVAFwVW8WwCF04k20xvY0x0EwIxGrw
 CFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE
 14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2
 IY67AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr1j6F4UJwCI42IY6xAIw20E
 Y4v20xvaj40_Gr0_Zr1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267
 AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUBE_NUUUUU=
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
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
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn, kjlu@umn.edu,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

gasket_sysfs_register_store() invokes get_mapping(), which returns a
reference of the specified gasket_sysfs_mapping object to "mapping" with
increased refcnt.

When gasket_sysfs_register_store() returns, local variable "mapping"
becomes invalid, so the refcount should be decreased to keep refcount
balanced.

The reference counting issue happens in one exception handling path of
gasket_sysfs_register_store(). When gasket_dev is NULL, the function
forgets to decrease the refcnt increased by get_mapping(), causing a
refcnt leak.

Fix this issue by calling put_mapping() when gasket_dev is NULL.

Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/gasket/gasket_sysfs.c b/drivers/staging/gasket/gasket_sysfs.c
index f24edc38c27b..b4aa8c2ba2c0 100644
--- a/drivers/staging/gasket/gasket_sysfs.c
+++ b/drivers/staging/gasket/gasket_sysfs.c
@@ -374,6 +374,7 @@ ssize_t gasket_sysfs_register_store(struct device *device,
 	gasket_dev = mapping->gasket_dev;
 	if (!gasket_dev) {
 		dev_err(device, "Device driver may have been removed\n");
+		put_mapping(mapping);
 		return 0;
 	}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
