Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D93196F90
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 20:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD1D58761E;
	Sun, 29 Mar 2020 18:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTFSGa1mUGDs; Sun, 29 Mar 2020 18:59:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C26CD872F8;
	Sun, 29 Mar 2020 18:59:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE1D61BF286
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA69F20198
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id my06Gnif4pn3 for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 18:59:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by silver.osuosl.org (Postfix) with ESMTPS id B160920104
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 18:59:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585508340; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=eqhdibtFvn3qt2Eb++DEvnmy4c+vluwIlqMi35NdykSlyl0Nz5F6R5xyXdXR4yq6Q1gAIfoDjPmQXWe1epHrYDTKBDtXb1c52sUwCOIFSYGJgFTqnAA+qbvo41CwS0oLtbvc2BV3DzkGdrRGj1hZx3ch02ovD5fDdRFHeNZnHiw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585508340;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=MuiLiAsrA5upVzkJTPsQoyFumgH4t0lXkV3qC5Ts/8I=; 
 b=cfL2dzhj2NhoGonxnCyLviBuweGcZMLoikEauRsx5K6zZ5lbiG7t4weEAmZta1HCyh3CPbjbbRKe3ctZyyDIS6b/YYMs35phkrMpbcUHT1qzTmA/XRBFx7A1cjM+J6XniPzVN5OjdN/C4rsxvD7ZtF6x5msKvmwrz2G/uIkVRJo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585508340; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=MuiLiAsrA5upVzkJTPsQoyFumgH4t0lXkV3qC5Ts/8I=;
 b=UfZUyxH+UiH9C/xRm5HdM4ypKq8swoO16sHdFuLkg07DYRG5t/Ir6bGeuC5TCj03
 TJnCheWa+yfQ4v5m4O6H3effAqKpWbxOA2de3h4VV4fSr5hAeZfLoB/rc78uBg8NFoV
 ODOuty420Mnd8zUkj5S/VBUx4ufMIuPlz4caPJK8=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585508338369107.26816775653185;
 Sun, 29 Mar 2020 11:58:58 -0700 (PDT)
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <275773a0379e4a03839cd832d2ed952fd7bfee48.1585508171.git.aiman.najjar@hurranet.com>
Subject: [PATCH v3 4/5] staging:rtl8712: code improvements to make_wlanhdr
Date: Sun, 29 Mar 2020 14:57:46 -0400
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

1. Refactor make_wlanhdr to improve code style.
2. Use ether_addr_copy instead of memcpy to copy addresses.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Aiman Najjar <aiman.najjar@hurranet.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 123 ++++++++++++-------------
 drivers/staging/rtl8712/rtl871x_xmit.h |   2 +-
 2 files changed, 61 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 0f789c821552..21026297413c 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -477,75 +477,72 @@ static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
 	__le16 *fctrl = &pwlanhdr->frame_ctl;
+	u8 *bssid;
 
 	memset(hdr, 0, WLANHDR_OFFSET);
 	SetFrameSubType(fctrl, pattrib->subtype);
-	if (pattrib->subtype & WIFI_DATA_TYPE) {
-		if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
-			/* to_ds = 1, fr_ds = 0; */
-			SetToDs(fctrl);
-			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
-				ETH_ALEN);
-			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
-			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
-		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
-			/* to_ds = 0, fr_ds = 1; */
-			SetFrDs(fctrl);
-			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
-			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
-				ETH_ALEN);
-			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
-		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
-			   check_fwstate(pmlmepriv,
-					 WIFI_ADHOC_MASTER_STATE)) {
-			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
-			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
-			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
-				ETH_ALEN);
-		} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
-			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
-			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
-			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
-				ETH_ALEN);
-		} else {
-			return -EINVAL;
-		}
+	if (!(pattrib->subtype & WIFI_DATA_TYPE))
+		return 0;
 
