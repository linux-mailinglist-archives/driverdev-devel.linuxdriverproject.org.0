Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDB71E2495
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 16:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91D4C86256;
	Tue, 26 May 2020 14:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4OiG0KO5UUN; Tue, 26 May 2020 14:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64612861AF;
	Tue, 26 May 2020 14:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC74E1BF25B
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 14:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8C88826B7
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 14:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qr7FJIo052RD for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 14:54:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3AA8B8127E
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 14:54:57 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s10so10191846pgm.0
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 07:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=XE/CNhhJZ18cnKkSu4xYjD7OM6uQ6hC9Q7Mh/l738ac=;
 b=kHCFTnpgCMomfimXGCA9ItSqWhoC1ov5r+BDSPv0URd2YpxNoB1NYRxa6CtwSIz5xu
 z4VpFD/mpodIRVxTiMNNgTyCuxYLQcBoRK44h0olRpwjoTLbmUyNBoDKRkswDUiz3M4i
 +AQdZiwFfaIGZP+uL+meN59fOGHu8ujIn1KkDFv7uLw+WY0c9pD8Ll6dEKymlzf6vTMQ
 PQpxs6CStX85QxmqNlHCg3kFsEmkWP6K5B675trepdjvpMMsZ8T3rSPOtV9YC13VZ3AH
 51U1HprsjXRv/9HDqeYqPfaDbs0JxUkgy1Xt5QniJ1MjIdOGGydSvGDDiA+tGsVD8er0
 5xgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=XE/CNhhJZ18cnKkSu4xYjD7OM6uQ6hC9Q7Mh/l738ac=;
 b=JGfmzJZvWI9pcAn5svibWcm3o2CLWhPiYch4nQnU3geE7xa4vLTubyf5aG3BLxKjPp
 Z39byF5In4tu0j5S9IvSL03W2dS1paXQqGg2OIgohtDuWmNKyARqCIJMcz3J2sw/L4Uy
 keqX3MAcfr1QArQt1HtASHG3j9RT1sOeDQg6ddOw6YzQZ4Tv6a0TDjblBfxljIyQuBIo
 htYbKLdBO862Vo+L5L2lKSKkcB6P44IBzTdS5PoKuwmQSnrSNSCNPKUH2vJsLX1ZFlW/
 lORhqYxPiGm52BZmolHdBH80qR0k2fty54m5nIflCmMDqlSZdp7TYTfHujXFkZhPBfDT
 tQDQ==
X-Gm-Message-State: AOAM533WiJgQfphzM+LaK/mdBIYEuPQHTyFh2Gr071pjBH+c1FT6Z0Bw
 PL9ZgEiEB8EwbndY++ZpKl0=
X-Google-Smtp-Source: ABdhPJxxsHZBvl7G7kCeInH6BrgLM53zZR8RziNuMv3wLr+sR7WKLvO5noKUkkS9J/HEpsf10JJ67A==
X-Received: by 2002:a65:6459:: with SMTP id s25mr1395320pgv.329.1590504896843; 
 Tue, 26 May 2020 07:54:56 -0700 (PDT)
Received: from xebrium.com ([182.70.106.85])
 by smtp.gmail.com with ESMTPSA id q100sm84732pjc.11.2020.05.26.07.54.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 26 May 2020 07:54:56 -0700 (PDT)
Date: Tue, 26 May 2020 20:24:50 +0530
From: GAURAV PATHAK <gauravpathak129@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200526145448.GA5197@xebrium.com>
References: <20200524113613.GA19734@xebrium.com> <20200526141346.GV30374@kadam>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200526141346.GV30374@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 26, 2020 at 05:13:46PM +0300, Dan Carpenter wrote:
> Your subject doesn't use the correct patch prefix please use.
> 
> [PATCH] Staging: comedi: dt2814: remove unused assignments
> 
> Please resend a v2.
> 
> Correct the references to Sparse as well like Luc said.
> 
> regards,
> dan carpenter
> 

Hello Dan,
Thank you for reviewing and suggesting changes. I have modified the
patch and attached it with the e-mail to keep this thread conversation.
I hope I have made the changes correctly.

Thanks,
Gaurav

--mYCpIKhGyMATD0i+
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="0001-Staging-comedi-dt2814-remove-unused-assignments.patch"
Content-Transfer-Encoding: 8bit

From ef4a63e66fc09052c4cad808755d1142a9af7011 Mon Sep 17 00:00:00 2001
From: Gaurav Pathak <gauravpathak129@gmail.com>
Date: Sun, 24 May 2020 17:06:16 +0530
Subject: [PATCH v2] Staging: comedi: dt2814: remove unused assignments
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Silence following compiler warning:
drivers/staging/comedi/drivers/dt2814.c: In function ‘dt2814_interrupt’:
drivers/staging/comedi/drivers/dt2814.c:193:6: warning: variable ‘data’ set but not used [-Wunused-but-set-variable]
  int data;
      ^~~~
drivers/staging/comedi/drivers/dt2814.c: In function ‘dt2814_attach’:
drivers/staging/comedi/drivers/dt2814.c:232:6: warning: variable ‘i’ set but not used [-Wunused-but-set-variable]
  int i;
      ^

Signed-off-by: Gaurav Pathak <gauravpathak129@gmail.com>
---
 drivers/staging/comedi/drivers/dt2814.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index d2c715737361..eea587d63e18 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -186,22 +186,15 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 
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
-
 	if (!(--devpriv->ntrig)) {
 		int i;
 
@@ -229,7 +222,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	struct dt2814_private *devpriv;
 	struct comedi_subdevice *s;
 	int ret;
-	int i;
 
 	ret = comedi_request_region(dev, it->options[0], 0x2);
 	if (ret)
@@ -241,8 +233,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 		dev_err(dev->class_dev, "reset error (fatal)\n");
 		return -EIO;
 	}
-	i = inb(dev->iobase + DT2814_DATA);
-	i = inb(dev->iobase + DT2814_DATA);
 
 	if (it->options[1]) {
 		ret = request_irq(it->options[1], dt2814_interrupt, 0,
-- 
2.17.1


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--mYCpIKhGyMATD0i+--
