Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5749ED727
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:46:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 77489214EC;
	Mon,  4 Nov 2019 01:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxD+Ltxrwf0n; Mon,  4 Nov 2019 01:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 14FF02077C;
	Mon,  4 Nov 2019 01:46:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93B631BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90CB089536
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZUZ5LIiVq_H for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:46:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 155C189532
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:46:05 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41k5MW025779
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:05 -0500
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41k0PG023676
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:05 -0500
Received: by mail-qt1-f199.google.com with SMTP id k53so17432619qtk.0
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:46:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=v4VlzHRnLSC3b1EjzBkiWjmC1bP42YDPnuAdgZvBprM=;
 b=PD/FipkGVwNPI5+vG9zs5Ff5byH6Hcw02NCdvbtxFH3G2uzyV0WtO9b/siO2Hc2v2g
 FsMAaqTOb9FNQ1DMyHJrl++ffIdY8ERh2pxeSFF4kMIOI6BSqNyhDOnvdYiB8KCT68gz
 DgWw/Hn+Na5NCF+i4DlracVyvOWwV+yME3Xid+40qB6WZmxUNHtClX2FMWB8yLyqV8wa
 WMuLBnjxd9S7a7K9ATKqe2PCFrjcllNN/fR71jBAQXr1guZKLi5Hgn0xmPvmqj4A1SYO
 EOLCnlZ/oe0HmWJP0WNfunx2rv5g99gUxtkWrq/Hme18HMHEZYcqFwcmhK2giLPdltK+
 dGnQ==
X-Gm-Message-State: APjAAAVNvbqkHMDabAa8josbK9oCCSSijaYLN0qAPlHiSnCfDRMqgdyt
 Ai7bnMF/LsoCj6cOB72dujjFHUum4/tL8eG1SnbscFydzXd+DboHuRaG0lCO/5YNNkr1Rf2NSf3
 Rtvjlwc3NEkfHCUAKyvQL2rs29PDpuw7X
X-Received: by 2002:ad4:5429:: with SMTP id g9mr20440310qvt.27.1572831959973; 
 Sun, 03 Nov 2019 17:45:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwXoWMfSxtMRA4ckuqq21dK8J+BAjDxrP0r0w/l8V1aRV7ziX/XVpeMeGToZS1TbuMSc3RYUg==
X-Received: by 2002:ad4:5429:: with SMTP id g9mr20440300qvt.27.1572831959712; 
 Sun, 03 Nov 2019 17:45:59 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:45:58 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Subject: [PATCH v2 03/10] staging: exfat: Clean up return codes - FFS_EOF
Date: Sun,  3 Nov 2019 20:44:59 -0500
Message-Id: <20191104014510.102356-4-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
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
index 286605262345..292af85e3cd2 100644
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
index d6d5f0fd47fd..7c99d1f8cba8 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -723,7 +723,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 	if (count == 0) {
 		if (rcount)
 			*rcount = 0;
-		ret = FFS_EOF;
+		ret = 0;
 		goto out;
 	}
 
-- 
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
