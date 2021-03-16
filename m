Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 137ED33D1BA
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 11:23:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF16B83AF7;
	Tue, 16 Mar 2021 10:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fTyivLAJkgNR; Tue, 16 Mar 2021 10:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 075CA83AB9;
	Tue, 16 Mar 2021 10:23:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22FF41BF23B
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 10:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1247260675
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 10:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOVQ_8pBr1m1 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 10:23:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F3366062C
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 10:23:17 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A664164FC7;
 Tue, 16 Mar 2021 10:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615890197;
 bh=IF6ZsxNjOeA4IVr6pl9txoM9es/COe6h/Oky2trJsvw=;
 h=From:To:Cc:Subject:Date:From;
 b=YZLbvx5l+uVu8q5dk+8cXDGLwkBH639Ok1h1XUWQJcoU7VdbKe56jjnYT53uki5kU
 f+JvzWEXh79e5IjOEvlNM4uLhCvvF2fjMlXtPAvNr4pI68sd/UIroMBFSygicLMfsl
 Q5QAsjKKrVVwvRMTx6zlcm4NRRZNy7/vy5kLLrrU=
From: gregkh@linuxfoundation.org
To: linux-staging@lists.linux.dev,
	devel@driverdev.osuosl.org
Subject: [PATCH] MAINTAINERS: move the staging subsystem to lists.linux.dev
Date: Tue, 16 Mar 2021 11:23:11 +0100
Message-Id: <20210316102311.182375-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

The drivers/staging/ tree has a new mailing list,
linux-staging@lists.linux.dev, so move the MAINTAINER entry to point to
it so that we get patches sent to the proper place.

There was no need to specify a list for the hikey9xx driver, the tools
pick up the "base" list for drivers/staging/* so remove that line to
make the file simpler.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 MAINTAINERS | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index d7c25c0fc08a..9e876927c60d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8116,7 +8116,6 @@ F:	drivers/crypto/hisilicon/sec2/sec_main.c
 
 HISILICON STAGING DRIVERS FOR HIKEY 960/970
 M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
-L:	devel@driverdev.osuosl.org
 S:	Maintained
 F:	drivers/staging/hikey9xx/
 
@@ -17040,7 +17039,7 @@ F:	drivers/staging/vt665?/
 
 STAGING SUBSYSTEM
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
-L:	devel@driverdev.osuosl.org
+L:	linux-staging@lists.linux.dev
 S:	Supported
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 F:	drivers/staging/
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
