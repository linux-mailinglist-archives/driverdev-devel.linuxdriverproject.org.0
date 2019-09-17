Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B8AB458D
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 04:42:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C65B886096;
	Tue, 17 Sep 2019 02:42:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJ4Pn33r7tvo; Tue, 17 Sep 2019 02:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4917385CF0;
	Tue, 17 Sep 2019 02:42:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB30F1BF38E
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 02:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D51638749A
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 02:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s+RfakFN9C-u for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 02:41:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B7528744A
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 02:41:57 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id j4so3850492iog.11
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 19:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ss7NWhljJYCkM9LFwXECsWgnSJXgTz+aKfYf6bs657s=;
 b=gqEihpAoxO+fPlD5ckhmMq29Dph4wQduoUWvxbRRK7TxoKEryBNHBX7st3hyzofkan
 WHXyUfelGrrlUGdV4oI3LwRTHJ2hh8lbUbzwA11Byr2AUuBWafthilX6kQ3BPEkCfLL2
 ZXijasVIrd7kJlfsbAHWTOcMa01nTfIbFLQIFsYynQbpMiYJIdE+W3UyS3ANbDzJl6ce
 3yZmIspuapr/QpT03rHoRt5+Fv/m5oXuRXqmQrVx/L+n+af1AjmXwtaDifEXlLcbbTu1
 2LXbacHTi/HHcHoUeMXOwAxn7Jx18xlDDIremUTgqs4kktTnALXJgfUFmNNoyeXfN4m4
 p/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ss7NWhljJYCkM9LFwXECsWgnSJXgTz+aKfYf6bs657s=;
 b=s8mskF8As7VFPa+heaQf9iB7XNQdHZ42SIm50JnZLGBfhL1IDIP0LXm5N5GgP1BrIb
 OaxOayhq35UNL1e+Ge/WORCXm/jPfIkdABdSEqAg5nzKui0jANVePNTzyHmaIgoJt3JL
 J/7I2hUImpcEGZyTXKb68cYPYHEGRZrjgqWe2TRP2FpzWKHz7MyNEM0ReODFhVvHGv7V
 9UOUoB88HXtFSH6/A1AO+qrlOTF6T0FIJrjjDwXS5o9rdEkrEcwkd5dZnjaUy5t6X8Je
 +g0ga68jJufhutwi4NWuhfHj/nGcGVXKBRwQHOTi7FM/r2fNfACBWqCgB6Oj++w32VZ5
 bguw==
X-Gm-Message-State: APjAAAWVarJ1FpdBB899ox7shUnp0FekjYetFbwgLcKyayNOlNYf4vh8
 gsiqxp+dHdJx28Ra7/fu4Ns=
X-Google-Smtp-Source: APXvYqy74GjJuYyEd6PdtWT6m1Q6F/eY8ON7hlzdfpbCCh5rYV0cZV20BUFdrQ4nUqBAfhgKESnxjQ==
X-Received: by 2002:a05:6638:1f2:: with SMTP id
 t18mr1571972jaq.67.1568688116532; 
 Mon, 16 Sep 2019 19:41:56 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id l19sm618065iok.14.2019.09.16.19.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 19:41:55 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] staging: comedi: drivers: prevent memory leak
Date: Mon, 16 Sep 2019 21:41:43 -0500
Message-Id: <20190917024147.26290-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 emamd001@umn.edu, smccaman@umn.edu,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In das1800_attach, the buffer allocated via kmalloc_array needs to be
released if an error happens.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/comedi/drivers/das1800.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index f16aa7e9f4f3..5f2d5f7a6229 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -1237,12 +1237,16 @@ static int das1800_attach(struct comedi_device *dev,
 
 	dev->pacer = comedi_8254_init(dev->iobase + DAS1800_COUNTER,
 				      I8254_OSC_BASE_5MHZ, I8254_IO8, 0);
-	if (!dev->pacer)
+	if (!dev->pacer) {
+		kfree(devpriv->fifo_buf);
 		return -ENOMEM;
+	}
 
 	ret = comedi_alloc_subdevices(dev, 4);
-	if (ret)
+	if (ret) {
+		kfree(devpriv->fifo_buf);
 		return ret;
+	}
 
 	/*
 	 * Analog Input subdevice
@@ -1290,8 +1294,10 @@ static int das1800_attach(struct comedi_device *dev,
 		s->insn_write	= das1800_ao_insn_write;
 
 		ret = comedi_alloc_subdev_readback(s);
-		if (ret)
+		if (ret) {
+			kfree(devpriv->fifo_buf);
 			return ret;
+		}
 
 		/* initialize all channels to 0V */
 		for (i = 0; i < s->n_chan; i++) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
