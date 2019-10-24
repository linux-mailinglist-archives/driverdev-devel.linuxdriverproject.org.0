Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB120E3718
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7941885A8B;
	Thu, 24 Oct 2019 15:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wq7dAIEQZX7y; Thu, 24 Oct 2019 15:54:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E09983138;
	Thu, 24 Oct 2019 15:54:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 821951BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F274882F3
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJKnkXdjQ2-q for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02699882EB
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:23 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsNCt026817
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:23 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsIEa003681
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:23 -0400
Received: by mail-qk1-f199.google.com with SMTP id d25so23796472qkk.17
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=zUGAOh/GAteO6zvZvvY5cTNeZU5s4fMdWwFbCvuXq0c=;
 b=DHAuRnF+jHGHq4jd9ym3dKJKIdT2a31sRkbg5Hlw7Obe2zVs5OcUfolr+SRjT+Ju2/
 c192L74glqQhpQqLesfNo0iYz60Aus64V2qqxM1Hl0Gs+XID1ypfk4gdKq1oLIK9zaFN
 KhcgiNpvqtGhlg0/hQxaELN10jB6hR32eongVwYxUs+CtUCysluUfiZKiXSVEzllD34A
 jc2ymZeiq4DrurNxabBclo3UGZZsgg3ycawGMOKs1Y5Dct/vHzZP6s0kkTobbPWdfTlt
 LksTxVO87kPQGacEo71J9Bi8wo0wspXqUtsnq+nzfpYbBl3RIUmqwz/vPtUC6bHGkrz5
 JYNg==
X-Gm-Message-State: APjAAAUg+j0fIk5iNs9Pqx4lSfltI8ZUjwVl6sGqr1Q/+hiOUmmiEK7d
 767taKCB2/Su1PzB6Wi0SOdUu+TP9FCejBPGBzeKpCNc561sUjXf40wYfijEctByPjIWo1rJ5wV
 m9mzJSg3SbaLMh5eYrQJMxdwlHYw4aLXw
X-Received: by 2002:a05:620a:2144:: with SMTP id
 m4mr3441283qkm.226.1571932457888; 
 Thu, 24 Oct 2019 08:54:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwbLMNY04ECnlnj33HTLJXy7DWyauisrTQfb1G5d+sgpaJQG7/tZjo3ugMJbOpSBCXQtPufYQ==
X-Received: by 2002:a05:620a:2144:: with SMTP id
 m4mr3441251qkm.226.1571932457601; 
 Thu, 24 Oct 2019 08:54:17 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:16 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 05/15] staging: exfat: Clean up return codes - FFS_NAMETOOLONG
Date: Thu, 24 Oct 2019 11:53:16 -0400
Message-Id: <20191024155327.1095907-6-Valdis.Kletnieks@vt.edu>
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

Convert FFS_NOTNAMETOOLONG to -ENAMETOOLONG

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 1 -
 drivers/staging/exfat/exfat_super.c | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 86bdcf222a5a..a2b865788697 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -221,7 +221,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_MAXOPENED           13
 #define FFS_EOF                 15
 #define FFS_MEMORYERR           17
-#define FFS_NAMETOOLONG		18
 #define FFS_ERROR               19
 
 #define NUM_UPCASE              2918
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index fd5d8ba0d8bc..eb3c3642abca 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2362,7 +2362,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 			err = -EEXIST;
 		else if (err == -ENOSPC)
 			err = -ENOSPC;
-		else if (err == FFS_NAMETOOLONG)
+		else if (err == -ENAMETOOLONG)
 			err = -ENAMETOOLONG;
 		else
 			err = -EIO;
@@ -2643,7 +2643,7 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 			err = -EEXIST;
 		else if (err == -ENOSPC)
 			err = -ENOSPC;
-		else if (err == FFS_NAMETOOLONG)
+		else if (err == -ENAMETOOLONG)
 			err = -ENAMETOOLONG;
 		else
 			err = -EIO;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
