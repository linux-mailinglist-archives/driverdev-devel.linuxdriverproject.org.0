Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C71EF214D2B
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 16:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6621E8814C;
	Sun,  5 Jul 2020 14:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l8BK74qIEEbm; Sun,  5 Jul 2020 14:36:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7188D88139;
	Sun,  5 Jul 2020 14:36:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FEC41BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CA6888139
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-N2vlDVPDUn
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B53D388134
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:14 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id w34so7125292qte.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 07:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jwASpbB1DTLrYdgv6wFehe1UPCW9rKBYvmElNIR/p+k=;
 b=o38o8/pXu8yE8JZpv5TUlwRF9gjx0f9XseM3jspi5fhaBynyOiGxT1CgtY/AkEBb2/
 gA2VrLhb4D0b3xaK1NiLlVynA1+SEewjhFMmSdCzX+Q6pxXRb9tpq1SiJUI0AE1YskNF
 FzazdzseVtapTVJ6O05QRKaC5MgOnlfJuZdzfUR2hxL30ADHjr5/chevI/bDv8jGg2Up
 13kKXCTwrYX3TKCrBvzNxAR+orO93LpfQbs3YBbz/r2PoAjtSx/FmRWCJgJ0cm88SwKL
 1mAl8WY6IeoX+OMPyPXezysgeVI2Y5jEZvb6PAqBcEu4cg9pnfJ0BLfZncChZqIE62i0
 oo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jwASpbB1DTLrYdgv6wFehe1UPCW9rKBYvmElNIR/p+k=;
 b=Mr8q86iYMOtN89Fm6PWVGI7s+n36lnRi4Q9f3qmq1xA/JMhoERutV6busNGzfwYp2m
 xhzimI713xqSu+DFYjW4egKZ5/rBeNQPvZuh7K/rUK2EwIfzloH+CRdIRnBCjOm+J1sI
 W8YxDqL4mrnVpdGUGKIOWfxzS7lBi/s13qhJK09K46f/TLfwnDVJtNYQo2NH7NS3m9o8
 627jzLUaja7zNNmzJhUFbaDZOYY5gTlSTAtS7WvrXDhx75X2O23mI/sW9h5nkl2QdLj7
 v6Dmca+QyAuyq9sIW2reI/9WkaPMajllavJeRaolRgWBh7lA0TkFFwcCYLbTbVWnmtUu
 Q3NQ==
X-Gm-Message-State: AOAM5336yljiXrIEDxGdDVkC1HU2dasgBcwbH5+MMrO/m8oWiVGXKCyj
 ulC69WPxJlHVmTHj83Zx03s=
X-Google-Smtp-Source: ABdhPJw0XLzSxHF+qVMLbAwyrVFngwKDyjXKoqYKFv00XcLTIKMhpZgsMECSJ/A7oBHvLPSVv8r2Gw==
X-Received: by 2002:aed:22ef:: with SMTP id q44mr43073417qtc.333.1593959773769; 
 Sun, 05 Jul 2020 07:36:13 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 j198sm15903286qke.71.2020.07.05.07.36.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 07:36:13 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2 4/5] staging: rtl8712: Remove variable 'raw' from
 rtl871x_open_fw()
Date: Sun,  5 Jul 2020 11:35:51 -0300
Message-Id: <20200705143552.9368-5-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705143552.9368-1-mukadr@gmail.com>
References: <20200705143552.9368-1-mukadr@gmail.com>
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
