Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B4811BB5A
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0607B86D6C;
	Wed, 11 Dec 2019 18:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6OBcqitatr7; Wed, 11 Dec 2019 18:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D82D286D48;
	Wed, 11 Dec 2019 18:16:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1F51BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F1B4A86D26
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6G3Er_SDyw1K for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C54385F5D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:28 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id o22so9389958ybg.6
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4awfmVKPws5vxP93HnYWNI+fZRnhVZj4z7QMlkLCxoc=;
 b=DaxkaBWzP/miLV6xViB100JHzouBPUUAx3i+z9hL9GJAU5P5azAY5pzUDbMNu+Cehd
 AU84mesIjytm+s1sJA1SB7DK6GN7F3gZbxQbJqvawyMErooS6aCe1CNiGjBwynyutjBW
 wz2UJX69cdLQUQGEYRuaxFy+T8YVq1DbpcfSVo/qtHrhZSCIhLLBI0Vmtw5F+hF09HTQ
 Cx14URfY/KOxLqyJC67HoZIjoFeidI2cu9G+cFVtmb3xxFqUV8tS8hRKyZ+5UJpVIl7X
 FbNi/P1rTcsBx+jxFYR7ftTIt56L63JuPQDLpdnF2vHbr/2er2qoJ+5+sYF9R5niGGeb
 K9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4awfmVKPws5vxP93HnYWNI+fZRnhVZj4z7QMlkLCxoc=;
 b=Q1ttNH8egorquLqJdswc6e0+YZ9OZC2si6OMvtVGzGozbxe2evtXVH87a5Ug1CiGAl
 AnTAeRtF8vNnDWZ56jTeXo0vwa+f3MOXTp4jvfhH0l7W4KOZf3jsDPafSbkF+cXybLnW
 RWdA8ZlmM8xcHzPTgAFCS99dXEap5DWU6mE/0VGVgAZuUkcnRgQeaSHIN4fS9uKw5+f5
 E+UvTqbfV8F5t2PyxlWsnQz7Et2WEcMFs5dMemEIDK5EULt4VXOrAg+eB8qhteosEzjL
 ySVxJqs0nrc3wqSahmHSENFMeaxNDoFUGRLnuiSiGI+Kwlv6xcdO+av7sa4aR3KIHLGC
 CSeQ==
X-Gm-Message-State: APjAAAVXpMAFy1Dv6FardHbEkBVN+i72XpgHclZkdcWmRmR3nv6oOrgr
 rTdZxtrH4lfkTscbZwdZAwE=
X-Google-Smtp-Source: APXvYqwB8EyYkZ5Vifm/xgiLEtGAKGndz9AKxvYQpmI2B23qc99C6RAXG9eweb+X3uRymoNYiZ5xbQ==
X-Received: by 2002:a5b:451:: with SMTP id s17mr1014875ybp.8.1576088127402;
 Wed, 11 Dec 2019 10:15:27 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id d186sm1340039ywe.0.2019.12.11.10.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:27 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 15/23] staging: qlge: Fix WARNING: please,
 no spaces at the start of a line
Date: Wed, 11 Dec 2019 12:12:44 -0600
Message-Id: <8fe7607b122493540f7c746d654b4a87afb9bd77.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: please, no spaces at the start of a line in qlge_main.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 38d217ae4002..024c77518af3 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -52,16 +52,16 @@ MODULE_LICENSE("GPL");
 MODULE_VERSION(DRV_VERSION);
 
 static const u32 default_msg =
-    NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
+	NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
 /* NETIF_MSG_TIMER |	*/
-    NETIF_MSG_IFDOWN |
-    NETIF_MSG_IFUP |
-    NETIF_MSG_RX_ERR |
-    NETIF_MSG_TX_ERR |
+	NETIF_MSG_IFDOWN |
+	NETIF_MSG_IFUP |
+	NETIF_MSG_RX_ERR |
+	NETIF_MSG_TX_ERR |
 /*  NETIF_MSG_TX_QUEUED | */
 /*  NETIF_MSG_INTR | NETIF_MSG_TX_DONE | NETIF_MSG_RX_STATUS | */
 /* NETIF_MSG_PKTDATA | */
-    NETIF_MSG_HW | NETIF_MSG_WOL | 0;
+	NETIF_MSG_HW | NETIF_MSG_WOL | 0;
 
 static int debug = -1;	/* defaults above */
 module_param(debug, int, 0664);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
