Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FD3D805B
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 21:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC12022E89;
	Tue, 15 Oct 2019 19:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5rM5hb-BbrRF; Tue, 15 Oct 2019 19:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 91B2C22CC6;
	Tue, 15 Oct 2019 19:32:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F7D91BF309
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 19:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 385F920464
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 19:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0OzLvEhm3Ht4 for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 19:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B824F203E0
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 19:32:20 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z9so25241632wrl.11
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 12:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pka8MZciE1uXdvlPGsnSN2mfafkuH+B/p1WIBzC4Ucw=;
 b=SDsSL+4LynUfiX5Q5WLqJPRY1/eneAjTyWB1ipJUsrsIK4l91EPqjXHbjx2B/ENSjD
 9wCDPP6Am/vxS6lYevbV/gtVGHtu+Rz1uUe3YXQHeCyMaxI9hk1BKRhpFaJiGuxSGlL+
 OI59nmWpVZkgXPfzAhbOCV5azSJsusC9RKgZovVcZ89zKJ1cexnAoVlPHyd7SK02PwZI
 6cvdgbaDok61/i/PtWZSvzJrxRvnovpQ0apZ5an98thbte78QBEtmF56NBYuRo9V/Sif
 XLu/LU0IM80C2awIndFBtHL37BwoLCpcGbgDfCQ6A2bn3DInE9/Vz77rMHRhlgiOAj4S
 kDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pka8MZciE1uXdvlPGsnSN2mfafkuH+B/p1WIBzC4Ucw=;
 b=NnmpcHEi91bdAGTgCW3jtU97thKN4wLusVaPwdz3ryeWe/6gG6B2PYTFloGK7APjpF
 U/D16PaMcWEC+DZyKsDW8yYIpVjLVdxT2IOelX+KmMt03W90DMbMiRURmgGUjIywGgCz
 tSwMx+rKS98DpeLOrJ5oDnsXG6xsTcdqPbGIjdD6ZW+jv46wydTgyYbTT26W/BRBvziJ
 6Ewda/eqPirjmFOR8txVQuFEAOed1X4Mrs2mHacChH/pouAaBzFFYnNIS55u98kfaXJj
 YSvgOKNNBmc2lRQv0s6qhriR78t47jwOYdDgXmosMq4tUFpew5HEwZU+54RrowGnxSzv
 3Ejg==
X-Gm-Message-State: APjAAAXYWLg5sagCrfTeW+Q/FQwIRcxxtzdQMughg5Vhw8U2kCfYkscj
 CvkJI1yZ+tXobUDZQ3/m5ic=
X-Google-Smtp-Source: APXvYqwOG2BhIWkKve+GHAXVaPzespIOcqR4qXJxUaHrSxi1VC6m5L50gkmrJIoSrpBe4J6LAXgx9A==
X-Received: by 2002:a5d:4302:: with SMTP id h2mr22881854wrq.35.1571167939204; 
 Tue, 15 Oct 2019 12:32:19 -0700 (PDT)
Received: from debian (212-127-136-25.cable.dynamic.v4.ziggo.nl.
 [212.127.136.25])
 by smtp.gmail.com with ESMTPSA id l18sm24290823wrn.48.2019.10.15.12.32.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:32:18 -0700 (PDT)
From: Michiel Schuurmans <michielschuurmans@gmail.com>
To: 
Subject: [PATCH] [PATCH] staging: rtl8192e: Fix checkpatch errors
Date: Tue, 15 Oct 2019 21:32:08 +0200
Message-Id: <20191015193210.20146-1-michielschuurmans@gmail.com>
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
Cc: devel@driverdev.osuosl.org, michielschuurmans@gmail.com,
 Christina Quast <contact@christina-quast.de>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Zach Turner <turnerzdp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace formatting as suggested by checkpatch.

Signed-off-by: Michiel Schuurmans <michielschuurmans@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 0cbf4a1a326b..e7478a1c204e 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -218,7 +218,6 @@ static int rtllib_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	return 0;
 }
 
-
 static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 {
 	struct rtllib_ccmp_data *key = priv;
@@ -233,7 +232,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		return -1;
 	}
 
-	hdr = (struct rtllib_hdr_4addr *) skb->data;
+	hdr = (struct rtllib_hdr_4addr *)skb->data;
 	pos = skb->data + hdr_len;
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
@@ -278,7 +277,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		int aad_len, ret;
 
 		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
-		if(!req)
+		if (!req)
 			return -ENOMEM;
 
 		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
