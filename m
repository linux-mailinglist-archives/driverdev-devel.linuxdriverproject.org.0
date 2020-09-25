Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF752790EE
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:41:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F08C86D1D;
	Fri, 25 Sep 2020 18:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AF44bGQ4Nllw; Fri, 25 Sep 2020 18:41:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99BF98648E;
	Fri, 25 Sep 2020 18:41:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5B7B1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A25F78648E
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WAMJj_7gFXHk for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:41:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3847286237
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:41:17 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 7so3303651pgm.11
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D8qWzNWw/ylGv0AvYE/WmaDyWq/+0ija+R8teMBGwU0=;
 b=fpN+ajYgSkj7uSoxKOhaZSo2s3OPrfOIZzpgv85GTZMuOv+5VUjG3eXaVJcSX+fGTi
 NSgl6/UVPvgwWaR8skfGUzWcAJjGrRTgGNM7eC0utaO4WidKOxoGOUSaaktkJLB5G9sN
 9Po7CBCY09/CSIeqqEGXk9Kps4L55hMx/v/H9TFli+C6uo1XJDjQ0dBLu2jc7iVzHr9w
 K8OQOtHka0RK2mLKs0Iyz6TTICMX1fHDLG3iXiiO1fjPbbbXzo97jibfRajOSXF84cTK
 UmsnRACKYCpLWTc2xORmdIe3+SOKVP/H1GjxIVo0gbiIUqfsIrelUOrPb6LBFdTLJNcm
 Wc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D8qWzNWw/ylGv0AvYE/WmaDyWq/+0ija+R8teMBGwU0=;
 b=kSc5JaXqBUuAlg6uM9hl5OaMpkU2kcccEH1DliVMrMoTXeukhdoGbXKqI2qbNDymp3
 GW3nvrQ3jpCsoLwW6LOnIdPGxsACX6iyw/oJHdpJBHG4YlJV7gey1fBDaO/dnIKzjeNY
 1mFsfZ8Qb5BG7trmokhHnGLk6IsTJDCneAJ8sC0kVirEqIA+QxH3zWmHzRH7nQIZIAak
 xVAhnZNgg9XHdSr/qxvs8t8fJiD/AshEJqFW7cNFDn1PAWewgC9Pu5pWVEASORz90oUW
 LJwrWWIlL87hSMo++nt7M2yFsm6LNPloSVnw8FjtpGP+iuMCUVoLAnyeQqSLHP4rTa9r
 nT0Q==
X-Gm-Message-State: AOAM530bj2UG7uQplCyVqtojJ3c5F2iMo9fI1nCGdao9lID2IHdA9b5d
 JzfM7sRJah3l4zzAzzuucnhA2Dv22aA0Rg==
X-Google-Smtp-Source: ABdhPJwzlm/EW0k1dN9gKCPbPnib2iHUnASrCFgy7qVgIF87UD01QjU3xqyGqdCUCVwA6NmHbiiSag==
X-Received: by 2002:aa7:9f99:0:b029:13e:d13d:a134 with SMTP id
 z25-20020aa79f990000b029013ed13da134mr565916pfr.28.1601058877862; 
 Fri, 25 Sep 2020 11:34:37 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:37 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 34/47] staging: media: zoran: constify codec_name
Date: Fri, 25 Sep 2020 18:30:44 +0000
Message-Id: <1601058657-14042-35-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The codec_name could be const.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 79783cbb919a..49a1d9e084a8 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -254,9 +254,9 @@ static void avs6eyes_init(struct zoran *zr)
 	GPIO(zr, 7, mux & 4);   /* MUX S2 */
 }
 
-static char *codecid_to_modulename(u16 codecid)
+static const char *codecid_to_modulename(u16 codecid)
 {
-	char *name = NULL;
+	const char *name = NULL;
 
 	switch (codecid) {
 	case CODEC_TYPE_ZR36060:
@@ -1102,7 +1102,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct videocodec_master *master_vfe = NULL;
 	struct videocodec_master *master_codec = NULL;
 	int card_num;
-	char *codec_name, *vfe_name;
+	const char *codec_name, *vfe_name;
 	unsigned int nr;
 
 	nr = zoran_num++;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
