Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33EF196757
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 17:31:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F07088CA0;
	Sat, 28 Mar 2020 16:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id er5wyqSgI-X2; Sat, 28 Mar 2020 16:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D996C88A8B;
	Sat, 28 Mar 2020 16:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 057EF1BF2C9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 000C6878BE
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VR0PyRUCB9So for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 16:31:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A835687770
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 16:31:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585413076; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=cnx8OaaGkzeShYQvr1Bfy0emo7T0vMmwOpk6diPQlSRpKrA6jiWyHBG+l/jVElYTa68cCAvgoQcV61bLMbJkShMm2Nz0w7Ys0MGPjFRP9uz4wFvbMrxkD468jUdjT9ZYrmQh4A/WLoNZcFZAJYXgoUe//+rM7P3xyz3yc54AIXw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585413076;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=azjRAZNzzcNH5uYyNo5qC/RyD+3T2/aoWeeGRaG+3os=; 
 b=S7J8hnMQXFIO/FD0MmYKcbXtYf06SemL2tEDTKlpLkpef12gdEo5NZ3Xjq7F8OpTi/dXwGhCJYCRYIGdx22gvpGbvYvMUHQ8SrS2jZ42fxXD5jjaTlG1Nv8wvH4C7Agn5nRjpcumykE7ML4wYL8CMRuUC80AatTsXtEwyX3l5iM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585413076; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=azjRAZNzzcNH5uYyNo5qC/RyD+3T2/aoWeeGRaG+3os=;
 b=n6o0kRo3/5p73NnQRexeL8m4BnyGwEN04SrX5mGZCc6j0zEC5WxrV4rcLgUzui6x
 iOOcq9p1i2paRHGRbhUqTBeaTf2PKuznwxGWpQ91yMI3GZHys8YltXt+rzTw8FAg5Jg
 lBxeGqDlGsNCFQ/D2jlmidqJwSCexMKwqiycV+l0=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585413074138661.8008301567895;
 Sat, 28 Mar 2020 09:31:14 -0700 (PDT)
From: aimannajjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <beb6c8c826cdda751f29f985f2b5dedfd2f87914.1585353747.git.aiman.najjar@hurranet.com>
Subject: [PATCH v2 4/5] staging: rtl8712: fix multiline derefernce warning
Date: Fri, 27 Mar 2020 20:08:10 -0400
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

This patch fixes the following checkpatch warning in
rtl8712x_xmit.c:

WARNING: Avoid multiple line dereference - prefer 'psta->sta_xmitpriv.txseq_tid[pattrib->priority]'
544: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:544:
+				pattrib->seqnum = psta->sta_xmitpriv.
+						 txseq_tid[pattrib->priority];

Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 50 +++++++++++++-------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 0f789c821552..04da7b318340 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -469,7 +469,7 @@ static sint xmitframe_swencrypt(struct _adapter *padapter,
 }
 
 static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
-			struct pkt_attrib *pattrib)
+			struct pkt_attrib *pattr)
 {
 	u16 *qc;
 
@@ -479,70 +479,70 @@ static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 	__le16 *fctrl = &pwlanhdr->frame_ctl;
 
 	memset(hdr, 0, WLANHDR_OFFSET);
-	SetFrameSubType(fctrl, pattrib->subtype);
-	if (pattrib->subtype & WIFI_DATA_TYPE) {
+	SetFrameSubType(fctrl, pattr->subtype);
+	if (pattr->subtype & WIFI_DATA_TYPE) {
 		if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
 			/* to_ds = 1, fr_ds = 0; */
 			SetToDs(fctrl);
 			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
 				ETH_ALEN);
-			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
-			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
+			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
+			memcpy(pwlanhdr->addr3, pattr->dst, ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 			/* to_ds = 0, fr_ds = 1; */
 			SetFrDs(fctrl);
-			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
+			memcpy(pwlanhdr->addr1, pattr->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
 				ETH_ALEN);
-			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
+			memcpy(pwlanhdr->addr3, pattr->src, ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
 			   check_fwstate(pmlmepriv,
 					 WIFI_ADHOC_MASTER_STATE)) {
-			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
-			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
+			memcpy(pwlanhdr->addr1, pattr->dst, ETH_ALEN);
+			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
 				ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
-			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
-			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
+			memcpy(pwlanhdr->addr1, pattr->dst, ETH_ALEN);
+			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
 				ETH_ALEN);
 		} else {
 			return -EINVAL;
 		}
 
-		if (pattrib->encrypt)
+		if (pattr->encrypt)
 			SetPrivacy(fctrl);
 		if (pqospriv->qos_option) {
-			qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
-			if (pattrib->priority)
-				SetPriority(qc, pattrib->priority);
-			SetAckpolicy(qc, pattrib->ack_policy);
+			qc = (unsigned short *)(hdr + pattr->hdrlen - 2);
+			if (pattr->priority)
+				SetPriority(qc, pattr->priority);
+			SetAckpolicy(qc, pattr->ack_policy);
 		}
 		/* TODO: fill HT Control Field */
 		/* Update Seq Num will be handled by f/w */
 		{
 			struct sta_info *psta;
-			bool bmcst = is_multicast_ether_addr(pattrib->ra);
+			bool bmcst = is_multicast_ether_addr(pattr->ra);
 
-			if (pattrib->psta) {
-				psta = pattrib->psta;
+			if (pattr->psta) {
+				psta = pattr->psta;
 			} else {
 				if (bmcst)
 					psta = r8712_get_bcmc_stainfo(padapter);
 				else
 					psta =
 					 r8712_get_stainfo(&padapter->stapriv,
-					 pattrib->ra);
+					 pattr->ra);
 			}
 			if (psta) {
 				psta->sta_xmitpriv.txseq_tid
-						  [pattrib->priority]++;
-				psta->sta_xmitpriv.txseq_tid[pattrib->priority]
+						  [pattr->priority]++;
+				psta->sta_xmitpriv.txseq_tid[pattr->priority]
 						   &= 0xFFF;
-				pattrib->seqnum = psta->sta_xmitpriv.
-						  txseq_tid[pattrib->priority];
-				SetSeqNum(hdr, pattrib->seqnum);
+				pattr->seqnum =
+				  psta->sta_xmitpriv.txseq_tid[pattr->priority];
+				SetSeqNum(hdr, pattr->seqnum);
 			}
 		}
 	}
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
