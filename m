Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCA9744D7
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA98687FF7;
	Thu, 25 Jul 2019 05:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjhOa+i2rLrl; Thu, 25 Jul 2019 05:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39CF987FC3;
	Thu, 25 Jul 2019 05:24:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 029B21BF418
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF96F816F3
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xluOV5D0v+JL for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:24:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59CDA815F5
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:24:13 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id m30so22120310pff.8
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1jfZq1FOFo4QVxtuZRFhhEkdyhRyd6fL37GMj8w8h1E=;
 b=eSdgeqwL1QdmkRGt48XbnFpBMgmWS/jYRHJVFwFX8/urXdnUcscnTyDwl21ViLcAzI
 6eDdglUFiTNopwDHgnnMYOWFJVNRdsNThRELFfVEg50b+3NOlzaJF3tw3E4SwdwoYEvu
 TR6A24xUOkD69saBhYmxJP79KYyua7U7x8kgqrIm2myyfFKaM2bQrNM/EZlosUPXQOKP
 0Udmbd313WAETX51lugcj8x7wduy+UuIUKfTW2KmqfqS/w1FAUlQAnri6wqml4LPz5SG
 01TlEJ/EEoxiqhSYI7ZM1G2sHMsDVc0bZx9w9Zy9JSGb92ik6nuGfWAcESJd3X3jUWRC
 5TYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1jfZq1FOFo4QVxtuZRFhhEkdyhRyd6fL37GMj8w8h1E=;
 b=mU0scF7RVLTaCMo/HmTFBmGAO6+oaX/CIIYrZBZAZAyorhUmn2vPe762XI3tXs1lxs
 FmE3F66m355JmJMjO2BwPZALbgQJOotscw1ga8vEhuhfBx/w/F5/CKXKZo/ePg1zVWGX
 OJ/tTRNVHT9mYpBo1Lesq6iebXhokLlM+ExMBYz9iueWToaAKavMpnE2igMVHfjF8xrp
 ITyfHl/vJkcRxW6kvkoVCIjqpJ9FlpQQpFDln+kCyH5wsP8MxQIKTFnDhsCcxihMITGi
 r0AVqIO13bd885qrksuCkGikpoRg2RLpFb/jRz1DTOyYjQFJ26tIzGuPIth90WZgJSXu
 47NA==
X-Gm-Message-State: APjAAAUwIZ3OpZp61Kt5HQOXtRvvDY0rNFA9XLpSWgxTvKydPiXXGWKF
 1XoBQ43Hxj3zN+CkbrIn6rA=
X-Google-Smtp-Source: APXvYqzk1Pr++BYdH3QBMnvnyLJDPayM88euQLet10FgjO1K+v4PsD3ClpPmw7xlLmA498myx7UP0Q==
X-Received: by 2002:a17:90a:1ae2:: with SMTP id
 p89mr86195380pjp.26.1564032253014; 
 Wed, 24 Jul 2019 22:24:13 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id k6sm57788243pfi.12.2019.07.24.22.24.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:24:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: daqboard2000: Remove function
 db2k_initialize_dac()
Date: Thu, 25 Jul 2019 10:53:59 +0530
Message-Id: <20190725052359.2308-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function db2k_initialize_dac as all it does is call
db2k_dac_disarm.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/comedi/drivers/daqboard2000.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/daqboard2000.c b/drivers/staging/comedi/drivers/daqboard2000.c
index aabcda3f9fc8..28603dfadce2 100644
--- a/drivers/staging/comedi/drivers/daqboard2000.c
+++ b/drivers/staging/comedi/drivers/daqboard2000.c
@@ -665,11 +665,6 @@ static void db2k_initialize_adc(struct comedi_device *dev)
 	db2k_initialize_tmrs(dev);
 }
 
-static void db2k_initialize_dac(struct comedi_device *dev)
-{
-	db2k_dac_disarm(dev);
-}
-
 static int db2k_8255_cb(struct comedi_device *dev, int dir, int port, int data,
 			unsigned long iobase)
 {
@@ -719,7 +714,7 @@ static int db2k_auto_attach(struct comedi_device *dev, unsigned long context)
 		return result;
 
 	db2k_initialize_adc(dev);
-	db2k_initialize_dac(dev);
+	db2k_dac_disarm(dev);
 
 	s = &dev->subdevices[0];
 	/* ai subdevice */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
