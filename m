Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D5627203C
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8648585FB4;
	Mon, 21 Sep 2020 10:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u2B4PVC0ogOb; Mon, 21 Sep 2020 10:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 655B385F98;
	Mon, 21 Sep 2020 10:21:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B83631BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B0C4586031
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTo-4zUqHGFO for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07DE285F90
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:07 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a9so12041664wmm.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dGPy5ojL0a12oJizSoTZbHP5FGaftfAgkoEVHs65l4s=;
 b=H6312PE+010ywJeFOg4lNE3sW8va0OwgWJcvpBLNSV2n4oQ/q8IOwKVpE4MsPUnCeQ
 3lpyvqzzokBMxsB7SmGe6P7LXw7OeHq5WbZxslzvA9P2yo0fJ0pTvlMWXOzRQzKv5LJn
 qREcus9oypZcllMr4npr7tiYPVtXo8D4b/UiQDXlaqafrU8hDph/dIUwP1h0id/08Tut
 nUn/Tp0o6OCDVI6BX+DecGAk9Tm39IxMfe171qbtAJ/dmDpitBnqim6npCnJjDUAFKSK
 CjHDaVPZuxwdAuBXj+rNfxl9txyLroSy6dhuekiskmcVACAtl8XF5cgwVLhIWBxO1Pp3
 58Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dGPy5ojL0a12oJizSoTZbHP5FGaftfAgkoEVHs65l4s=;
 b=Ck8Cf1tz/ZN68pJ0h25ggVIMYntTXMmzOf4PYT6ukrJFzOkaHsfP6ezEViDVlHv00x
 jH3B06NXxsJLeI/V+zbtKyQKCh5tkkPkAH3mR8JqT7NIxs841GAwOiPDJDxYQEsKplHH
 Bj+q+hbyMv++VvydX4oCJfQjHH3dmFmIrbOmJKR9iwS21qb8dxyabmQ3YpoOwB17M9DM
 kYHGrGj833to/7fU7sJVv2pQ6v3SrnsA/0pILkUE6Jff90vBWPWIV7MEtGzW2KiwZ5Of
 RvQCi8gep51kyQOswx2soSzHKsVmXEL7+y8J6WaUkynD6NoPaPOOki27iDDJJvsF62g2
 WB9g==
X-Gm-Message-State: AOAM530X7SJjgAmlGajK4etz+B0hzsC6UDMil1Q43VXp+YVb5mt++1Sx
 jgGDkMoVTbKDR3LW8QZykXOEDg==
X-Google-Smtp-Source: ABdhPJzNjyNJHKBehOtbtsaCLPkzNr95oSX2JPP9UpbfgavliKvqivJ0H/6ycjsOjh8/p3Iea3rfVg==
X-Received: by 2002:a7b:c0ca:: with SMTP id s10mr29336977wmh.103.1600683665592; 
 Mon, 21 Sep 2020 03:21:05 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:04 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 35/49] staging: media: zoran: constify codec_name
Date: Mon, 21 Sep 2020 10:20:10 +0000
Message-Id: <1600683624-5863-36-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
index 176ce8a355ba..d956bd45194f 100644
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
@@ -1092,7 +1092,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
