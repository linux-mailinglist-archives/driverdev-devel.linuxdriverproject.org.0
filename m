Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE75E8B44
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 15:55:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25FD0866F0;
	Tue, 29 Oct 2019 14:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E4-FErr+taOX; Tue, 29 Oct 2019 14:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34BC3864B2;
	Tue, 29 Oct 2019 14:55:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 976581BF59F
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9402A858C9
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 87YImetE4oRm for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 14:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A1F385888
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 14:55:42 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id z17so13978001qts.9
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 07:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OXHkKi/QhwruZ8D2A/Di0N1vIvUmUT5HCPHPe9Q0o9g=;
 b=V8phSevzPXZporM9ZBf66iJVi31774Tl/mJFyAPYX+/rfffVkhsVaP7EktFU1QX1/8
 fiY8GDogWNK1PWTSsE6TNQep+FBprGmbwkO1a1daQ1Wy0xVgSSFFV4x23rleaXZfFwas
 5U03td2CVB91kORy2l0Y5bSXXbrhg8oOJ0ZYYCVOmU++0irDudF7/wEwt0rvwTKDWHLi
 u+bW+w5y4aH6AFLjcrfTmZz6lALxTUFUP+HWnPZGRo6ZRyyEYp1QTpiOWAEcdMs4R3ev
 JQt/bHRAaOMNE3RmQhoeNaK6d7fk34J6zaBXIM8DAGAA24zlFTOVn5UBHfHzdQN0znE8
 QYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OXHkKi/QhwruZ8D2A/Di0N1vIvUmUT5HCPHPe9Q0o9g=;
 b=lEG1dkgYbegxXD93Mfr0gmY7YwVMOtmJGvk9w7hsjc2EK3B9tG7fYCpBEewYdPemzo
 xv3u+irE7UjzZsFqtFHk47Djdlxzz2wZm7Yy73LLa1nlyuZtkbQV3PquWHG6kmqJk2ee
 FfWuVnHREh5/+pSPt0byOVR2Kvfoe31S3/nB1lZP2CsKKifIL1tl2qQItjbuygxzURCn
 tL4fCVWb+hSn2B4AI6x42GICBWbvlJdEgEwq7l+y5w9dv5qEL/epVEN3BEYQShqFJE/b
 4H98pcwpTrA8dvSZQAw0XwcNmHXd2bJ3EItslOOchRu512pMKaX+2di2wfWlrMXc4MYm
 7PMw==
X-Gm-Message-State: APjAAAVyWftbENmUEp630W10SO8MN8yxqiP9S/RKgPJiRVZT37Ny3npf
 nv2k+7DFdviUytKypmns6GM=
X-Google-Smtp-Source: APXvYqxjS+LTEeEXVGP2auJgR/hHHzDmraegLUz52Qu9Os9gNotaYrebxUczgeTFGyEJcejc+YCN1A==
X-Received: by 2002:a0c:e646:: with SMTP id c6mr17753583qvn.162.1572360941068; 
 Tue, 29 Oct 2019 07:55:41 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 g17sm5978069qte.89.2019.10.29.07.55.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 07:55:40 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2 2/3] staging: rts5208: Eliminate the use of Camel Case in
 files xd
Date: Tue, 29 Oct 2019 11:55:16 -0300
Message-Id: <20191029145517.630-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in file xd.h and xd.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index f3dc96a4c59d..0f369935fb6c 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
