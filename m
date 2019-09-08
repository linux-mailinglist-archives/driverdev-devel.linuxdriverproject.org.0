Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 463A7ACBCA
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 11:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83F7685784;
	Sun,  8 Sep 2019 09:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LH1K1l_-ZYar; Sun,  8 Sep 2019 09:29:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F4D485751;
	Sun,  8 Sep 2019 09:29:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07D171BF584
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 09:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01FDC855D2
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 09:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBJSFqMAhQRw for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 09:29:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A028A856ED
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 09:29:33 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 4so5195958pld.10
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 02:29:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KqmU2B1xYvdru8ogR2pq8XGCUpBnZO9sYgiPNZNgnlM=;
 b=Dv2szI+nK08RrUKZpmFm5+hrQbeDE5Ey4eXxX5/RTcIE2QjgdiXJOli8W8s5rmCcO9
 pfLThg+zci1Nlec0VJYBNSclUgACJCJwuiZOhGc9z5v9mes//DaZ5vbQQMPwR0+kr0j5
 5DqlLd8SB98t2y99guUuM7/aGKmyawAoUJyba0a/9Y+LGcHVYoW/xMNBtqLTwQXQYC9C
 ph6ihKTMolhT946KXZlX03o1+/X7qldkDFrKFKlX4xU38oh6Sa3HnK5kfxN5FAFOjNCt
 zxsx7LE9ii6SsEUhsCD60lyfO0u/0HLP4IRcKiporY+rADIMRUA73xi1SuIiqgYeNeN4
 07rA==
X-Gm-Message-State: APjAAAV579XosUDruLCncvCFJRUnBaDanWn5lI7/IvsH+ogACYxmjXxV
 FRNaTrGgfSEBU+KsJERc8QU=
X-Google-Smtp-Source: APXvYqzB5+/7GI+abtTsCznMkS20Y9f6IC275mCV8QrPFI0i4UMKqVXvDxVXd44lSAVrvQRTXzzndg==
X-Received: by 2002:a17:902:20c9:: with SMTP id
 v9mr17850544plg.293.1567934973254; 
 Sun, 08 Sep 2019 02:29:33 -0700 (PDT)
Received: from localhost.localdomain ([183.83.88.189])
 by smtp.gmail.com with ESMTPSA id t12sm12782412pfe.58.2019.09.08.02.29.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Sep 2019 02:29:32 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: exfat: make use of kmemdup
Date: Sun,  8 Sep 2019 14:58:41 +0530
Message-Id: <1567934921-6475-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//exfat/exfat_super.c:2709:26-33: WARNING opportunity for
kmemdup

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 280bf0d..3db4b6a 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2706,12 +2706,11 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 	/* timestamp is already written, so mark_inode_dirty() is unneeded. */
 
-	EXFAT_I(inode)->target = kmalloc(len+1, GFP_KERNEL);
+	EXFAT_I(inode)->target = kmemdup(target, len + 1, GFP_KERNEL);
 	if (!EXFAT_I(inode)->target) {
 		err = -ENOMEM;
 		goto out;
 	}
-	memcpy(EXFAT_I(inode)->target, target, len+1);
 
 	dentry->d_time = GET_IVERSION(dentry->d_parent->d_inode);
 	d_instantiate(dentry, inode);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
