Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C93320D98
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:29:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29FE885A4B;
	Sun, 21 Feb 2021 20:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZO__6FlZtaCe; Sun, 21 Feb 2021 20:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E778E85A22;
	Sun, 21 Feb 2021 20:29:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 538841BF393
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49E5786F95
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rsheyzam4OM4 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:29:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6CDA886F82
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:29:00 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id n13so25812324ejx.12
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 12:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DXNugBGB0R8hXYsSzzEua1tMZzyOESjH2acUqGOVMAk=;
 b=ng/tYMoWGOENzSQyaxlYYL/CYGAMQ1/B0f7U2j7e2L5MGpf+2K67nmABqAdlg9+Ed8
 AeBX8L96IYodlLEhu71/BCwpoLUV6E/hAQpaQD7OIijGM1MXqYZcDUzA9DPVbI1Zz3j8
 /XbCtp6lSZKsAgDvrpU2j177uOCV96uUq2XXPqKLlA0OnTXM9ZB/byz0srpZ2AFxJJx/
 xCIcluSMOWdl/MdLz/rCWarCxnv9JcYM5kfJZBwBrgCsEuxAA8AqqayDQuIlAdgDls9/
 NCiVzgJQUMO9FkQc4iOSjEu3qZq8O18mmaxSIG3MBc2OLCpEQdNp2OCrxefjWnQGN3rw
 3gFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DXNugBGB0R8hXYsSzzEua1tMZzyOESjH2acUqGOVMAk=;
 b=rPVenFgJzqQuINUrErBl/HleFF5uXaKDgB0NrjLjNzaGt8jHA6QNiu4KWTL6rN3H01
 H5+pJF3N3HNopcZL4DPw2brxwztN1tSWNcuDJxhYMvqeWQ9I/aV+E8biN8iRpqmDKkyh
 adwWdZRH3/UEcGh/66bFKwfPR7lsr5vJdFE/+wf/1V3CIMjrXuSGStjditXsV/7NwcA0
 2J99S4kUYPoOarnepvVGU/vzEWLCQ9H8CZXOOb2ivY+f8Qt6D6PWU19TF3/VSami+a8+
 ZpOVz7yfXc3yf9lzsafBSdIheLhtbiE30RK+xkih/kxEtTYS5JIC5wxmGqPrZi/0Fqw/
 yEbw==
X-Gm-Message-State: AOAM532S9Q6YTRh4kOcSI37OM5BYfyfDaKIg7eNLxF369OVRCCveSUo4
 n6wCzahHLLCwdqPD1sj8rE4=
X-Google-Smtp-Source: ABdhPJyHDpbSQR7yNuLB/WDehJjjnmJiVleRYdCPMur3bjeVV36E0PKWmLGbd0zLB0VR1xgJg0GtmA==
X-Received: by 2002:a17:906:115a:: with SMTP id
 i26mr13124196eja.10.1613939338771; 
 Sun, 21 Feb 2021 12:28:58 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([88.245.22.54])
 by smtp.gmail.com with ESMTPSA id k27sm9124393eje.67.2021.02.21.12.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 12:28:58 -0800 (PST)
From: Fatih Yildirim <yildirim.fatih@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, grandmaster@al2klimov.de
Subject: [PATCH -next] staging: comedi dt2814: Removed unused variables
Date: Sun, 21 Feb 2021 23:28:55 +0300
Message-Id: <20210221202855.12442-1-yildirim.fatih@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fatih Yildirim <yildirim.fatih@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed unused variables.

Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
---
 drivers/staging/comedi/drivers/dt2814.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index bcf4d5444faf..bd329d7b4893 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -186,21 +186,17 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 
 static irqreturn_t dt2814_interrupt(int irq, void *d)
 {
-	int lo, hi;
 	struct comedi_device *dev = d;
 	struct dt2814_private *devpriv = dev->private;
 	struct comedi_subdevice *s = dev->read_subdev;
-	int data;
 
 	if (!dev->attached) {
 		dev_err(dev->class_dev, "spurious interrupt\n");
 		return IRQ_HANDLED;
 	}
 
-	hi = inb(dev->iobase + DT2814_DATA);
-	lo = inb(dev->iobase + DT2814_DATA);
-
-	data = (hi << 4) | (lo >> 4);
+	inb(dev->iobase + DT2814_DATA);
+	inb(dev->iobase + DT2814_DATA);
 
 	if (!(--devpriv->ntrig)) {
 		int i;
@@ -229,7 +225,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	struct dt2814_private *devpriv;
 	struct comedi_subdevice *s;
 	int ret;
-	int i;
 
 	ret = comedi_request_region(dev, it->options[0], 0x2);
 	if (ret)
@@ -241,8 +236,8 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 		dev_err(dev->class_dev, "reset error (fatal)\n");
 		return -EIO;
 	}
-	i = inb(dev->iobase + DT2814_DATA);
-	i = inb(dev->iobase + DT2814_DATA);
+	inb(dev->iobase + DT2814_DATA);
+	inb(dev->iobase + DT2814_DATA);
 
 	if (it->options[1]) {
 		ret = request_irq(it->options[1], dt2814_interrupt, 0,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
