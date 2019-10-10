Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D19BFD1ECE
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:12:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8291886B16;
	Thu, 10 Oct 2019 03:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZMI3B21jIvwK; Thu, 10 Oct 2019 03:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62CA585A58;
	Thu, 10 Oct 2019 03:12:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C46A1BF9B9
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 86BF523E8D
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2tiE+VOcunH for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 0560423B88
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:12:34 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id h195so2937834pfe.5
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vMaj8wxxUbfc/yrivEaSPRZYRSTBiHX+PR4qx/8nUI8=;
 b=JD3xTkSTpOGVjZncVv+AdoAANO5rqnC76neIEJjCXZSp9Nva3gVJexgxGjL55RtDtA
 GIGqNB8NOPEQKEEWFVmKuEXeeldJYZClS6KTvoVu9jic4bdhORRjUiP54yhuwUiNEjoF
 Ltn2ibLy0la1LWVWi8sa2G5Bx2HnIyO4A6zZ6GF11BolIoMskDdqvi+HePQ9VdyMf15h
 ZiA32HNTEtofLVe8Vt5O+okgJcMWiZU5UtPCzfTCmv2yW31QjWvrHpFM8G/0+XM0q/vj
 nEnkogfSA8RX13eqnbeXYeue6Qo/b2Jt4ic06GaCDxSV30wYEv7fJNy/F+5FqcmzpgNH
 ONgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vMaj8wxxUbfc/yrivEaSPRZYRSTBiHX+PR4qx/8nUI8=;
 b=Rjv0PPgPbemIU6+3rxh3QnO5RwAeeHwqze9r4UH+cVA7AdByACbmHidG2TUVVvpgvL
 bX0Qaz3/TpTa4SwcnA4yFbCgMKFW4MJ9YEyxzXZVFMk1QaS0S+/GL5TlAaN8FeOxO3mz
 XgEQwdJjcViJOx1VQTE6NcXPseiBZO7bWGmAUh8gz5xe07k5oMk1SOcoBIax5bHZlGh1
 7HrrsZLsjl9n8x8IVx5NDDibM6guL6D8G6fSvyUyMelhF0uedgonmRhd22jdT3sCK/Fw
 5z6z3i3TbVtWr5ZA2npc+/Pmne0GoI9Xx/b6epBnNJUdejsQQWemQW718/dvUSCAPPxY
 L/VQ==
X-Gm-Message-State: APjAAAU4fPhQftNwltDdUvi/uJtuZl610/xFBR761z7jobOfi/JUww86
 +Z8+xXms0Oxv6yyfd4aiOYY=
X-Google-Smtp-Source: APXvYqwOg9JBhlBXutBAbMvrk+ix9tYRM6/lafUtJO5EF/Lo51hRoLme+iY3UQS9G+/SMb/sLyOJjg==
X-Received: by 2002:a63:33c7:: with SMTP id z190mr7924932pgz.67.1570677153619; 
 Wed, 09 Oct 2019 20:12:33 -0700 (PDT)
Received: from panther.hsd1.or.comcast.net ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id 18sm3697635pfp.100.2019.10.09.20.12.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 09 Oct 2019 20:12:32 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] KPC2000: kpc2000_spi.c: Fix style issues (misaligned brace)
Date: Wed,  9 Oct 2019 20:12:23 -0700
Message-Id: <1570677143-4199-1-git-send-email-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: ERROR: else should follow close brace '}'

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index ccf88b8..2082d86 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -228,8 +228,7 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 			kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, val);
 			processed++;
 		}
-	}
-	else if (rx) {
+	} else if (rx) {
 		for (i = 0 ; i < c ; i++) {
 			char test = 0;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
