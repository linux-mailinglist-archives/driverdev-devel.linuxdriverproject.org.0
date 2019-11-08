Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B66CF5BE6
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Nov 2019 00:38:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F14A28808D;
	Fri,  8 Nov 2019 23:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agtd+SozJmYQ; Fri,  8 Nov 2019 23:38:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E18D88007;
	Fri,  8 Nov 2019 23:38:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C6BF1BF863
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 23:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8200E88007
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 23:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7BpE5QXrd6p for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 23:38:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A11A287F84
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 23:38:50 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q130so7872026wme.2
 for <devel@driverdev.osuosl.org>; Fri, 08 Nov 2019 15:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+UKZTvPDWmsHFC7K6+7vln2Krr8NV+4r5IwFH4/g7iA=;
 b=SLXL7KbNgDVWhIt3g0CLKrweVuiQ2tecOMwO8rpkUBsBovmz2I8ATstZ1uqNx4rblY
 hQigefWrU//HnYrpiiAO22weqURFrH1sh3YkIGX0i9zpUpjydHkHqjojHrTBh0STRuno
 dgr0iglDwlLQZX+EEtmXT/6ros3pGxxWdH2bg/160JXeMLoyUUbyUt02e9D4Gqc63ttv
 zAjf+1AzUXbp/0XeFajdpDl1EzpEYEOjZnS1nxhP3Ra809Q2Inqfl0lZwZ/OFcytivrA
 M8Sv4/5gTCIlA3lYWu6uf8s0orsr3yg4oXP2jEj0Ub5RsJFquHQzYKLyPycTCaME45sf
 tiEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+UKZTvPDWmsHFC7K6+7vln2Krr8NV+4r5IwFH4/g7iA=;
 b=mRHeuU4sMm7C/8Jj5EU2CEu37Iu1Vv+vIsbYFwhTIpwaTvuhouIjt98yAa2seYOGwF
 teG4Ipbtxtt/35QLTrvytYV7Paq3bnbTepqXYS4KHltOxRx94KEX8HXVJPdSSEkZykOm
 Fwi36i0GkBX8sBDP1POIeExfFh/VRplwu4m7dTFasWgCllAATEO1N6zoT+DSuZTUqD5T
 LfKMyLt4cZSDuczmhvTwrGD3NivdEh6DAQTyt7PXGkDIaGBZZK6gHjQgX294wqq3u5yX
 z4gLgwvbFnUrmiimF2cWp8hsyxkdKkrHoYHSw6bz8dFYEvWUiUx+ijn9AjuetaqIXFW7
 UQiw==
X-Gm-Message-State: APjAAAVadggiDcaZYPK1J9mt2OzOTY88azVX88GZoEWZH0c0C9zfMAZK
 lEQxPHiG63bodEg10K5z4w==
X-Google-Smtp-Source: APXvYqzd6juKIlk88s6VVET1mp/VJ/opCbhwxL9kotGmWN5WNnELx+KCZuoqjKq8WrcMme3AAc79qQ==
X-Received: by 2002:a1c:808d:: with SMTP id b135mr9989900wmd.175.1573256328772; 
 Fri, 08 Nov 2019 15:38:48 -0800 (PST)
Received: from ninjahub.org.net ([94.119.64.34])
 by smtp.googlemail.com with ESMTPSA id t24sm11852431wra.55.2019.11.08.15.38.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 15:38:48 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: add gcc extension __force cast
Date: Fri,  8 Nov 2019 23:38:37 +0000
Message-Id: <20191108233837.33378-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, Boqun.Feng@microsoft.com,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add gcc extension __force and __le32 cast to fix warning issued by Sparse tool."warning: cast to restricted __le32"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index 0a9ca109039c..aa7b2dd691b9 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -72,7 +72,7 @@ static int wfx_counters_show(struct seq_file *seq, void *v)
 		return -EIO;
 
 #define PUT_COUNTER(name) \
-	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu(counters.count_##name))
+	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu((__force __le32)(counters.count_##name)))
 
 	PUT_COUNTER(tx_packets);
 	PUT_COUNTER(tx_multicast_frames);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
