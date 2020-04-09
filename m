Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 800A61A31CE
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Apr 2020 11:34:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1A0584E88;
	Thu,  9 Apr 2020 09:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0W4qWOc7Uiu; Thu,  9 Apr 2020 09:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF10584E42;
	Thu,  9 Apr 2020 09:34:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82CE51BF4E4
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 09:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4B45A20500
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 09:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ofw6GMMZ4m+l for <devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 09:34:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F41E203A4
 for <devel@driverdev.osuosl.org>; Thu,  9 Apr 2020 09:34:10 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k1so11170797wrm.3
 for <devel@driverdev.osuosl.org>; Thu, 09 Apr 2020 02:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vFKY58EHDI35uWqTXFRcYlKrXpE9AmTqUd0lTuoZycc=;
 b=Vluwa6jv99EFa0y3quZjb49M0cgeiVocOWBa7QIiBKYvYGJY7V0w2GjxOzU0DvqBB2
 Nb+5jY6WzMvAFVr7+8Ys8cs/E8W+eSH7gVqp9SXwjXmeXK/fsM9P8X0pxGVa8CRje2WC
 g3y3AHexyE7aae+UXl275caZKdGy3bXMWW3dOX0pxx/kD46g0wwTIx60fxsbAA7dgI1x
 3xFzJ3zU4lMTfDFv0mkxtk/La2DIonGAbNbfo5hjR4wtvI44ZywsUdkq4FmMJmN3jx1p
 DfoQ6ycgEdCR5XR/YjooLFM2As21WdGwPk7QuF5UpUfyNAWu7GlOOrJdpnAnF0PHtHfj
 JPVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vFKY58EHDI35uWqTXFRcYlKrXpE9AmTqUd0lTuoZycc=;
 b=XX8dnvR+ttWDPCBdSkGuHuvAjciFJ9L6MpinegmnY/1pbK6R6aQKGrlknKPxziB0ou
 Zrw8wxjRmM1c92Qbj0ob7VhRa9h+atn800ATfF+PEv9ESM2R1YiF3elfaK4aEzDHzV30
 ckQGinYK1tVIXD1Z5mRjbu2tGJAtleUZ01vb0PRCY7E6hbsxdfNG65XJMcpwGuIVlXs2
 zrQrqcJqX/r5sk8mOvfN6bFT7oLrhBpOHaa9t8lnkgzHFRXtcb+d3nB0DsKqxocd9+DW
 KH1wrslkEz1Mw63vd/x+AERnrmeYIPkkk8EzbMq0L/Rk4Gw+olc5XV27TUtMtMluSFg4
 JAWQ==
X-Gm-Message-State: AGi0PubORv0+tZv7OntMChCKqGvnmYDK495LV1X65IYk5pjdcZq0RYpW
 b6JyZTE43aGyMAxvQO4ohX4=
X-Google-Smtp-Source: APiQypKHK/kvsaEcZ/Cmzl/YN983+vE0TBvst1peF9mlnQUhbLlkLuwefhysx3YSl6P6fBAQtjQu9w==
X-Received: by 2002:adf:904e:: with SMTP id h72mr12881868wrh.367.1586424848253; 
 Thu, 09 Apr 2020 02:34:08 -0700 (PDT)
Received: from localhost (ip1f115f16.dynamic.kabel-deutschland.de.
 [31.17.95.22])
 by smtp.gmail.com with ESMTPSA id h2sm1916942wmf.34.2020.04.09.02.34.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Apr 2020 02:34:07 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v1] staging: fbtft: fb_st7789v: enabled inversion
Date: Thu,  9 Apr 2020 11:24:05 +0200
Message-Id: <1586424250-25897-1-git-send-email-oliver.graute@gmail.com>
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

Enable inversion mode

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 drivers/staging/fbtft/fb_st7789v.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 3c3f387936e8..84c5af2dc9a0 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -120,6 +120,10 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, PWCTRL1, 0xA4, 0xA1);
 
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
+
+	/* enable inversion mode */
+	write_reg(par, 0x21);
+
 	return 0;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
