Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0752E11CF
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 03:17:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA0BE2D9B5;
	Wed, 23 Dec 2020 02:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2r1+1jJ8Mciw; Wed, 23 Dec 2020 02:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 330A527266;
	Wed, 23 Dec 2020 02:17:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 561551BF301
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5220B85F61
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BzFJG1iUDktf for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 02:17:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E011585F2B
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 02:17:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BCF6F233FB;
 Wed, 23 Dec 2020 02:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608689867;
 bh=Bdz7K2+IYgGhLbm1Wpd9GxL24Md95bh/X7Jqy9dm9is=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BoYW5MOIhhCgIHV3163sR2BNka9K13iuwJJjDh/Mo/6nGftdo7FJH1UnLJatd7WkL
 FBqGGsiBdIx1D0E67iJLusDZhMtfG9qVA/JPp5e0Q/CKhU9ZLlEKAKjs3Ff041KDao
 EsMjOZrG0yIl9IV5NWA0yJV0uHpGD4xukuhMVJ5Zc4E1dkVCpv5u3HBRnVqN1JCeTa
 tVlSeKQ3pOM+GvMAyRHMVQ1sFSCqCgJqfnrT+KEQFpCxj81/4U9huY+mwniMvjAKdV
 MM3PTkhOVvGh8ExARJONcxrKxAP96Exkc/oPUEVhy2Rk9F1rv7BJF1/gYtg3DiR5mH
 zOfpOy6H+bzZQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 062/217] binder: change error code from postive
 to negative in binder_transaction
Date: Tue, 22 Dec 2020 21:13:51 -0500
Message-Id: <20201223021626.2790791-62-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223021626.2790791-1-sashal@kernel.org>
References: <20201223021626.2790791-1-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Zhang Qilong <zhangqilong3@huawei.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Zhang Qilong <zhangqilong3@huawei.com>

[ Upstream commit 88f6c77927e4aee04e0193fd94e13a55753a72b0 ]

Depending on the context, the error return value
here (extra_buffers_size < added_size) should be
negative.

Acked-by: Martijn Coenen <maco@android.com>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
Link: https://lore.kernel.org/r/20201026110314.135481-1-zhangqilong3@huawei.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/android/binder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index b5117576792bc..8bbfb9124fa29 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3103,7 +3103,7 @@ static void binder_transaction(struct binder_proc *proc,
 		if (extra_buffers_size < added_size) {
 			/* integer overflow of extra_buffers_size */
 			return_error = BR_FAILED_REPLY;
-			return_error_param = EINVAL;
+			return_error_param = -EINVAL;
 			return_error_line = __LINE__;
 			goto err_bad_extra_size;
 		}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
