Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0B11E7BA
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 06:43:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9532D87029;
	Wed, 15 May 2019 04:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yEfDSFW+4sFl; Wed, 15 May 2019 04:42:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E9EC86EAC;
	Wed, 15 May 2019 04:42:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D74E1BF3C2
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 04:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 773B286EDA
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 04:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FNnz-cB5t7hx for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 04:42:55 +0000 (UTC)
X-Greylist: delayed 00:06:31 by SQLgrey-1.7.6
Received: from condef-04.nifty.com (condef-04.nifty.com [202.248.20.69])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D69786EAC
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 04:42:55 +0000 (UTC)
Received: from conuserg-07.nifty.com ([10.126.8.70])by condef-04.nifty.com
 with ESMTP id x4F4Wbww017346
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 13:32:37 +0900
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id x4F4VXWg022418;
 Wed, 15 May 2019 13:31:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x4F4VXWg022418
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557894694;
 bh=GBhVHyqB4V20+0mYJbhNu4y/q2WNmGqZYid9a78MJE4=;
 h=From:To:Cc:Subject:Date:From;
 b=XZoH7GtXDV3vnWy/v1VeM769Jo2+KIK7XrWBoUzLH+vAEQVHuUB+aQ0pB1R+mRxKJ
 0U5BDbpC8OFqBsg2cPaunQNiFz4AeqGvD4Gxpkvjg/LfhCzC7I2ezxxMx9JXxx6hyC
 z0oJpm8ZlgNj9aoOsJOVkJ4x3qV/Q9wHUpQNuWSiHKR5EfiwRNY04P7fJI/1WGxshg
 CXt/t8aZTV9nNp9mZ9mclzGZtqZfqHTMMnYmm91G8ChGdesX1dEEzEaz0ibNc0XUw9
 daXB72Ye/pQ9liUDlNoL5b1wvf8XDVQPLtMF6er7M8xDkR28ez/IOA1alpkDiXzk9P
 l09lvnoo1PWIw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, Greg KH <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: erofs: drop unneeded -Wall addition
Date: Wed, 15 May 2019 13:31:22 +0900
Message-Id: <20190515043123.9106-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The top level Makefile adds -Wall globally:

  KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \

I see two "-Wall" added for compiling objects in drivers/staging/erofs/.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/staging/erofs/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/Makefile b/drivers/staging/erofs/Makefile
index 38ab344a285e..a34248a2a16a 100644
--- a/drivers/staging/erofs/Makefile
+++ b/drivers/staging/erofs/Makefile
@@ -2,7 +2,7 @@
 
 EROFS_VERSION = "1.0pre1"
 
-ccflags-y += -Wall -DEROFS_VERSION=\"$(EROFS_VERSION)\"
+ccflags-y += -DEROFS_VERSION=\"$(EROFS_VERSION)\"
 
 obj-$(CONFIG_EROFS_FS) += erofs.o
 # staging requirement: to be self-contained in its own directory
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
