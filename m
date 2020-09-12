Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A73712678F3
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 10:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB593873D6;
	Sat, 12 Sep 2020 08:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6xOsa0vGF6x; Sat, 12 Sep 2020 08:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07BD487335;
	Sat, 12 Sep 2020 08:49:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EE211BF393
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 69D438780E
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z+kQvOwqc4pU for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 08:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A008A87807
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 08:49:31 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id i22so16586029eja.5
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 01:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jdgvmur4zZ45shy8MlKtlFT8bpQMj/q3VfHaj2WJNPE=;
 b=eDU5O/puhfGxnYze7xTkXajmPZf3EA56I+qWGnb8jHZRBEya/uIol/2yMjcO0pl6lR
 UFg0RuOko3bON5y5dmyXzvWrAVxsrR+S5b9Uip6KBoZAgeZI8PyTrxG23pHjdvLHkT1y
 0nmHW9ZYjs0nFF9x0jigf0Rpl8bb6giL5DTbF5jI8bMphBFjqpFW6s4Y2R9C/PBHme27
 rXdH6sePNa5DN2qalcm+ovBp9MwoFAL774MoR3jFewfFrlt7SHT/aDiVZpoKykpUHg7Q
 Ml7kIIsepbXXDMZ+DsGYihI5ZbdcAiRoaYY+2/oKGBKRFuSCHlzRS+3j4P3lJbkS7rFL
 r28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jdgvmur4zZ45shy8MlKtlFT8bpQMj/q3VfHaj2WJNPE=;
 b=fXZwb9Ec0/y8hw4G4//OBABYRA8/hgHABsjc4utU6OL2dE0QvA607Wc6C1ul0YZV+y
 T6qRITW8v7tQZn4EEMhZIHgQVnce1zI8CtAyt35c27fkmXhB3ecbhZiuyMv0jB2QaLEU
 JGsMWct3QaHm0tLuJSpBToHR/gwPyNu+uNDGu0MRUzrwSkDLr3tlTlg3Im2hixP0Yq3B
 8ZwVnKFlRnUATE3k8bXfbG9pKzuidV05joJY7yxeb+6UBEib9ulZssXxRKZftPBXtv1/
 bkmmezhjcPfUae+sidVtG8MOsrjAw/EJkYHqi8NMqpu0Hj7Pp/khGv9HAQa7gzCUs+4G
 k9hQ==
X-Gm-Message-State: AOAM532BafxzJej2Ft6E3Dqw7YrPSEGCUrJ0To2HpQvEQRylMVDFB8FV
 E/IWJ0Z9uSNY91ilZujBoto=
X-Google-Smtp-Source: ABdhPJzUwttHfYX1XD5UBc5FEBwkFlOIgJRwOQRm1RCTq4pLc5e4kkR4FYD0oBkRmdx1llR/HqAqdg==
X-Received: by 2002:a17:906:1e11:: with SMTP id
 g17mr5061731ejj.298.1599900570219; 
 Sat, 12 Sep 2020 01:49:30 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id s23sm4009598edt.10.2020.09.12.01.49.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Sep 2020 01:49:29 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: rtl8723bs: remove 5 GHz code
Date: Sat, 12 Sep 2020 10:45:20 +0200
Message-Id: <20200912084520.8383-5-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200912084520.8383-1-straube.linux@gmail.com>
References: <20200912084520.8383-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Acoording to the TODO code valid only for 5 GHz should be removed.

- find and remove remaining code valid only for 5 GHz. Most of the obvious
  ones have been removed, but things like channel > 14 still exist.

Remove code path only valid for channels > 14.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 31 +++++++------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index cad35ce0c21a..fdb5a6b51c03 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1754,26 +1754,17 @@ void update_wireless_mode(struct adapter *padapter)
 	if ((pmlmeinfo->HT_info_enable) && (pmlmeinfo->HT_caps_enable))
 		pmlmeinfo->HT_enable = 1;
 
-	if (pmlmeext->cur_channel > 14) {
-		if (pmlmeinfo->VHT_enable)
-			network_type = WIRELESS_11AC;
-		else if (pmlmeinfo->HT_enable)
-			network_type = WIRELESS_11_5N;
-
-		network_type |= WIRELESS_11A;
-	} else {
-		if (pmlmeinfo->VHT_enable)
-			network_type = WIRELESS_11AC;
-		else if (pmlmeinfo->HT_enable)
-			network_type = WIRELESS_11_24N;
-
-		if (cckratesonly_included(rate, ratelen))
-			network_type |= WIRELESS_11B;
-		else if (cckrates_included(rate, ratelen))
-			network_type |= WIRELESS_11BG;
-		else
-			network_type |= WIRELESS_11G;
-	}
+	if (pmlmeinfo->VHT_enable)
+		network_type = WIRELESS_11AC;
+	else if (pmlmeinfo->HT_enable)
+		network_type = WIRELESS_11_24N;
+
+	if (cckratesonly_included(rate, ratelen))
+		network_type |= WIRELESS_11B;
+	else if (cckrates_included(rate, ratelen))
+		network_type |= WIRELESS_11BG;
+	else
+		network_type |= WIRELESS_11G;
 
 	pmlmeext->cur_wireless_mode = network_type & padapter->registrypriv.wireless_mode;
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
