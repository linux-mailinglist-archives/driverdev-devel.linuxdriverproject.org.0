Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4F31A31D1
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Apr 2020 11:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8339C876FB;
	Thu,  9 Apr 2020 09:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LIU9ojliOCl5; Thu,  9 Apr 2020 09:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9656A87580;
	Thu,  9 Apr 2020 09:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE6991BF4E4
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 09:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB49E875E0
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 09:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a8V-jClGDsAp for <devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 09:34:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0087987580
 for <devel@driverdev.osuosl.org>; Thu,  9 Apr 2020 09:34:11 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h2so3194818wmb.4
 for <devel@driverdev.osuosl.org>; Thu, 09 Apr 2020 02:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7Q2NlCB63D2LhEGr0HwhcxP6aGwq461tbuIJ0oEX06M=;
 b=vVpj55hQZQvgH3Z3cGf73X1rvd1ZOVmJt3Ojbs5phtb5O/acyRVL6aXtux8iatz1KW
 X5oGIWVhTAcFuSlTN6gsnCxnj1V62CTHduOJdt3pQ5QlskkmM78GJwS6/I/oUr3Qrxaj
 n+ngvXzE5rJbiNcEToDunyRvf+5xjbYfoswYjfHEds2j93MQ+kAokg+7Bnztmv7TBPvz
 0x9nt1MHgx8bK+aE6PUNX84lPoYI+LUhDQFpxTnxL4fiodyCQQJkmGFuLeAJpGzC3g3e
 C5DWz/P5hQ1Eylw1ZkLkl2zGGSRsmb7uyjTvGD3AOVMZx7Leh0hqKUhfvkgePzvJlywS
 45OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7Q2NlCB63D2LhEGr0HwhcxP6aGwq461tbuIJ0oEX06M=;
 b=g7mYJgs0mMQUPfG5nMgC49OskshJoxiEtEf7QkUHcipoJ8GkIxxYIXgiqoaTV8LNKp
 7rLC0uWFuv9j1OKarIWmW9m5O330mYjan1uW8f5M7XRPIpFUC7fpDDKBg/yh2l60Xgjk
 yWzYwqvXHYbPAylADeJiUe0IYvovnI4uSWVgDNWsVlk2zUP9k7YR7Yur2O7kTqusT5r1
 Of5aNkqKCVq9MXJbswMG65nkm63z3qVJbt2e9JOtpPgxusKLpmY+H9WZxD97nQnHBmkq
 BJqtizMWRl1pJPchPIorToTXW41hdK1avy4su73nN9/Wu+A2M8D46jwvRuaQCpXoIFm5
 J3NQ==
X-Gm-Message-State: AGi0PuYEZCdlGdR/MO8/G+FubQ9FIT/zMMYPR9qyZVTnRN+7ZxY36TAW
 IaOFeIZ1jPu5T5kt/tfTgKM=
X-Google-Smtp-Source: APiQypKUHubOBZw6V5DlQzjZbiHuk+zbVkHxWC7aj0wXhW0gzw3QUStWWUeaA3X1nOIr1T7nMS9ajQ==
X-Received: by 2002:a7b:c4c9:: with SMTP id g9mr282591wmk.171.1586424850185;
 Thu, 09 Apr 2020 02:34:10 -0700 (PDT)
Received: from localhost (ip1f115f16.dynamic.kabel-deutschland.de.
 [31.17.95.22])
 by smtp.gmail.com with ESMTPSA id f63sm2764515wma.47.2020.04.09.02.34.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Apr 2020 02:34:09 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v1] staging: fbtft: fb_st7789v: Initialize the Display
Date: Thu,  9 Apr 2020 11:25:32 +0200
Message-Id: <1586424337-26602-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Oliver Graute <oliver.graute@kococonnector.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Oliver Graute <oliver.graute@kococonnector.com>

Set Gamma Values and Register Values for the HSD20_IPS

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 drivers/staging/fbtft/fb_st7789v.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 84c5af2dc9a0..b0aa96b703a8 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -17,8 +17,8 @@
 #define DRVNAME "fb_st7789v"
 
 #define DEFAULT_GAMMA \
-	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25\n" \
-	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25"
+	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
+	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
 
 /**
  * enum st7789v_command - ST7789V display controller commands
@@ -83,13 +83,13 @@ static int init_display(struct fbtft_par *par)
 	/* set pixel format to RGB-565 */
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);
 
-	write_reg(par, PORCTRL, 0x08, 0x08, 0x00, 0x22, 0x22);
+	write_reg(par, PORCTRL, 0x05, 0x05, 0x00, 0x33, 0x33);
 
 	/*
 	 * VGH = 13.26V
 	 * VGL = -10.43V
 	 */
-	write_reg(par, GCTRL, 0x35);
+	write_reg(par, GCTRL, 0x75);
 
 	/*
 	 * VDV and VRH register values come from command write
@@ -101,13 +101,13 @@ static int init_display(struct fbtft_par *par)
 	 * VAP =  4.1V + (VCOM + VCOM offset + 0.5 * VDV)
 	 * VAN = -4.1V + (VCOM + VCOM offset + 0.5 * VDV)
 	 */
-	write_reg(par, VRHS, 0x0B);
+	write_reg(par, VRHS, 0x13);
 
 	/* VDV = 0V */
 	write_reg(par, VDVS, 0x20);
 
 	/* VCOM = 0.9V */
-	write_reg(par, VCOMS, 0x20);
+	write_reg(par, VCOMS, 0x22);
 
 	/* VCOM offset = 0V */
 	write_reg(par, VCMOFSET, 0x20);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
