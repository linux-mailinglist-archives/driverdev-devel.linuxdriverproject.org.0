Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F1CEA3C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 20:05:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FB4D2263C;
	Wed, 30 Oct 2019 19:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qcX6UbQmur-k; Wed, 30 Oct 2019 19:05:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7116220108;
	Wed, 30 Oct 2019 19:05:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B75D11BF27C
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 19:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B48088695F
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 19:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8iQVJLSdZS8 for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 19:05:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CDB986566
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 19:05:31 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id x14so4776174qtq.3
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 12:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G/CLbA2eHut9jnlfxg8nn7rhAl1LzWfOSEW3r5Byzck=;
 b=bOK7P2lxlfyGq9rodQ/zhPwa8PTwWOLk/pRJ0OBGdkrVvNV3Rxms5+TexpYxEFEgWX
 QJKhBs0hX0sz92F9UkRWCfD8EDfRFGOzYG7fYcrYXXPPnXpqrmv8mx9lFalwAbGXVX3D
 B5Qojm0kK5rYnJlQ3GaGLljpBzcegjv5bdTxfp/lPeaVvcbttfXxE0xjsws5YNAIFqSd
 lZVcnUOSKgug3+quJIJEeqkP6BlVHYNGavi88yqBUJGvUFmn9ZnZx0O2SOnFhMuqC7yq
 77ayCW3VszzHN0oW4cIAHG7pNFXwXdk42cnO41VCgelNXZDsTx37EcAdkGQUALkUvSCE
 hmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G/CLbA2eHut9jnlfxg8nn7rhAl1LzWfOSEW3r5Byzck=;
 b=CoyBR1xnEbbkb/H+AaQ6Z9BhLOvy/8jeQeVBqYCdOpZOsv+fwuQZP1zHgRlnUy6l6L
 6n3ZP3fv4LrT4Cst5s5hM3nbCbJpgHtZiVI076AoK7k3GtR+3w+I7ms8iVF3NV6BhlH/
 +axQtPqZqhdl7W2McTcL/E8LUBL0Crf0KFLkEks+qZ1tCR/VP1UjDrhO7f3l4ZbnrW1P
 ydKIed5XWREHmXzjGkYS644fyaHPNDJIAvurYmPVgImTsNg/4OohHYv+GWqdbryPweUf
 ZIeZl1V4z637DtzA7S0klihDPr4nitCIK7YYYxAvTmyI+FyfmjqIF7TdR8Sz3v9xUsoU
 fGCg==
X-Gm-Message-State: APjAAAVPmLp7ft6DldQ4E8KNi7zid68yoZuQoS6uaiNBHl9KI1TrDcAX
 7w6RclI0ZBu6dKhWoDGIvGY=
X-Google-Smtp-Source: APXvYqzEx235ls/hYY4v2X6pXnThtWx8fvVcOZ4FBt9n4uuTuTkTqI3xUEvdEJvcpgBr9HUYC0YsfQ==
X-Received: by 2002:a0c:fca5:: with SMTP id h5mr630877qvq.149.1572462329964;
 Wed, 30 Oct 2019 12:05:29 -0700 (PDT)
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br.
 [177.220.85.136])
 by smtp.gmail.com with ESMTPSA id o28sm690544qtk.4.2019.10.30.12.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 12:05:29 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 nishkadg.linux@gmail.com, kim.jamie.bradley@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v3 2/3] staging: rts5208: Eliminate the use of Camel Case in
 files xd.{h, c}
Date: Wed, 30 Oct 2019 16:05:13 -0300
Message-Id: <20191030190514.10011-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
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

Cleans up checks of "Avoid CamelCase" in files xd.{h,c}

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
