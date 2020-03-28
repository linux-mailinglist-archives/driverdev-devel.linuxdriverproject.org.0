Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884AF196755
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 17:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 053AD88C06;
	Sat, 28 Mar 2020 16:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qgtq2C2c6B8M; Sat, 28 Mar 2020 16:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F30F88A9E;
	Sat, 28 Mar 2020 16:31:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 046651BF2C9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0108B88AA9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vk8zZAgs4O2l for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 16:31:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 810E588A9E
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 16:31:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585413072; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=fBrAoAUiblJLmvNrWzx8Qola3brdppKlLIlWeRmwaggANdALblKRh9OcPvHpcvx1AYFRvMwhi+oyMjaF76u4enfr8WEGQFO6KJcd+6vt1GTShGhdAU+JzNy1Efl1PFtfaLzGuNKrgdvdN6OhYYqHGmYR7jgqNhP5BV2T6jIkUJw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585413072;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=7MjhWFY7QgmsWF9j7BMZskE0eKgnDKHQSHK8EK548Mk=; 
 b=bsN55FAwmFgL18bOmDHP4hRBauT2+P29TTGIuEqAQMVP8OfD+NOAXivVDO5KmHTULwGL4wrnaimx/Cqdn62r6b0FY2h9LkVIhZPFF4SsCzlVPB4xlvq3tNNfbyw86B9LNMDuJKZidV+myjbEDOmA84E0Ds1tfTJ3ZuZDnYYK2fg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585413072; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=7MjhWFY7QgmsWF9j7BMZskE0eKgnDKHQSHK8EK548Mk=;
 b=Ijdof/BUuylw/pv3YDzMpEqzB1b6LsDYG8/rloFMczOwoaWa0NQroRvhondYrFrB
 o6xXOHOXj+kXmkwHyTt1d0raw1ZuT6OI7S+K+ds/vw3CjVPkztyqV573XNUOZTrQrnM
 6nioOCfixVSaI2sYn+KqiXuXP3Gpt4d31aTbKzQA=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585413070732111.22818257289418;
 Sat, 28 Mar 2020 09:31:10 -0700 (PDT)
From: aimannajjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <1f14de8f1418df6de270b8b3d07793906db9ffee.1585353747.git.aiman.najjar@hurranet.com>
Subject: [PATCH v2 3/5] staging: rtl8712: fix checkpatch warnings
Date: Fri, 27 Mar 2020 20:08:09 -0400
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585353747.git.aiman.najjar@hurranet.com>
References: <20200327080429.GB1627562@kroah.com>
 <cover.1585353747.git.aiman.najjar@hurranet.com>
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
Cc: devel@driverdev.osuosl.org, aimannajjar <aiman.najjar@hurranet.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
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

Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
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
