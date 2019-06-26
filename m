Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7493C562AF
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D5AB8682C;
	Wed, 26 Jun 2019 06:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hj71Mw11q2nI; Wed, 26 Jun 2019 06:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6125B8680D;
	Wed, 26 Jun 2019 06:54:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC1E51BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8B4C864A0
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ovTPlbFLuLEY for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FF7686456
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:54:20 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id y8so737234pgl.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XMGDOK/Tby82/6Ewws/SErTcN8nb/wjlGVTqlXvwf3o=;
 b=cKAcx/IJ9ZJ3wpqf/O65oKs0DnllnQA6BwKmQVkwN+837lI+PliG2SWPgtobMUsO89
 aB34uQTPPx8/DbOseGR7inMGtWMId10kgZDp8y2eUSpZwiwqsWSTTaj5YvS96OcTMYYj
 0jEVSzzwtB0ng9ExcN2H77SAn9a25neCQCZwBO2799X2qNsfb7TObTlt1oDPcbMKHlwF
 uT0PIfbviefnFhcXhK5i2ZOxIEvLFeGvL14oNTLrS5NZq8EzZuL+DvR55x/1YGOE+Zwa
 tHhBF6j5V8ho6GgGfQk/3vWjU5ot9ulOa6FH3sOGgbkwy46Dr9zIdIKELjL7PCzMB8xB
 PONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XMGDOK/Tby82/6Ewws/SErTcN8nb/wjlGVTqlXvwf3o=;
 b=ZQYdiZTul85oNzsEpdYABg02Ke3B+BfRf7NuJNTMwyCMDJCbOBQBCztELaFTXpRTid
 1i2+BQCM+OEz8inzHAqFnWA082ZvwsOKOBHi+XA/f0bsY6yWB+fmElhiVZWTzoX32zLk
 +eFvUX9YIeQpILf9nPYvwVTaaL+u4Ww62hc8j00BntkSzJoffJEdawGA8Q8H5UekqD2l
 6mJecOCOd6Aae2gB/f+xtwW8cbUBg7dgVgabULei9tseZwS+pc1DOqSjvP/b9M7Hge+Y
 z7aPmLsqVDuOpcXWkx91sMJJLQYd9z4RTvcayrkAeba0N6xeH83hqG/ofYxT1pLtSpW+
 Ggew==
X-Gm-Message-State: APjAAAUkcaKjvxZxC6252Is1+BhcuRiL7hLxLvznhWsBLyVQogbef9D7
 fvDsh0/5YQs/yBm/+wghFfzrzWlA
X-Google-Smtp-Source: APXvYqyS3UkhUsBLQHV4xQ9hPimetHkb6/7N0bf9ZIl+exIuLSQ4kOBrGa9tqDVg33NMleLNHAi0Ug==
X-Received: by 2002:a63:3349:: with SMTP id z70mr1369143pgz.355.1561532060018; 
 Tue, 25 Jun 2019 23:54:20 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id z11sm970605pjn.2.2019.06.25.23.54.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:54:19 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, abboti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: [PATCH 2/3] staging: comedi: Remove function gat_sce()
Date: Wed, 26 Jun 2019 12:24:03 +0530
Message-Id: <20190626065404.3330-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626065404.3330-1-nishkadg.linux@gmail.com>
References: <20190626065404.3330-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function gat_sce as all it does is call clk_gat_sce.
Modify call sites of the former to call the latter directly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_dio200_common.c b/drivers/staging/comedi/drivers/amplc_dio200_common.c
index efd7428c3cee..0b2f04b02ebc 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200_common.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200_common.c
@@ -46,12 +46,6 @@ static unsigned char clk_gat_sce(unsigned int which, unsigned int chan,
 	       ((source & 030) << 3) | (source & 007);
 }
 
-static unsigned char gat_sce(unsigned int which, unsigned int chan,
-			     unsigned int source)
-{
-	return clk_gat_sce(which, chan, source);
-}
-
 /*
  * Periods of the internal clock sources in nanoseconds.
  */
@@ -483,7 +477,7 @@ static void dio200_subdev_8254_set_gate_src(struct comedi_device *dev,
 	unsigned int offset = dio200_subdev_8254_offset(dev, s);
 
 	dio200_write8(dev, DIO200_GAT_SCE(offset >> 3),
-		      gat_sce((offset >> 2) & 1, chan, src));
+		      clk_gat_sce((offset >> 2) & 1, chan, src));
 }
 
 static void dio200_subdev_8254_set_clock_src(struct comedi_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
