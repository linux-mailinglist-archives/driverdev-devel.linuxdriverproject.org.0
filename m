Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 672772C9204
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 00:07:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E4CE2746F;
	Mon, 30 Nov 2020 23:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FY90ozNFsrJV; Mon, 30 Nov 2020 23:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C96227428;
	Mon, 30 Nov 2020 23:07:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8465F1BF410
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 23:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76AD02740C
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 23:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bpl8dPtBUQpW for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 23:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BAB027366
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 23:07:02 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id 11so13008664oty.9
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 15:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PnTztF+FlUgaAq9XkO60WUpJIEuULvqxGIpa85tZq+g=;
 b=lNKqiVQwINxybDuZ4rmetn+MIu9vFeEyutvPXJsg/GaBOseHK9yhfQJxpjOve9gIux
 g1Ki/1HV4uats4FwWKUJSPf9SVqTTMDQ0CLVRS0sk4ReaKu/kEcdjuGrgTrXHrPyuIm7
 ZYZiIlyC3Pp5s7BJjaXo7HBto/Uz3A7MwB9clz1BJgNqTUnxuTXjEv99A7+9v5ZIuvzF
 XdQ8CMUOHt/krqzzD174Wi142Yffb3Zfu5mjBknvTccq3rtEw4Wlv0/R4Y0NQMj/upP9
 Opft6MAj/i+kyZ0GSy8fCTac3BcLraRg2YRwTM6E2RRVG63PmjmAIMp/pEOvf/UlXS1S
 WzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PnTztF+FlUgaAq9XkO60WUpJIEuULvqxGIpa85tZq+g=;
 b=kD0uRpuQgoaEd3+psarVXcmoriMuT3QALIE+nN3/5D07mG/IHdBCRhwQNX8pCeGlHE
 iSI3/cLQMnj9k8HLNK1V+INJ3vbZ9u0aHYTkvICWkUJ72e9iX1jKYRM648uCr0BoJv/J
 nSJCYEQmryyHV4BikBn+w27VrcXTp51uCFDOWF6FP4OoQDFQC6J1l3Jp5xAYyB3ZdrVo
 VXWZaIxF5lM42hqem1W8nGZ3P9xBjPwsLfDP8nq3ZUPVCtsN3f0DSbKH0xegD7AL/WHh
 T4nyRJIUeCWrvwwZfMg9ykdPMZnMQaBuwnTbhiX9kRahhFLJnO8zPI9fJLGP4JIF9vDM
 AUVg==
X-Gm-Message-State: AOAM5336ScrQMu7C+ytDZGOOZThw2IABCkK8ml74I7hj/w/pTnIJduH4
 +sWi9alP6HSuYmDQ/q0whsg=
X-Google-Smtp-Source: ABdhPJws/gtUXOZD6rXdMCGZWmI4EUNSaiby5xgEAJ84Ovoapa4Z4vDWb3OVgefYaCbQPnRVKSAIzA==
X-Received: by 2002:a9d:80e:: with SMTP id 14mr19136362oty.130.1606777621853; 
 Mon, 30 Nov 2020 15:07:01 -0800 (PST)
Received: from linuxmint-midtower-pc ([135.26.31.16])
 by smtp.gmail.com with ESMTPSA id e47sm9538282ote.50.2020.11.30.15.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Nov 2020 15:07:00 -0800 (PST)
Date: Mon, 30 Nov 2020 17:06:59 -0600
From: Travis Carter <traviscarter2@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org
Subject: [PATCH] staging:media:zoran: Fixed grammar issue
Message-ID: <20201130230659.GA10362@linuxmint-midtower-pc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed repeated word 'in'

Signed-off-by: Travis Carter <traviscarter2@gmail.com>
---
 drivers/staging/media/zoran/zoran_card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index dfc60e2e9dd7..c77aa458b6d2 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -39,7 +39,7 @@ MODULE_PARM_DESC(card, "Card type");
 /*
  * The video mem address of the video card. The driver has a little database for some videocards
  * to determine it from there. If your video card is not in there you have either to give it to
- * the driver as a parameter or set in in a VIDIOCSFBUF ioctl
+ * the driver as a parameter or set in a VIDIOCSFBUF ioctl
  */
 
 static unsigned long vidmem;	/* default = 0 - Video memory base address */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
