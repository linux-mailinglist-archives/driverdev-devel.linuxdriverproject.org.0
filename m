Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 433E3214949
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 02:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E98CF86D64;
	Sun,  5 Jul 2020 00:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3wIznSz2514; Sun,  5 Jul 2020 00:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBA8D86DD0;
	Sun,  5 Jul 2020 00:22:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4277F1BF8C7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A79586DF3
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id alrekXqB8ELT
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D998D86DD5
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:40 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id 6so1181344qtt.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 04 Jul 2020 17:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jwASpbB1DTLrYdgv6wFehe1UPCW9rKBYvmElNIR/p+k=;
 b=qWsuQGNKUI2aJJiqGVaGHD41YHacICEfoaRJY8EmAIXaTTwyLfF7NV5/FZU90VT04i
 iRIy2Q212o15sukKMKVS77ilrFFGHuuoenYqHG+/7Q0RAb8j66QgfxJLA8hkU0+6/Du0
 9pZXgjJUrrR0SpZXkA7rGkxTUMNh44mnYMQdd7xUTjK67bbPkrz3Uk2O+GNAn5IIUJ4+
 OgCxpgb6hrDbpMgDk6/jz+v/EoS5h4quTm5EXEe23iARTppnm5b9XQJFdKmI3X6HXkYQ
 +/vS64Js670bpSw18r0+uCVmApRkuSwnku9exedRTHNv3YXqbBIoHn0sfNUtMvFDTwoV
 jDuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jwASpbB1DTLrYdgv6wFehe1UPCW9rKBYvmElNIR/p+k=;
 b=giHIOL6MinSPRvaV7OIC8CjUskqRF+fWB+JqyeiB344i3WjLamB/iSf+0WwSyRDD1v
 eu12WbecIQuDI74TxQ9iYR1Ef5xHNaI60rX0mxWoaj8fZXBatBaiPAGmBZ9yXmKRflFH
 0vb6rwg/yo1OKrQXPRmR83/K1/5PP8KfyAcLOnhBxEEKGkSOzkx7FUA2QizkivaB5dxW
 VOci1F7nSxoZNcwsQroOLXKKmpJm76A1jePxvig9du8NR13ejkhTdZQRs0NvbUo90ToX
 eor7gG1OHnSP+2x9Nf3F4kM+6VMqQCi8XRb8lbfNRjGiPs/m4bODQKlCVkYqutocVPnz
 fI/Q==
X-Gm-Message-State: AOAM532+hDEOhW0bvtmiE/PoPS3ic13eOttZXH4E0JRRabaHj2v6trYZ
 KuVsfPbkhoOZSLi9Sa1Js10=
X-Google-Smtp-Source: ABdhPJynx2SJRILLFLrDivaLo67dNjmcsZsTPM+m4us+WcopbUrw5jg5SuUsYV9gDHosHKfX7Fpf1w==
X-Received: by 2002:ac8:fec:: with SMTP id f41mr40098544qtk.212.1593908559963; 
 Sat, 04 Jul 2020 17:22:39 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:1a4c:230b:91f2:972d])
 by smtp.gmail.com with ESMTPSA id v62sm10254072qkb.81.2020.07.04.17.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:22:39 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 4/5] staging: rtl8712: Remove variable 'raw' from
 rtl871x_open_fw()
Date: Sat,  4 Jul 2020 21:22:14 -0300
Message-Id: <20200705002215.17968-5-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705002215.17968-1-mukadr@gmail.com>
References: <20200705002215.17968-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove useless variable 'raw' from function rtl871x_open_fw()
making the code a bit easier to understand.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index d53efdfc9bf0..d7b30152d409 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -67,15 +67,13 @@ MODULE_FIRMWARE("rtlwifi/rtl8712u.bin");
 
 static u32 rtl871x_open_fw(struct _adapter *adapter, const u8 **mappedfw)
 {
-	const struct firmware **raw = &adapter->fw;
-
 	if (adapter->fw->size > 200000) {
 		dev_err(&adapter->pnetdev->dev, "r8172u: Badfw->size of %d\n",
 			(int)adapter->fw->size);
 		return 0;
 	}
-	*mappedfw = (*raw)->data;
-	return (*raw)->size;
+	*mappedfw = adapter->fw->data;
+	return adapter->fw->size;
 }
 
 static void fill_fwpriv(struct _adapter *adapter, struct fw_priv *fwpriv)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
