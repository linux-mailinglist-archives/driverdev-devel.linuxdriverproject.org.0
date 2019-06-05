Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2FF35E69
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 15:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7724F20492;
	Wed,  5 Jun 2019 13:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ckBzPiwJkFl9; Wed,  5 Jun 2019 13:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 736AE20419;
	Wed,  5 Jun 2019 13:54:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7F81BF27A
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 13:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C27920443
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 13:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICQwrBwM99G2 for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 13:54:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 140CC20112
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 13:54:04 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id e16so11311591wrn.1
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 06:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1Kpp3N9TCra6dfSaYm7bsRqEqwflkRsTfjv3dARv+9E=;
 b=o673s0q9P/HJY2a3F5pyFquBsvQpq/nhso43cjvZdJx8HpT3qldz4AE5r9Yyenr0kM
 yMnj/NDBZSz3Vd0wabkBW8hic/3cd48wt+yVUwEsxLkYXjoneN9dmE0rdTO6s8VnZg6z
 mo49Ry3WxTPPjrnjJdx9oBo04xlHbyNUXVixY8y5+Z0nyuNE57a1k+V+nHtEOzMhoZzG
 48IAJAIkZXsm8Nd3/g3Hom/zw7U9/X2aIrbS4lXpnBzoUP/lzNvSHd1PQug3XeDh1Bbl
 nphStXkWJEoVqJo8tO58q26HPTgbYxqqgNBceSdNS1h9kR7USIu33HLSUn5E8trZ9YbS
 NvWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1Kpp3N9TCra6dfSaYm7bsRqEqwflkRsTfjv3dARv+9E=;
 b=eDFNZRVbEEUZobtMeXy+NYeVG28/sW19yTPjP8KrmfQMlZsgEMryRTbV0EJvXvoP/R
 crsV5GDXI1JU5HgbRZFIvuo4uhEjBH8bHIo85Jd1lunZcBm8i0hPxyjQO6iE5ignvk6l
 Y+zOZo3IOYcR/rTxeb2IGG0ejBCHCVpZKs0bq78hs3PfAgjBAtCBpx9i/oWjJugeiaP6
 MSsWg+9qp53x12bOXX57yFvjdHrzBtkAIJgXmLL9b8ACHi6Mp2kUJ4HJmfBURfeRO7zz
 7TBJ5zVdXzEqSGC7XY2zMWF3nYWiBMKrQBAiq6Ji6iCvD2VWOxDsjPcgcb3/tHL+sz8S
 x5cg==
X-Gm-Message-State: APjAAAWxFfrklnID6nOQhTMEMz8+EoK/p30oG17mp/KwLJDyJxJfTheM
 d8pW2TpILwFKij8RiHPKT6M=
X-Google-Smtp-Source: APXvYqydDPbAyAPz1moz/V7X8sI8A9+bJPkFjrETW0BldN394E9p2BhRgAAGN5X1dOXMSHvYHoIFag==
X-Received: by 2002:adf:f946:: with SMTP id q6mr4724343wrr.109.1559742842563; 
 Wed, 05 Jun 2019 06:54:02 -0700 (PDT)
Received: from localhost.localdomain
 (host228-128-static.243-194-b.business.telecomitalia.it. [194.243.128.228])
 by smtp.googlemail.com with ESMTPSA id h21sm17859037wmb.47.2019.06.05.06.54.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 06:54:02 -0700 (PDT)
From: Valerio Genovese <valerio.click@gmail.com>
To: isdn@linux-pingi.de,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: isdn: hysdn: fix symbol 'hysdn_proc_entry' was not
 declared.
Date: Wed,  5 Jun 2019 15:53:49 +0200
Message-Id: <20190605135349.6840-1-valerio.click@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 Valerio Genovese <valerio.click@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This was reported by sparse:
drivers/staging/isdn/hysdn/hysdn_procconf.c:352:23: warning: symbol 'hysdn_proc_entry' was not declared. Should it be static?

Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
---
 drivers/staging/isdn/hysdn/hysdn_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/isdn/hysdn/hysdn_defs.h b/drivers/staging/isdn/hysdn/hysdn_defs.h
index cdac46a21692..a651686b1787 100644
--- a/drivers/staging/isdn/hysdn/hysdn_defs.h
+++ b/drivers/staging/isdn/hysdn/hysdn_defs.h
@@ -221,7 +221,7 @@ typedef struct hycapictrl_info hycapictrl_info;
 /* exported vars */
 /*****************/
 extern hysdn_card *card_root;	/* pointer to first card */
-
+extern struct proc_dir_entry *hysdn_proc_entry; /* hysdn subdir in /proc/net
 
 
 /*************************/
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