-		if (pattrib->encrypt)
-			SetPrivacy(fctrl);
-		if (pqospriv->qos_option) {
-			qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
-			if (pattrib->priority)
-				SetPriority(qc, pattrib->priority);
-			SetAckpolicy(qc, pattrib->ack_policy);
-		}
-		/* TODO: fill HT Control Field */
-		/* Update Seq Num will be handled by f/w */
-		{
-			struct sta_info *psta;
-			bool bmcst = is_multicast_ether_addr(pattrib->ra);
-
-			if (pattrib->psta) {
-				psta = pattrib->psta;
-			} else {
-				if (bmcst)
-					psta = r8712_get_bcmc_stainfo(padapter);
-				else
-					psta =
-					 r8712_get_stainfo(&padapter->stapriv,
-					 pattrib->ra);
-			}
-			if (psta) {
-				psta->sta_xmitpriv.txseq_tid
-						  [pattrib->priority]++;
-				psta->sta_xmitpriv.txseq_tid[pattrib->priority]
-						   &= 0xFFF;
-				pattrib->seqnum = psta->sta_xmitpriv.
-						  txseq_tid[pattrib->priority];
-				SetSeqNum(hdr, pattrib->seqnum);
-			}
+	bssid = get_bssid(pmlmepriv);
+
+	if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
+		/* to_ds = 1, fr_ds = 0; */
+		SetToDs(fctrl);
+		ether_addr_copy(pwlanhdr->addr1, bssid);
+		ether_addr_copy(pwlanhdr->addr2, pattrib->src);
+		ether_addr_copy(pwlanhdr->addr3, pattrib->dst);
+	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
+		/* to_ds = 0, fr_ds = 1; */
+		SetFrDs(fctrl);
+		ether_addr_copy(pwlanhdr->addr1, pattrib->dst);
+		ether_addr_copy(pwlanhdr->addr2, bssid);
+		ether_addr_copy(pwlanhdr->addr3, pattrib->src);
+	} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
+		   check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
+		ether_addr_copy(pwlanhdr->addr1, pattrib->dst);
+		ether_addr_copy(pwlanhdr->addr2, pattrib->src);
+		ether_addr_copy(pwlanhdr->addr3, bssid);
+	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
+		ether_addr_copy(pwlanhdr->addr1, pattrib->dst);
+		ether_addr_copy(pwlanhdr->addr2, pattrib->src);
+		ether_addr_copy(pwlanhdr->addr3, bssid);
+	} else {
+		return -EINVAL;
+	}
+
+	if (pattrib->encrypt)
+		SetPrivacy(fctrl);
+	if (pqospriv->qos_option) {
+		qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
+		if (pattrib->priority)
+			SetPriority(qc, pattrib->priority);
+		SetAckpolicy(qc, pattrib->ack_policy);
+	}
+	/* TODO: fill HT Control Field */
+	/* Update Seq Num will be handled by f/w */
+	{
+		struct sta_info *psta;
+		bool bmcst = is_multicast_ether_addr(pattrib->ra);
+
+		if (pattrib->psta)
+			psta = pattrib->psta;
+		else if (bmcst)
+			psta = r8712_get_bcmc_stainfo(padapter);
+		else
+			psta = r8712_get_stainfo(&padapter->stapriv,
+						 pattrib->ra);
+
+		if (psta) {
+			u16 *txtid = psta->sta_xmitpriv.txseq_tid;
+
+			txtid[pattrib->priority]++;
+			txtid[pattrib->priority] &= 0xFFF;
+			pattrib->seqnum = txtid[pattrib->priority];
+			SetSeqNum(hdr, pattrib->seqnum);
 		}
 	}
+
 	return 0;
 }
 
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index f227828094bf..c0c0c781fe17 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -115,7 +115,7 @@ struct pkt_attrib {
 	u8	icv_len;
 	unsigned char iv[8];
 	unsigned char icv[8];
-	u8	dst[ETH_ALEN];
+	u8	dst[ETH_ALEN] __aligned(2);	/* for ether_addr_copy */
 	u8	src[ETH_ALEN];
 	u8	ta[ETH_ALEN];
 	u8	ra[ETH_ALEN];
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
