Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0904DA80D2
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 13:07:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FF1087FA4;
	Wed,  4 Sep 2019 11:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oyJ61cX2Oo7C; Wed,  4 Sep 2019 11:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A832287A8D;
	Wed,  4 Sep 2019 11:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F142D1BF40D
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 11:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEA1023223
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 11:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4H10-pUutRSu for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 11:07:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id BABC8230FB
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 11:07:16 +0000 (UTC)
Received: from [213.220.153.21] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i5T84-0004L3-0j; Wed, 04 Sep 2019 11:07:12 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: hridya@google.com
Subject: [RESEND PATCH v3 0/2] Add default binderfs devices
Date: Wed,  4 Sep 2019 13:07:02 +0200
Message-Id: <20190904110704.8606-1-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190808222727.132744-1-hridya@google.com>
References: <20190808222727.132744-1-hridya@google.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@android.com,
 joel@joelfernandes.org, Christian Brauner <christian.brauner@ubuntu.com>,
 kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hey,

This is a resend of Hridya's series to add default binderfs devices. No
semantical changes were made. Only Joel's Acks were added by me.

Binderfs was created to help provide private binder devices to
containers in their own IPC namespace. Currently, every time a new binderfs
instance is mounted, its private binder devices need to be created via
IOCTL calls. This patch series eliminates the effort for creating
the default binder devices for each binderfs instance by creating them
automatically.

/* v0 */
Link: https://lore.kernel.org/lkml/20190801223556.209184-1-hridya@google.com

/* v1 */
Link: https://lore.kernel.org/lkml/20190806184007.60739-1-hridya@google.com

/* v2 */
Link: https://lore.kernel.org/lkml/20190808222727.132744-1-hridya@google.com/

Thanks!
Christian

Hridya Valsaraju (2):
  binder: Add default binder devices through binderfs when configured
  binder: Validate the default binderfs device names.

 drivers/android/binder.c          |  5 +++--
 drivers/android/binder_internal.h |  2 ++
 drivers/android/binderfs.c        | 35 ++++++++++++++++++++++++++++---
 3 files changed, 37 insertions(+), 5 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
