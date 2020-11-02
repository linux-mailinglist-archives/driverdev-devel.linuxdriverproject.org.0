Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9DE2A341E
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 20:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A31878735E;
	Mon,  2 Nov 2020 19:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3f1PRuQt-yT4; Mon,  2 Nov 2020 19:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AD5287305;
	Mon,  2 Nov 2020 19:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47F7C1BF36E
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 19:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 343E82044B
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 19:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBma5AMGZWON for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 19:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A9C42043B
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 19:34:11 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w4so1433808pgg.13
 for <devel@driverdev.osuosl.org>; Mon, 02 Nov 2020 11:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=zJZ6RJTnErujF0lDgi2VwA7AjjA905AP/3ViCZfttXI=;
 b=di4hLUugm7xL+TP/he0btTeUvJrmVti8iHMyENl31g2iL4BNNIAV+0GJwxCa/0WjqF
 IZt6jGVS/BKUrkKRmmsqnIegGFN2MDvg9WqVFspazwUtrtbtMZf+gi8taGjyH4re5NZr
 ipDmLQaviyI1JyO2gdbeTRj+j/5N1dKGghpwNnHQZlM9yY4JhetlVrsEgj8uniduuZtn
 ELyKQMqkGFjd53hU4v5YcoT+Mo+c/P5g2Fe2fbumGmQUK/zXxMyGFixYOc4SqWH0hlIY
 yZjqUJcgzhT5fluHP5/SGEBr9LnVSiT5VVvdri/ru1BCN+vKi3tSbT2ZehvflAPJOf34
 5SBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=zJZ6RJTnErujF0lDgi2VwA7AjjA905AP/3ViCZfttXI=;
 b=d3jMRPo8glfsOJ2BevAT/0LkleGBtctdf4W6I3azFdyFG/X+UnyZHoWp2SzTErP3Jm
 BuZecOYedBhnOmwa0XRG7sPwBg61HeAZ4jW6hGgsmXhk3hMWkS8vJ3J4mOjXz4nk0wN5
 MV+TzImGlzKldVF8LWWjtmBWoAkDcxnv+dTJthCuT9EvMtV8Bc+0JT5J9Qgx/AM8pVIP
 cakhnIgQWGt9QLYgIq/djjx8RrpiAYxf2S4IDUMFxdUe3TvxNEwtEYxTbVHBPPL0A8XY
 ikXp5OW6AgIaSFjpm4GARs3EydcM9I1dizZCQ3qOHBODEcruOK0RSsw2Q0T+zrzDo5vp
 06ZA==
X-Gm-Message-State: AOAM5321mQ+e9d+h9dg80etIrQaCHvWjODV9Y/B57gEpkXx4Tjr2mNxo
 1nanI2CIeew6p84mJOnH/Q==
X-Google-Smtp-Source: ABdhPJz2aIASybo0JHfjTrKlJ/Au7tLUDgP3dPA6SyAkLoYz59E1MddDTm1sXjFQWZgttz2aLJVtLw==
X-Received: by 2002:a62:1991:0:b029:155:f476:2462 with SMTP id
 139-20020a6219910000b0290155f4762462mr23426168pfz.43.1604345651018; 
 Mon, 02 Nov 2020 11:34:11 -0800 (PST)
Received: from Sleakybeast ([2405:205:c82e:472d:f3dc:c193:6b6:3d7b])
 by smtp.gmail.com with ESMTPSA id e15sm14643816pff.121.2020.11.02.11.34.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 11:34:10 -0800 (PST)
Date: Tue, 3 Nov 2020 01:04:02 +0530
From: "siddhant gupta(siddhant1223)" <siddhantgupta416@gmail.com>
To: matthias.bgg@gmail.com
Subject: [PATCH] staging: mt7621-dma: Prefer Using BIT Macro instead of left
 shifting on 1.
Message-ID: <20201102193402.GA14965@Sleakybeast>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mamatashukla555@gmail.com, siddhantgupta416@gmail.com,
 linux-arm-kernel@lists.infradead.org, himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Replace left shifting on 1 by a BIT macro to fix checkpatch warning.

Signed-off-by: Siddhant Gupta <siddhantgupta416@gmail.com>

---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 354536783e1c..a9e1a1b14035 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -72,7 +72,7 @@
 #define HSDMA_GLO_TX_DMA		BIT(0)
 
 #define HSDMA_BT_SIZE_16BYTES		(0 << HSDMA_GLO_BT_SHIFT)
-#define HSDMA_BT_SIZE_32BYTES		(1 << HSDMA_GLO_BT_SHIFT)
+#define HSDMA_BT_SIZE_32BYTES		BIT(HSDMA_GLO_BT_SHIFT)
 #define HSDMA_BT_SIZE_64BYTES		(2 << HSDMA_GLO_BT_SHIFT)
 #define HSDMA_BT_SIZE_128BYTES		(3 << HSDMA_GLO_BT_SHIFT)
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
