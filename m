Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49977196759
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 17:31:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD80887C5A;
	Sat, 28 Mar 2020 16:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2MCld7CZbMX; Sat, 28 Mar 2020 16:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D986287770;
	Sat, 28 Mar 2020 16:31:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EF251BF2C9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B60D86AEB
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQAPtDZrIO2c for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 16:31:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA30D86AE8
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 16:31:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585413080; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=W8oA9fOJi/XAIOJXU6XhAyHxr+wYaLsPw5sqqNaUZ85vvAOcu+Vj1vQ56z8qgf15AutCSn3AOhuapy1dLorr2xOBaDdIcvxn5smXB1Q2S8FI4eabYOtyUNCfvIjBu8/Y9c0Vuoqsgm7M4LDev224eDvNIZDKndvfTWh/3pfQVHw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585413080;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=r30IA0SFgRRCtxKTYYUNcQWC2l66w/oo3k+pQSUmJ44=; 
 b=hqlUmF+mlkYuQNil8qHfDMXPskka4IhbIf6PxYV77GcBXnx/nI4uBvdzyYt8zGvKKb83KIokgA+nZqVbe/uA65b64qE1ow4ulttTporgK/6u1cMfeK3zOMQL7wziD2g0jdhEU/fpamOuWK23l6EKEUxYv4JXg6esN5PHota1aaE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585413080; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=r30IA0SFgRRCtxKTYYUNcQWC2l66w/oo3k+pQSUmJ44=;
 b=lMNEFSThqOmxkh/7xYvh3tfmsfKvmwVq5jGOjvkUzYEYJRDvVqeYhwU0uMFfRQ0Q
 apEp8fHbVDn9G1bkMnxV+VHqNtSJXd+zlfqIKh8k1723MsvWRwu21Xe6KD3rjLEN3Fu
 bTnF9vDpO1EJp35+7VjOQdW4WUXKbhzjOViBeuuY=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585413078092311.25906734376474;
 Sat, 28 Mar 2020 09:31:18 -0700 (PDT)
From: aimannajjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <e31645933cc807d61d29c392bfd0dab8ea8b06b1.1585353747.git.aiman.najjar@hurranet.com>
Subject: [PATCH v2 5/5] staging: rtl8712:fix multiline derefernce warnings
Date: Fri, 27 Mar 2020 20:08:11 -0400
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

This patch fixes remaining checkpatch warnings
in rtl871x_xmit.c:

WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->PrivacyKeyIndex'
636: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:636:
+					      (u8)psecuritypriv->
+					      PrivacyKeyIndex);

WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrpKeyid'
643: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:643:
+						   (u8)psecuritypriv->
+						   XGrpKeyid);

WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrpKeyid'
652: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:652:
+						   (u8)psecuritypriv->
+						   XGrpKeyid);

Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 04da7b318340..82df5e26f8c8 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -589,7 +589,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	addr_t addr;
 	u8 *pframe, *mem_start, *ptxdesc;
 	struct sta_info		*psta;
-	struct security_priv	*psecuritypriv = &padapter->securitypriv;
+	struct security_priv	*psecpriv = &padapter->securitypriv;
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct xmit_priv	*pxmitpriv = &padapter->xmitpriv;
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
@@ -632,15 +632,13 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 				case _WEP40_:
 				case _WEP104_:
 					WEP_IV(pattrib->iv, psta->txpn,
-					       (u8)psecuritypriv->
-					       PrivacyKeyIndex);
+					       (u8)psecpriv->PrivacyKeyIndex);
 					break;
 				case _TKIP_:
 					if (bmcst)
 						TKIP_IV(pattrib->iv,
 						    psta->txpn,
-						    (u8)psecuritypriv->
-						    XGrpKeyid);
+						    (u8)psecpriv->XGrpKeyid);
 					else
 						TKIP_IV(pattrib->iv, psta->txpn,
 							0);
@@ -648,8 +646,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 				case _AES_:
 					if (bmcst)
 						AES_IV(pattrib->iv, psta->txpn,
-						    (u8)psecuritypriv->
-						    XGrpKeyid);
+						    (u8)psecpriv->XGrpKeyid);
 					else
 						AES_IV(pattrib->iv, psta->txpn,
 						       0);
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
