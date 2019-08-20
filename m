Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFCE96DE8
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:50:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A33B877F2;
	Tue, 20 Aug 2019 23:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O0hd63QrrWz2; Tue, 20 Aug 2019 23:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BBD4877D0;
	Tue, 20 Aug 2019 23:50:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 589E11BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 53787877D0
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxcVr2TedG-T for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:49:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B84DE877BA
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:49:58 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id b24so160369pfp.1
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 16:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ehuber-info.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GIkpq1c6BlvEw/mN5Qe05vcLWHU+ZqjYPeSh4gEDjb0=;
 b=ZsW5larcgovgh/9VLjPyqNP+AOtD9GFF4+SHe6hFkVTC1M53Tw6c4lpqTcVVcslRkl
 hCbCLJWedALjBuwJ0WW9fJI1AO8GlHcdhyS8tIuTuO0VZwUKObWV5J7e0KAPmErtOp13
 lXnBjeNL6vjisSzbEPllbvyzkKvl6LZ2BrISXhrM4ozWBT/YRAeYFYFOduoZrBiSbRhN
 jpKNB2AdCUgc/rq951SOLWXr3wFCBX/gk8KeTLg1IfPBRtVypPaLjkXgReogaZ4bUKCb
 SQCNVl5W0Usgqimi/05xdFu1hK2TMGs2lH44oYXAVgN+z87Mh8TvIvJECyQUqaa3dhAT
 XEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GIkpq1c6BlvEw/mN5Qe05vcLWHU+ZqjYPeSh4gEDjb0=;
 b=ts/j45q33w7X/qpamqLBIwIWZTNblJc3Xd6h8av4XmOOvIp5qM70a2df5dvvpcSiDU
 n0jSsddvzygnkHVdaUTR2auPTSx1VrxPu5dsIy+fu+k6gAEDsd8g903Fe+j8WjSnBgVt
 ZvLzpIBpL9kjZVpx5RYm2SV88ZUgfJ8W4ufmXJ/GOahjIeVZz6BeZc+PM585tQwgWxQY
 wSur0EJBx4Asg40rd07lYqV35hymUXjehq/5ZhipYl//OYMzOzzvo/ArRtMhQ6osfATJ
 CG0PIJKqzqMI9BqaIr9KJ8z6V+6fJXtsVN2ztRlTXkOfgF5rBBRTEHlqbTVZabbJDSHt
 jfXQ==
X-Gm-Message-State: APjAAAXqHL1FjZ8X2VAMuc1Wj0iJNwybhXEdEsGoNrcTEdC+jxA1Rt82
 pzP6LDCJKDZkQwKkOpRgKqs1lg==
X-Google-Smtp-Source: APXvYqzI1+TtskjgLhE7SBJYCkMDsqrFaLchjuj51+3uYtqTPx/b1tacnwPTYMP8dUZzilJ+kTYRxQ==
X-Received: by 2002:a17:90a:35a7:: with SMTP id
 r36mr2527232pjb.17.1566344589513; 
 Tue, 20 Aug 2019 16:43:09 -0700 (PDT)
Received: from ip-172-31-5-250.us-west-1.compute.internal
 (ec2-52-53-212-143.us-west-1.compute.amazonaws.com. [52.53.212.143])
 by smtp.gmail.com with ESMTPSA id b14sm21249511pfo.15.2019.08.20.16.43.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 16:43:08 -0700 (PDT)
From: me@ehuber.info
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] comedi: remove camelcase
Date: Tue, 20 Aug 2019 23:43:06 +0000
Message-Id: <20190820234307.5234-2-me@ehuber.info>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190820234307.5234-1-me@ehuber.info>
References: <20190820234307.5234-1-me@ehuber.info>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Edmund Huber <me@ehuber.info>

---
 drivers/staging/comedi/drivers/ni_pcimio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_pcimio.c b/drivers/staging/comedi/drivers/ni_pcimio.c
index 14b26fffe..e2e64e234 100644
--- a/drivers/staging/comedi/drivers/ni_pcimio.c
+++ b/drivers/staging/comedi/drivers/ni_pcimio.c
@@ -1212,7 +1212,7 @@ static void m_series_init_eeprom_buffer(struct comedi_device *dev)
 	struct ni_private *devpriv = dev->private;
 	struct mite *mite = devpriv->mite;
 	resource_size_t daq_phys_addr;
-	static const int Start_Cal_EEPROM = 0x400;
+	static const int start_cal_eeprom = 0x400;
 	static const unsigned int window_size = 10;
 	unsigned int old_iodwbsr_bits;
 	unsigned int old_iodwbsr1_bits;
@@ -1232,7 +1232,7 @@ static void m_series_init_eeprom_buffer(struct comedi_device *dev)
 	writel(0xf, mite->mmio + 0x30);
 
 	for (i = 0; i < M_SERIES_EEPROM_SIZE; ++i)
-		devpriv->eeprom_buffer[i] = ni_readb(dev, Start_Cal_EEPROM + i);
+		devpriv->eeprom_buffer[i] = ni_readb(dev, start_cal_eeprom + i);
 
 	writel(old_iodwbsr1_bits, mite->mmio + MITE_IODWBSR_1);
 	writel(old_iodwbsr_bits, mite->mmio + MITE_IODWBSR);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
