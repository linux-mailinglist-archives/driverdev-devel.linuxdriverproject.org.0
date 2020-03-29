Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 901B8196F8E
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 20:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 236888760E;
	Sun, 29 Mar 2020 18:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ylhi0iomPhg; Sun, 29 Mar 2020 18:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD8A1875FE;
	Sun, 29 Mar 2020 18:59:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CEF21BF286
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76BD38758D
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SimwMxA81L07 for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 18:59:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15EE9872F8
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 18:59:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585508336; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=NJvwbYoArOZPU6rafbF8JpIvZrGeK3kRioXWfbVlSxAHNehWBz4t/Yi3H5hQqo/NzmgeEdhlXdW8Z5dQN7jITxxyGaj5LL+Uqn3lUGUWSZCIY66FcQZbP5JvJA6+hx+eVx/Ls2dsXrp1ibgSZRKG1+6xO/TzarUNWURe2vvofWg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585508336;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=7DvZkxLZ70mjObufKOe6TKBBo3hEmLVhmgA1puv8dqI=; 
 b=SwKtbiSfnOfyiV9W/ShFfnzJQxsg/dsEQGXtjIhfcE+C5wS8d/KWfGdPTB6GVoJCAUn4Vvv9ma+587MsMY+QrKIu15wWdJvk2Fxssgnffh8wu4ooEG1P+eV/XcyZ5ThO9afCiYd9hAM3vT/WeVwfF13cAafvJ9JJw5R4FwS0T4Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585508336; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=7DvZkxLZ70mjObufKOe6TKBBo3hEmLVhmgA1puv8dqI=;
 b=AV89a6qOmz+kzuDIJ/c18igCjGxMcKST2GxFf45LgGDayXk4TXy0QaFqtZXI1BwC
 wVXfqpTECXkrBYUOxi8UnGkfWkpFBVJfSY/Zw0f/QKxfW+cJ9KbgesHBJpg34iiBf42
 0cKLBUWkABcLZ40iNGh1EHDI3IH/IMrPPXX9vc3Y=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585508335002985.4646076988523;
 Sun, 29 Mar 2020 11:58:55 -0700 (PDT)
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <ddd296c34c5b0206dfe5cf2e6cbe40e0a118c257.1585508171.git.aiman.najjar@hurranet.com>
Subject: [PATCH v3 3/5] staging: rtl8712: fix checkpatch warnings
Date: Sun, 29 Mar 2020 14:57:45 -0400
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585508171.git.aiman.najjar@hurranet.com>
References: <cover.1585508171.git.aiman.najjar@hurranet.com>
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: Joe Perches <joe@perches.com>, Aiman Najjar <aiman.najjar@hurranet.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes multiline dereference warnings in
rtl871x_xmit.c:

WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrptxmickey'
379: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:379:
+					psecuritypriv->
+					XGrptxmickey[psecuritypriv->

WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrpKeyid'
380: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:380:
+					XGrptxmickey[psecuritypriv->
+					XGrpKeyid].skey);

Signed-off-by: Aiman Najjar <aiman.najjar@hurranet.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 454c26f83406..0f789c821552 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -351,7 +351,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
 	struct	sta_info *stainfo;
 	struct	qos_priv *pqospriv = &(padapter->mlmepriv.qospriv);
 	struct	pkt_attrib  *pattrib = &pxmitframe->attrib;
-	struct	security_priv *psecuritypriv = &padapter->securitypriv;
+	struct	security_priv *psecpriv = &padapter->securitypriv;
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
 	bool bmcst = is_multicast_ether_addr(pattrib->ra);
@@ -369,15 +369,14 @@ static int xmitframe_addmic(struct _adapter *padapter,
 					   0x0, 0x0};
 			pframe = pxmitframe->buf_addr + TXDESC_OFFSET;
 			if (bmcst) {
-				if (!memcmp(psecuritypriv->XGrptxmickey
-				   [psecuritypriv->XGrpKeyid].skey,
+				if (!memcmp(psecpriv->XGrptxmickey
+				   [psecpriv->XGrpKeyid].skey,
 				   null_key, 16))
 					return -ENOMEM;
 				/*start to calculate the mic code*/
 				r8712_secmicsetkey(&micdata,
-					 psecuritypriv->
-					 XGrptxmickey[psecuritypriv->
-					XGrpKeyid].skey);
+					psecpriv->XGrptxmickey
+					[psecpriv->XGrpKeyid].skey);
 			} else {
 				if (!memcmp(&stainfo->tkiptxmickey.skey[0],
 					    null_key, 16))
@@ -417,7 +416,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
 					length = pattrib->last_txcmdsz -
 						  pattrib->hdrlen -
 						  pattrib->iv_len -
-						  ((psecuritypriv->sw_encrypt)
+						  ((psecpriv->sw_encrypt)
 						  ? pattrib->icv_len : 0);
 					r8712_secmicappend(&micdata, payload,
 							   length);
@@ -425,7 +424,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
 				} else {
 					length = pxmitpriv->frag_len -
 					    pattrib->hdrlen - pattrib->iv_len -
-					    ((psecuritypriv->sw_encrypt) ?
+					    ((psecpriv->sw_encrypt) ?
 					    pattrib->icv_len : 0);
 					r8712_secmicappend(&micdata, payload,
 							   length);
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
