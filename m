Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 268F61A11DB
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D70B204D1;
	Tue,  7 Apr 2020 16:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d773t-OiH1w9; Tue,  7 Apr 2020 16:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45A792001E;
	Tue,  7 Apr 2020 16:40:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47B081BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 411B187BFE
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:39:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7c4vYdFR7xvq for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:39:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 586CC87B6D
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277585;
 bh=mGcNn/hciDAa1MtlzL+yKAo9BVtXHK66bYlr9Vx0ozY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cn6DZ2WjYtKs62CRZOZRNdXp5CDg2YFifosNGXDjunNRe/aXDW/ktp7jR2sdLC5z9
 r4t2W2nVixSJNC/4ERTtvFbhcD3qfm3VYeS3/+i1u+Zk0Xglbv7Tx0jv/YV6umIC+W
 d0WYqCPZL6lqiGRewiUsD6exyP55On0xPpIb9NVU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MZCfD-1jqz2W1KwT-00V5jc; Tue, 07 Apr 2020 18:39:45 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/2] staging: vt6656: Remove unnecessary local variable
 initialization
Date: Tue,  7 Apr 2020 18:39:15 +0200
Message-Id: <20200407163915.7491-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407163915.7491-1-oscar.carter@gmx.com>
References: <20200407163915.7491-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:JrTaUvLuKsciovcEVi75pTrLYdNbPfCu5hJeSr2pBmookCPFny6
 neiE3yExWHRogwpjE3iAY3L7iG8M75o3peug+ZHIF+JDfu6HEumkc7xe1cyIo5UGIk2IHMd
 DyU4hsDiOCSbZncae30RHZWClOb/duMhJytWUfOTdA85jkUozZuRrrfU4K4QEpRD8FVKy3o
 dPjSxZFHf1O8ewXr0qh+g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nng2L4oE85I=:zehfCa5Fv7gVuVuM/+8MD5
 tKo+2MJhT7R8zpgpYizHQEaGVj3f79mNY687TBmJGsKWfen8ENPDVXxxzYrej0r9tteSDeJDi
 J0f9MwwUbUE+o/3KKFXBZmnQkJO10U0Jk50HnsSQletDZt5yO8s6OcSNhSBguWYxo4dtsj/BM
 431ZQwmc/prQHSL91rSPv9frVBpynlEbhTCALH7eOBom9/39nYNHn3dqxwEHzHe9T+KXInn3F
 +TmacHYiniiLhGgW/4eArAmUoP1R5eoX/Ifl06bRc4kNLZzR+7gYW7WbiqnJlpweObxIE8m1T
 RZ01yttXL9YFtNOwKWXaLMfx/YYJoSzWR+Rdij2xhRxzDIWnT4R3pxK01pESpGTl2djJ3PwrQ
 XgbtQxJDvTAKTBBF492KaIzcIowYAZ3EtdjVCRPru49bXLbbt30Flk0olvm9K/daq4CoPX5CR
 qYsGqlCZwQYXhVgxAyNVFdkcPahF3hNnnzUiaLtZkXCOHb9bimv0NJa2bHqVWx1Ie6C0K+GAH
 WhbkErZKwLVWzT4UP0t8XzqKSKHN7KjDf768hszM34Nh+PjyPOpnjHw/rDkth/h29bL0AsS9O
 8fi4aHxybI72PtaFcovvEd+R+UhcBMqSAgzuf7FbHkUQ2Tud2DepyFhTbzeorSwsmF51eJsRB
 VyGCctny7NxXgA570MmP89pHncJ3xVNxMyy+oalRmVnGLjCmDNzw20n5Vs/vhAHCOtZLOARUN
 As1pOATkJrksZuN9pQvk2Z3ejQLF8/U0ElfzNOr0iikHDyMFQJsAfrF4ewpGYLiBZ8Z5QWjy6
 Z8ZWKUEbhBgAEcQj8KCldzUz/Nnda/IC0IINZGvzGrrgutDNiS29eREtAyWRaMxLXkYxC+5jN
 R30zIwRQzIOASCe5lQcIIjvImSPsJelFNBeD0cNMmu6fooFGkh6NPzMVGxcAdwSP03ct72rUc
 ZxLnTBH1FgVRM3+Wf4BhM3Hv60G3F1HYqRKD/ad1Z6hs1Mkhqe2AgEekCepI+0K9cbS3L+pWd
 ei4iB1hvFoRffcZWYCyVdXoBMPOFwGJmBSDjYo1oNy9Ks6goNwMKtagOHEgD1gTuJCjiotXVK
 0qx97J6JBnyBpiLlsAyBmn4H2xDwzhy0epFEFFPVCns9AXur0tT1GyLyYSGoY/hVHPKv7m4Qw
 sgGYyRyM6mvrRE7YGISOaa8bjNjSR5Obza/MCnxQC6NYnt8CnNNRJ2HeNb1lUOyrLSu8uCmZk
 goUCWlTs2aSOKQkEs
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Don't initialize the rate variable as it is set a few lines later.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 092e56668a09..5d9bc97916a5 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -135,7 +135,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 {
 	unsigned int frame_time;
 	unsigned int preamble;
-	unsigned int rate = 0;
+	unsigned int rate;

 	if (tx_rate > RATE_54M)
 		return 0;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
