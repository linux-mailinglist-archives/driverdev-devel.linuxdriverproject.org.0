Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0B82483AD
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 13:13:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F7D084583;
	Tue, 18 Aug 2020 11:13:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QPI5stgEEopD; Tue, 18 Aug 2020 11:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F67A842E9;
	Tue, 18 Aug 2020 11:13:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD35E1BF290
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 11:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D619084083
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 11:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSCVt-mUaxHm for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 11:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D42258392B
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 11:13:26 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3519F8A2BBA8A78423C9;
 Tue, 18 Aug 2020 19:13:23 +0800 (CST)
Received: from kernelci-master.huawei.com (10.175.101.6) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Tue, 18 Aug 2020 19:13:15 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Hulk Robot <hulkci@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=
 <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen
 <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, "Christian
 Brauner" <christian@brauner.io>, Hridya Valsaraju <hridya@google.com>,
 "Suren Baghdasaryan" <surenb@google.com>
Subject: [PATCH -next] binderfs: make symbol 'binderfs_fs_parameters' static
Date: Tue, 18 Aug 2020 19:22:45 +0800
Message-ID: <20200818112245.43891-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
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
Cc: devel@driverdev.osuosl.org, Wei Yongjun <weiyongjun1@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The sparse tool complains as follows:

drivers/android/binderfs.c:66:32: warning:
 symbol 'binderfs_fs_parameters' was not declared. Should it be static?

This variable is not used outside of binderfs.c, so this commit
marks it static.

Fixes: 095cf502b31e ("binderfs: port to new mount api")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/android/binderfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index 7b76fefde3f8..7b4f154f07e6 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -63,7 +63,7 @@ static const struct constant_table binderfs_param_stats[] = {
 	{}
 };
 
-const struct fs_parameter_spec binderfs_fs_parameters[] = {
+static const struct fs_parameter_spec binderfs_fs_parameters[] = {
 	fsparam_u32("max",	Opt_max),
 	fsparam_enum("stats",	Opt_stats_mode, binderfs_param_stats),
 	{}

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
