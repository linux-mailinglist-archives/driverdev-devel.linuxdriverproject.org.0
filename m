Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDDE298AC7
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 11:52:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBEF62E0FD;
	Mon, 26 Oct 2020 10:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxYJMHD9wVDe; Mon, 26 Oct 2020 10:52:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69CD62E0F0;
	Mon, 26 Oct 2020 10:52:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B5481BF414
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 10:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48E388707A
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 10:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7rmenIVVP3ph for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 10:52:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D55CA87070
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 10:52:34 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4CKWrN6fR4zhYYk;
 Mon, 26 Oct 2020 18:52:36 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Mon, 26 Oct 2020
 18:52:29 +0800
From: Zhang Qilong <zhangqilong3@huawei.com>
To: <gregkh@linuxfoundation.org>, <arve@android.com>, <tkjos@android.com>,
 <maco@android.com>, <joel@joelfernandes.org>, <christian@brauner.io>,
 <hridya@google.com>, <surenb@google.com>
Subject: [PATCH -next] binder: change error code from postive to negative in
 binder_transaction
Date: Mon, 26 Oct 2020 19:03:14 +0800
Message-ID: <20201026110314.135481-1-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Depending on the context, the error return value
here (extra_buffers_size < added_size) should be
negative.

Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
---
 drivers/android/binder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index b5117576792b..8bbfb9124fa2 100644
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
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
