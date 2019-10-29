Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7133E9386
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 00:22:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74819215DF;
	Tue, 29 Oct 2019 23:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nARTO54bZTNs; Tue, 29 Oct 2019 23:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB67220516;
	Tue, 29 Oct 2019 23:22:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8081BF31C
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 23:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3975785308
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 23:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LpJxQ1HlAL2f for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 23:22:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B8FFF847CD
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 23:22:28 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id x14so666749qtq.3
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 16:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NL5NHkQo49SzWvXcG4GM9cxAAP6UXPgbkUHRM9GwPRM=;
 b=BNZPLsM/pFTx/j8tsrlHokltVoy7lphtIngmNZpMI7tw7cLyH+x1Og5Vgy0PKhIRck
 +REO+9To7CtKlPkEIDVjccdwXUWJTlJNGr/cGUPguD838pybkp3K5eu0Tgt+CGGBSI7g
 94gPtvnJJszTMW58jNGi8VxZEG6Ikrv65kQzvWnyoJTi4enJoykJL5zCXe4KzHlhVUXt
 RC8d8W32ZWzNmI1UCnDKCQN/m1JONdnt8sIFpK4JfvrA47FuKMr+zgvg2ux5ym41wzUd
 aYBIhelWxNe+xOlF7jwb+bmMepE/jN2ZxbiTEwAZImGODD6m/MXYViD8tEBpxvbamKHD
 9TMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NL5NHkQo49SzWvXcG4GM9cxAAP6UXPgbkUHRM9GwPRM=;
 b=aIULqIokvFGU8pv+GMlEJ+teTFmopN16TO7MGs6FctM67IqY8w/4fFK30aWIjwUF8G
 7LP/0j6msZKxaB07onbxsx54RZ7vN4J9OXUkz+SF6QgV1kO/PA5nOvSdGhBSiVVu6i7R
 ES8RSCYnsBE0sq1YxI0JjexlqVvDE34tMNOfbvnjwtSXxwunu/cUO5n+aZy/yoasCtjK
 /sjlrxadkOxLYXLQjtdbajReiPlJawedebw61CKrAihkOfWUlaNY7aOxftlG6pivq6R4
 kPHL97oI8b+V4NFYclLcMLdjNe03D8KJjgMRNG7t61c6MTipoGf0xumemXfvDpdA2QPG
 X9Eg==
X-Gm-Message-State: APjAAAXwoaKy2ErGKSZxWOePhBv+Rf/lacZvZkENQKN5gjDirAinEXIv
 7k53rrTnGyCTcS76pcH3LD0=
X-Google-Smtp-Source: APXvYqzQxW5G8EXq8zMyuMWTrYVdA+nHFpY0Mk0GHbknCXVXGWlpjdvhbi2ZPPAhch3mQfE6x+0ZAA==
X-Received: by 2002:ac8:117:: with SMTP id e23mr2054008qtg.82.1572391347698;
 Tue, 29 Oct 2019 16:22:27 -0700 (PDT)
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br.
 [177.220.85.136])
 by smtp.gmail.com with ESMTPSA id a18sm633940qkc.2.2019.10.29.16.22.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:22:27 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 2/2] staging: sm750fb: Replace multiple spaces with tabs when
 it suits
Date: Tue, 29 Oct 2019 20:22:07 -0300
Message-Id: <20191029232207.4113-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
References: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
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

Replace multiple spaces before some comments with one tab. Aligning the
comment with the function below it.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 5925d7c7d464..8faa601c700b 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -243,21 +243,21 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	 */
 	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase); /* dpr44 */
 
-    /*
-     * Program pitch (distance between the 1st points of two adjacent lines).
-     * Note that input pitch is BYTE value, but the 2D Pitch register uses
-     * pixel values. Need Byte to pixel conversion.
-     */
+	/*
+	 * Program pitch (distance between the 1st points of two adjacent lines).
+	 * Note that input pitch is BYTE value, but the 2D Pitch register uses
+	 * pixel values. Need Byte to pixel conversion.
+	 */
 	write_dpr(accel, DE_PITCH,
 		  ((dPitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
 		  (sPitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
-    /*
-     * Screen Window width in Pixels.
-     * 2D engine uses this value to calculate the linear address in frame buffer
-     * for a given point.
-     */
+	/*
+	 * Screen Window width in Pixels.
+	 * 2D engine uses this value to calculate the linear address in frame buffer
+	 * for a given point.
+	 */
 	write_dpr(accel, DE_WINDOW_WIDTH,
 		  ((dPitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
