Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4AE31C89A
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 11:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B1D186821;
	Tue, 16 Feb 2021 10:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMa6lDsIJcq7; Tue, 16 Feb 2021 10:19:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7178E8670E;
	Tue, 16 Feb 2021 10:19:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 437AC1BF300
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 10:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 364028670E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 10:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpbMM3YLFrYS for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 10:19:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05D6786762
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 10:19:50 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id kr16so751231pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 02:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8mQoP2ZwO5uOXZSSfuJ+0tTHWjDpZOfZ2TG4TVwc3os=;
 b=q70TD0w4Og1vLGIrF0pa32Len72pFwpmGB4r8GZa0spReoe95Grsp5mIrN9vKd4BWb
 nPdue7CW5ZNO+4FhvVkgSKOk4MGGo/xte2hexkM3gF6FS0KKlX7QyFDFDjkhippslAYI
 s5Rg9RFIY1oRKH1p/2PucUkF9ymBEvIRpVWwlj9A7QGbSGbKQt1LGqR7wwqT0aX9cdMv
 gXJ7xTRPEOYvitwBrU7tWiDtyTTxvaXgHVU1We6kMcy0hg+C3MdHBdko0fl2oTjxzPgY
 p+uI3YOQurze0cQ/c/D5VZWDzAP+KSnFuawcZJ9MJImdaYnf3QnwMVYeFo8zJLDpBqVu
 UpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8mQoP2ZwO5uOXZSSfuJ+0tTHWjDpZOfZ2TG4TVwc3os=;
 b=C0vZSbf+MUtJq+YIhMGAsfuumAcR2pWLvL8gjwc6yQcCgIl99LQzjeJPGoA8u9pUN/
 S4vWI+tMANSGpp1L8sqU9dnSuJ2URgBKTcBfs7wyolu1hxfD9FaCeJCXVXBKFVl//PP6
 mpjk9yzR+PqQRB/JEzVQqaoHfdHA+iInI9XJ/cpLev+DSKS7mzVNOGocXAQQtAESdDer
 8GTiM7jxB5sxL9z50aIPA+sOJhEX47wILlBvWLYHnvmn0MTRlBDnUIKGpNjpbogGCP1p
 1MobRWKJMcpULo/kTUJSumfdTeIK/EmzA1pqBTOViDVnawSZK+jjSslEhwGhcgpo4GC6
 n9Kw==
X-Gm-Message-State: AOAM530U4uDcWTouBZ8fCJZIU5NsfrJcvK8YzBHTy2nfnYuZmBoFnwyP
 5O/6SZWdLzOIxa4Ir8YS5no=
X-Google-Smtp-Source: ABdhPJySPjluE8i6+lesNADSn9nfvkEDJtmE19V0JGOwK9iQVcmk8F+AtDZXc550DUx7okm2Pu39Lw==
X-Received: by 2002:a17:90b:4c8c:: with SMTP id
 my12mr3458121pjb.29.1613470790562; 
 Tue, 16 Feb 2021 02:19:50 -0800 (PST)
Received: from ThinkCentre-M83.c.infrastructure-904.internal
 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id b62sm20022268pga.8.2021.02.16.02.19.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 02:19:50 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Manish Chopra <manishc@marvell.com>
Subject: [PATCH v5] staging: qlge: fix comment style in qlge_main.c
Date: Tue, 16 Feb 2021 18:19:45 +0800
Message-Id: <20210216101945.187474-1-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Du Cheng <ducheng2@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the closing of a one-line block comment,
marked incorrect by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
changes v5:
- improve description

changes v4:
- move "changes" after triple-tiret

changes v3:
- add SUBSYSTEM in subject line
- add explanation to past version of this patch

changes v2:
- move closing of comment to the same line

changes v1:
- align * in block comments

 drivers/staging/qlge/qlge_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 5516be3af898..2682a0e474bd 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3815,8 +3815,7 @@ static int qlge_adapter_down(struct qlge_adapter *qdev)
 
 	qlge_tx_ring_clean(qdev);
 
-	/* Call netif_napi_del() from common point.
-	*/
+	/* Call netif_napi_del() from common point. */
 	for (i = 0; i < qdev->rss_ring_count; i++)
 		netif_napi_del(&qdev->rx_ring[i].napi);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
