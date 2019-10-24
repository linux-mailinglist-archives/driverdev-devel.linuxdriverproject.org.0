Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33604E3713
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BC8181F72;
	Thu, 24 Oct 2019 15:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8Cr3uPkxjeQ; Thu, 24 Oct 2019 15:54:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9849480B15;
	Thu, 24 Oct 2019 15:54:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A697D1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3EDF882F8
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BO0a0rOF58qF for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 25CF4882F3
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:16 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsFU9026686
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:15 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsAha021068
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:15 -0400
Received: by mail-qt1-f200.google.com with SMTP id y10so25490803qti.1
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=MUvS5PDnwB4+WdsZuJfNIUv2476cZnvleiETBi+G30w=;
 b=d231504nDGHmPL74QTQC0VaM50Pm/dZ4aETym41W9VbeV13J9KYzf71imO7/ogG3EB
 YYeWnft4wH5JWDUXXFdjZX8rSTn/+e0AARSj3tV+HeQrqokTjeaNBPrzsVm1lEebj/iA
 /JsmMQdw9lS+w5uU6k0GNNaNmj42bvYF+zx7BtvVUZ8WKjPFsCq3myodciuTAGavvqCX
 KemCgjszNmRDnm7XVXwmhJK4JV5rmR/I2Tn1J93D19dhJtxYrSTZCZNig2+9YWW/kWeh
 4flbyGoAsie5IIzBEoNNXW3bW5VosTljWBZzGddmbldW4TyXdyxPzeOunVg/mvCImzCb
 n9oA==
X-Gm-Message-State: APjAAAV2G4KXv5/Q85Z7E68+z9OErV/w2KEvG3kBW8FMbF4SlVqgHeVG
 B4pF6nkXx9QHpKoS72MkK2llbuI7Sm4iiL36dUzAL7JkOatcdP+AGNwUyE9Yqmv8wnVEvBMe87/
 uWRXVBLfv1jlCdl6MX2oxqlUb7J/1QsgF
X-Received: by 2002:a37:2d45:: with SMTP id t66mr14453493qkh.259.1571932449983; 
 Thu, 24 Oct 2019 08:54:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyv0THDRF5Q8L/pxFbc9GDAB6Ang93ytLfBAJhcM8jNwiofzVTAkF/B5LwGaOEgwq3ULpiVKA==
X-Received: by 2002:a37:2d45:: with SMTP id t66mr14453464qkh.259.1571932449713; 
 Thu, 24 Oct 2019 08:54:09 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:08 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 03/15] staging: exfat: Clean up return codes - FFS_DIRBUSY
Date: Thu, 24 Oct 2019 11:53:14 -0400
Message-Id: <20191024155327.1095907-4-Valdis.Kletnieks@vt.edu>
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

Convert FFS_DIRBUSY to -EBUSY

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 1 -
 drivers/staging/exfat/exfat_super.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 1d82de4e1a5c..ec52237b01cd 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -221,7 +221,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
 #define FFS_EOF                 15
-#define FFS_DIRBUSY             16
 #define FFS_MEMORYERR           17
 #define FFS_NAMETOOLONG		18
 #define FFS_ERROR               19
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 50fc097ded69..566cfba0a522 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2697,7 +2697,7 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 			err = -ENOTEMPTY;
 		else if (err == -ENOENT)
 			err = -ENOENT;
-		else if (err == FFS_DIRBUSY)
+		else if (err == -EBUSY)
 			err = -EBUSY;
 		else
 			err = -EIO;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
