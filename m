Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 889D82EAC5A
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 14:53:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FA12226E9;
	Tue,  5 Jan 2021 13:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3uaFtKjabmej; Tue,  5 Jan 2021 13:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B110B2155D;
	Tue,  5 Jan 2021 13:53:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CF151BF390
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 13:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CB37203C2
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 13:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEErOoeAgwoz for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 13:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 69F01203A0
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 13:53:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9CF0229C4;
 Tue,  5 Jan 2021 13:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609854781;
 bh=X3pkoKN+qZs+mrVkpCsjBnon/jYeQ9iVsUlzY0JchE0=;
 h=From:To:Cc:Subject:Date:From;
 b=BlZBfPQ4Siw1jwxbe/wPWPiSSEJxUF3SXt84aA5z9inaso4kkuG7OEQDCtYsw7lKm
 1PjfAP5VUvMlBOgXCD9PqOhCCkcmxW9Yg5BHkPYTfWUriyUw5SLXO3Q2CYNNo5LYri
 MBEsKQL2xJPc5EW/Y0J7BADBxZSgHZzyyKnqmP+XN6PdQEgqk4ldNQ9wEc+/bwkg6c
 X6Abz3LCCt+ZcR8JoM7dBOON+j+9skX8beNN6KuGWQ1kXyjXDDQ8LLYJH/v96+hjs6
 d9YMhcuSbSwDQh2Br2pRDOnC4Fe7/DQejWVr2YCffo+7Q53CTFzQlyxdQ8/ecv4z42
 bilBSCE2aKDCw==
From: Arnd Bergmann <arnd@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vchiq: fix uninitialized variable copy
Date: Tue,  5 Jan 2021 14:52:45 +0100
Message-Id: <20210105135256.1810337-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Amarjargal Gundjalam <amarjargal16@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

Smatch found a local variable that can get copied to another
local variable without an initializion in the error case:

 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1056 vchiq_get_user_ptr() error: uninitialized symbol 'ptr'.

This seems harmless, as the function should normally get inlined, with
the output directly written or not. In any case, the uninitialized data
is never used after get_user() fails.

As Dan mentions, it could still trigger an UBSAN runtime error, and it
is of course a bad idea to copy uninitialized variables, so just
bail out early.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c        | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index f500a7043805..63a0045ef9c5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1057,14 +1057,21 @@ static inline int vchiq_get_user_ptr(void __user **buf, void __user *ubuf, int i
 		compat_uptr_t ptr32;
 		compat_uptr_t __user *uptr = ubuf;
 		ret = get_user(ptr32, uptr + index);
+		if (ret)
+			return ret;
+
 		*buf = compat_ptr(ptr32);
 	} else {
 		uintptr_t ptr, __user *uptr = ubuf;
 		ret = get_user(ptr, uptr + index);
+
+		if (ret)
+			return ret;
+
 		*buf = (void __user *)ptr;
 	}
 
-	return ret;
+	return 0;
 }
 
 struct vchiq_completion_data32 {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
