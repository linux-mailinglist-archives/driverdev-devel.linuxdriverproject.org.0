Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB60DF86BA
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:11:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D85820478;
	Tue, 12 Nov 2019 02:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id utNa9qzbZjIR; Tue, 12 Nov 2019 02:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B4E1720018;
	Tue, 12 Nov 2019 02:11:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0922B1BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0459920018
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVi3Y9g+4F+A for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:11:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 47EF21FEE0
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:11:11 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2BAY7011633
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:11:10 -0500
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2B5lP002492
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:11:10 -0500
Received: by mail-qt1-f198.google.com with SMTP id l8so19152324qtq.9
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:11:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=CcYLAh/UyTxqCQmL3RjWyYe/kNKV5YS8PJV7/eSFSes=;
 b=KzpMHwuVRrrJ+/Dfm0TCaeyuxYmYaUZFA73XbAs8LRznGCtrCpYuiwqDRHhfwnZYsT
 Icu7bM2wfAkXIH+yYs5eCNDtHzu0TSN7dO2zGnBhsf/1iDgjHtEcBZrry/pxkIWF8yw8
 LZCfXZXsyGukEMY1QtEygL99g6c854V0H9z8hhMioWfLlfPizm7bu++sZVmkzPB5JM1Q
 oq60sWYJgDBlX3eTQbp9ZLKcWuvxgvxP+qB1hNutUHKAEt+eSX/DcL6QtTpAdqh44IS9
 0UtQuXl1LvZkeRu7X6/teX8ihMumTitLU4Qtzx3nE+5870uwzdUq8/PUr16QgVvSDnn2
 OrUQ==
X-Gm-Message-State: APjAAAUOtPMBzlocx0piNjpxlj7W9IwGt5bVtR0YNixZuoK0pYnecF8h
 jFmDoZEjneGqYYnyRl56UED5Eg5cx+kfjCESsuCgobd5mF9RLUuISlQvUwjUeHNcb+f5nJlI+Dr
 6ujsR2f73yA8MwCvMn5J71gxCbe3Teduy
X-Received: by 2002:a37:782:: with SMTP id 124mr13629137qkh.142.1573524660753; 
 Mon, 11 Nov 2019 18:11:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxZYuxGedyB7a+wA/llda6YOy1P21HsSw35yYTNEbYtMJL30UKBF+x5CPddS8qesmICNXkDXw==
X-Received: by 2002:a37:782:: with SMTP id 124mr13629129qkh.142.1573524660504; 
 Mon, 11 Nov 2019 18:11:00 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o195sm8004767qke.35.2019.11.11.18.10.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:10:58 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 9/9] staging: exfat: Correct return code
Date: Mon, 11 Nov 2019 21:09:57 -0500
Message-Id: <20191112021000.42091-10-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
References: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use -ENOTEMPTY rather than -EEXIST for attempting to remove
a directory that still has files in it.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat_super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index a97a61a60517..e2254d45ef6e 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2167,7 +2167,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	clu_to_free.flags = fid->flags;
 
 	if (!is_dir_empty(sb, &clu_to_free)) {
-		ret = -EEXIST;
+		ret = -ENOTEMPTY;
 		goto out;
 	}
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
