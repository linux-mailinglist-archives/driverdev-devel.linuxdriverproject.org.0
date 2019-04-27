Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 785A6B3EA
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 18:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C30C38577A;
	Sat, 27 Apr 2019 16:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ckBE8t8CEifY; Sat, 27 Apr 2019 16:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A1A685495;
	Sat, 27 Apr 2019 16:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5EA81BF32D
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 16:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B292A865C2
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 16:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1sMRLWsxoERz for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 16:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 23E7685CA8
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 16:34:06 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id h26so5523133ioj.1
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 09:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XEvDpPUhRZq1dLEcwfgrpdw5Bqx40j/OhihVlJzo794=;
 b=XA0RhfXe0wftUHw2AzmePmRF1GUeiky6OfulKPNLYdpW7HhiRN4jkF6bYsbfaYbA8S
 8O/P33bxVoUk31zZ2nZ39qPGNU5Ibgx90mqcxE4mWi15cE570m8z1eQxlqsk9KArwt+h
 89qkQ/T8oFvFfOFKiSAyNrt73sIiD9cw+XiEz/RnuLZAiiAvIvQbIv1MIIDrxg1IBKoV
 4xDjOb7c0TlNNUbk0DUkCqTrIR2enEJAHBw7RHYthzZmUyLp4ygemcUH8VmHbrD8MGj+
 k7NMQmWsyth0pkTFt2jDzxTKXZT3ah4sgDHpr6extxuiow9FEA0dvFZQtk8M9ZeOP+6z
 QaMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XEvDpPUhRZq1dLEcwfgrpdw5Bqx40j/OhihVlJzo794=;
 b=j7ccoNtib2uxhJURpFX3imqL6V4y51ZNbVGiSxGUbjpijQ07TWqQ4JhWMp20tSXjSl
 fL2evA+GN/dg1A4KDtK2XPKWTNWoojI28urHMOYHr328I3OONUTIa1nGd8fmRCsRc5Y5
 cAPZxdWE08q5YTkgbRYYANWqBEcUR320R8dx4AkOx/uh++qV4m2JpMs5MDwYR5QgOwL+
 X2Z1qdmr3FwxXiGNfeVV4blY1bUGvJkCEoi+OJsUJRznRRtOK8+ZAaox9t8GgJOMtOMC
 Z4S0YMqaOZc4f9vrJkGPzAq8jAx31Du9Gs/t0/svUg07u6/oCSVXyXmxWIE/P3G/dDB6
 Hrew==
X-Gm-Message-State: APjAAAUVbt0POntiJDpfeb4WthZRfRxdS9g2TeOUJbSaEqIDTFzqwLp0
 LVtUlLQ47BzOevvMx8kDoO8=
X-Google-Smtp-Source: APXvYqwbHJI7m792lzw+7MV7zVXopqousiFs9iR5NQkQAUbNwEXONOfjgk5bFmmS2Hom81KafuR+ug==
X-Received: by 2002:a6b:ba57:: with SMTP id k84mr26041475iof.211.1556382845471; 
 Sat, 27 Apr 2019 09:34:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-243-191-173.hsd1.co.comcast.net.
 [73.243.191.173])
 by smtp.gmail.com with ESMTPSA id p67sm13781876itb.11.2019.04.27.09.34.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 09:34:04 -0700 (PDT)
From: Kelsey Skunberg <skunberg.kelsey@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 gregkh@linuxfoundation.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: sm750fb: Change *array into *const array
Date: Sat, 27 Apr 2019 10:33:34 -0600
Message-Id: <20190427163334.7109-1-skunberg.kelsey@gmail.com>
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
Cc: Kelsey Skunberg <skunberg.kelsey@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolve checkpatch warning for static const char * array by using const
pointers.

Checkpatch Warning in sm750.c:
static const char * array should probably be static const char * const

Signed-off-by: Kelsey Skunberg <skunberg.kelsey@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 105089b97bf5..59568d18ce23 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -748,7 +748,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 		lynx750_ext, NULL, vesa_modes,
 	};
 	int cdb[] = {ARRAY_SIZE(lynx750_ext), 0, VESA_MODEDB_SIZE};
-	static const char *mdb_desc[] = {
+	static const char * const mdb_desc[] = {
 		"driver prepared modes",
 		"kernel prepared default modedb",
 		"kernel HELPERS prepared vesa_modes",
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
