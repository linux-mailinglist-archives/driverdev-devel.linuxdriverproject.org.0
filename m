Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6331495E1
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 14:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1293F8772C;
	Sat, 25 Jan 2020 13:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UnakO9NxQvp; Sat, 25 Jan 2020 13:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1E1E876A2;
	Sat, 25 Jan 2020 13:15:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67B2E1BF27F
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 13:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61AEB86CA7
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 13:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZk4wSEhKnkw for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 13:15:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 09C1B86CA5
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 13:15:42 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p14so2546780pfn.4
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 05:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3QVXWFxwGX7QiCNvy96Dga4mKxwmEj2CJq1V24a5GDQ=;
 b=utalDz0DtbPvdQB+fVEPFCD9uAV+diqbxtaE6nLAPAT4Rv551mgKHVL52z54ilOP+j
 4NdcGGy4Iu8oF+pQNUPDtS2yL8kLE8H3HxIniwYOhxp/9iBOjDanzLIe8WSpyQbuWuFv
 pQ1eFhZINDOMd9Y6XOi8/9/pWlyVR5D9FynQbAWlV1+2hE1YJqWkBT4hDHnastA81fhF
 M2KvZwldi1zv1Srpm9cUteUYxO5Ylxvd5WbQhVX3I4wZfePzgtz0LZmb16gUguApSH5B
 KKcGGB0tZHazknx1GB/9swxz927Sw3gZsZsQSpCirB9JeI8mUN3bxlxe1/GXAUNf6Snl
 5bBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3QVXWFxwGX7QiCNvy96Dga4mKxwmEj2CJq1V24a5GDQ=;
 b=FpDmp11omokDMBtB2tK/FKSEfswbL8EMOnf5jms1eGYaERujpSD67yDLydheq6IVmX
 san40l6eslwWyMBAXj0spr1J2H+ozEgpUNzXPu8M+ktsiu0InrUpZPjMrKMn50zC/1H/
 Rp5D5zyxW/roelUokYjwTVm3+QheYjiYlHLgCSW/QZba0/KBcKsHLNwbPak8sqdeZgjb
 U0jzgvSgf5LeNS22dkIYNdpOqyBh3pv30Ud4L5H/ZgOVgy5BulJ+8br7WlDT3aJogZBY
 /KrWFA+j6hKkVng3ETN6xN652SLT3aC1/74Q//3I1NJvi8jiXHTxiL4sRyzgwgy4qM85
 MDzQ==
X-Gm-Message-State: APjAAAXaqNTHCS6HsW/I50ErYqXo1B2wz9EfHzAMa2/kN4Y9USPbri5P
 9hQ6owNf/ykC8d4bwjjiVGE=
X-Google-Smtp-Source: APXvYqz8fKPgyFBdtF4tRUmTiUa5qf+2L3gDnSZV4kLyc14yiXiCILJRmIvrCRDA3OsHpTeJ+oOfyQ==
X-Received: by 2002:a63:34cc:: with SMTP id b195mr8099939pga.268.1579958141494; 
 Sat, 25 Jan 2020 05:15:41 -0800 (PST)
Received: from google.com ([123.201.163.7])
 by smtp.gmail.com with ESMTPSA id c34sm9859242pgc.61.2020.01.25.05.15.39
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 25 Jan 2020 05:15:41 -0800 (PST)
Date: Sat, 25 Jan 2020 18:45:35 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
 saurav.girepunje@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: drivers: fix condition with no effect
Message-ID: <20200125131535.GA4171@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (NetBSD/sparc64)
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
Cc: saurav.girepunje@hotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix warning reorted by coccicheck
WARNING: possible condition with no effect (if == else)

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
  drivers/staging/comedi/drivers/das1800.c | 6 ------
  1 file changed, 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index f16aa7e9..7ab72e8 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -1299,12 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
  			outb(DAC(i), dev->iobase + DAS1800_SELECT);
  			outw(0, dev->iobase + DAS1800_DAC);
  		}
-	} else if (board->id == DAS1800_ID_AO) {
-		/*
-		 * 'ao' boards have waveform analog outputs that are not
-		 * currently supported.
-		 */
-		s->type		= COMEDI_SUBD_UNUSED;
  	} else {
  		s->type		= COMEDI_SUBD_UNUSED;
  	}
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
