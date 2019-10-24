Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6B4E372F
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94E1F22E96;
	Thu, 24 Oct 2019 15:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HT0BtEjXh0k9; Thu, 24 Oct 2019 15:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11D6122FEE;
	Thu, 24 Oct 2019 15:54:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D71E1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A8E521556
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQq4HZWOl-1d for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id B8B7621551
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:51 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsoMs010504
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:50 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsjLY024627
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:50 -0400
Received: by mail-qt1-f198.google.com with SMTP id u23so21890978qtb.22
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=w9B0/WniKt/epgo+p5dMZKrzDCoq6S2v82rQ+FNBDqI=;
 b=tSztZGb6pFc/jCY1rGOiTRveHGeFYukk3Cxdm5JzWQpD7sVgypA0hC+hFEWqHTu0SM
 o0ZYQdMM85bYnCfkkWqx8fpWw2vtVW/FsEQ05dHM9FGBacLydpT2SzV7TLzigl92/WAh
 KlXEdgAyeKcyFtUeyKE1D3tXNk0Ar85MORr7PG6l47rr+rbUkxDM3iAlbUsNDcA1n1Ea
 EKhf5QLWpFgmuX/3SCkyDCjU3Xwqh3QeWiC28cEbWZEykjh5IlOT/LUspGZneFZUG61I
 WFHNxevmJ9hyN+99gMok5Kw8Rm5vzGkOrehsvNn4dYcmgGiDzAtH9z5bL7a8NeFNHN/m
 FEhA==
X-Gm-Message-State: APjAAAVv9X9ItAYVVYJmyr6dt0DrQH6bzf5xaVifVDGSbaLVUvJmKZ4X
 ZrtVsrimOH/0NTkXflT5WjrFDJ5rWNLAlhXmODNw2mARO8AitJvTCpgMKLEwp9fW1BPoVb2DNop
 SM0D3bVHwmobghKBtVEUo4GZ3y+zi7PWz
X-Received: by 2002:a37:8b44:: with SMTP id n65mr11178800qkd.312.1571932485436; 
 Thu, 24 Oct 2019 08:54:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUaqQXOGe/pBFaYVlG1qusbGV1mxhM6T0ltC9sZRdfer7+GV4J8xUWUbutmzgjsBo7GZUudA==
X-Received: by 2002:a37:8b44:: with SMTP id n65mr11178775qkd.312.1571932485163; 
 Thu, 24 Oct 2019 08:54:45 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:44 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 11/15] staging: exfat: Clean up return codes - FFS_EOF
Date: Thu, 24 Oct 2019 11:53:22 -0400
Message-Id: <20191024155327.1095907-12-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
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

Convert FFS_EOF to return 0 for a zero-length read() as per 'man 2 read'.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 1 -
 drivers/staging/exfat/exfat_super.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index df7b99707aed..3ff7293fedd2 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -217,7 +217,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_INVALIDFID          8
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
-#define FFS_EOF                 15
 #define FFS_ERROR               19
 
 #define NUM_UPCASE              2918
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index a5c85dafefb4..a0c28fd8824b 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -717,7 +717,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 	if (count == 0) {
 		if (rcount)
 			*rcount = 0;
-		ret = FFS_EOF;
+		ret = 0;
 		goto out;
 	}
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
