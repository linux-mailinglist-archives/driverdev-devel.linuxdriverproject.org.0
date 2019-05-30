Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BDA30390
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12137203D9;
	Thu, 30 May 2019 20:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nh31p5jUDTkY; Thu, 30 May 2019 20:51:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB9FF203B4;
	Thu, 30 May 2019 20:51:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9649B1BF365
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90381203CC
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EERR7RZkxZvc for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:51:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id EBF7D203B4
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:51:46 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a23so4717741pff.4
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 13:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4p2pASPNTAfiZ2UGXZOOvTXaN4TIzU1kzFvlDzWyh4w=;
 b=Ni/WNUHTuyqczU++5ixUXILm5THuCZ0EU475OoqawLzRURm2VKfLiGV+pFUl8Ntrgs
 blCgw/LresMWuR97rTJ1HS8RCIy6c//cbOAPyd256w6XNodlQnc5hsxLxscadQ/Youo0
 TGMGSMRCWai2bCsS/iak91jtqyV6sGg2Fvjtrb2tSRqayjNKRzDZpS7DmZg7o60MriLZ
 xfoHQWgk0OJga2kACCQHlOLyl2mMus3xz7/EFHg0hdjWSPM2Pifo+TCIOSJaAdOsxkNW
 DNwptNA7+YgW8aSu5mx0aVgBhjc8k7SORjyfEfFZnS4fouDmkbYU0K6S/VcVDm/tTSwe
 iP7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4p2pASPNTAfiZ2UGXZOOvTXaN4TIzU1kzFvlDzWyh4w=;
 b=FcfdG1p3EV3dhTkOcd3o5GCetVpjITRgEgQWgEht7e1nuRtNBj8q4XmmKhD/xjs7pk
 zMw5gorHm1ZbixsblITOkKsIX7Q7xy++QGxDHmdo3X0tnDR/jHZ/N4kVlXbYbs2+MbDY
 dq0aEL0WSQJNnnmY1cSlAOfg/DkFUe5+DUiLWbIOw71KHEFidnvGFKKDBoDZgBCpoky+
 ZFNfA7isjIeOcSnBJWJtZehLdq260Dh5TQ0BeVIexmT7XCdON/5qW6fgT8aIk9jQnPPn
 U629ZmSb5cVRKfgXloaHy4XBBjcjSw7oZX+ti51M30bGV4t/lsUjJGDcIOV/fAipq+s+
 9qfQ==
X-Gm-Message-State: APjAAAVDMsPtotpCBWal78l4hPDaQETd6NNG5i43rjeFdc3AuJFhSJnn
 0DxsriTqOyg9eOgt7iaQvGR6/f4A
X-Google-Smtp-Source: APXvYqwWAiW85Itx+C8XPGlGH9S7NoFM53EicUlr+Frqg8EveM78IKun3DInNU0MYlp3eKgj2OpJcA==
X-Received: by 2002:a63:d504:: with SMTP id c4mr5381328pgg.20.1559249506701;
 Thu, 30 May 2019 13:51:46 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id r185sm3995248pfc.167.2019.05.30.13.51.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 13:51:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, olsonse@umich.edu, jkhasdev@gmail.com,
 giulio.benetti@micronovasrl.com, nishadkamdar@gmail.com,
 kas.sandesh@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: Remove variable runflags
Date: Fri, 31 May 2019 02:21:31 +0530
Message-Id: <20190530205131.29955-1-nishkadg.linux@gmail.com>
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

Remove variable runflags and use its value directly. Issue found with
checkpatch.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index f6d1287c7b83..b84ee9293903 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -676,16 +676,12 @@ EXPORT_SYMBOL_GPL(comedi_is_subdevice_running);
 
 static bool __comedi_is_subdevice_running(struct comedi_subdevice *s)
 {
-	unsigned int runflags = __comedi_get_subdevice_runflags(s);
-
-	return comedi_is_runflags_running(runflags);
+	return comedi_is_runflags_running(__comedi_get_subdevice_runflags(s));
 }
 
 bool comedi_can_auto_free_spriv(struct comedi_subdevice *s)
 {
-	unsigned int runflags = __comedi_get_subdevice_runflags(s);
-
-	return runflags & COMEDI_SRF_FREE_SPRIV;
+	return __comedi_get_subdevice_runflags(s) & COMEDI_SRF_FREE_SPRIV;
 }
 
 /**
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
