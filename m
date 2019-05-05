Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B520913EF6
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 12:57:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7AA285D35;
	Sun,  5 May 2019 10:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OsUVDjtYUCaE; Sun,  5 May 2019 10:57:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72DFF85D3D;
	Sun,  5 May 2019 10:57:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF5531BF861
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 10:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9838232F2
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 10:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AufSJGdaIjDD for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 10:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E92C22735
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 10:56:57 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y2so11947961wmi.5
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 03:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U57G786HwXPbJb/Ib81QEy3uYz8PAurJDjRMK8xtUPQ=;
 b=Bmwh55uN0lL/ltGMMZpxKaCYsCmjwqSYSSlArfXH6iPdUKBaXq2lgEXBzqyQ93eD7O
 AwDEOWl8IW0U5n4FnZGXY67xAtgo/utbV7tyiifhFjoN91w/nVlQR6jeGvyFFf0nznZ0
 tzWNHoz31OosTX0VcZz+aXbnbJLtVGOMsb+ZRm3qhDLQCCXec5ZhhYcf69yYvgcONyRo
 975ZvChv77pWNXjp78h//i65myxgRgExAuXZOKpQ5W7CYaPoHU4ggkr48Tm7wcXSLgTp
 SmqLGleioQ5m8yoHr5uRU/y/uEOqiQ0nwYZbux2Rjym4LUcvQc3CC7Dhb4gilKpSgjDT
 7Hqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U57G786HwXPbJb/Ib81QEy3uYz8PAurJDjRMK8xtUPQ=;
 b=ftD5PTh6cvs1DBd7ke5AhOffrorpsrx7A7LDOuEUH5mvASo4llaj2LL31CXrCZk/65
 lb4GlKYk2uiK2T7Ryd3kA1tO4l0MZhRj4ii915Fscfv63fXdOGZrXZH8tTMkYFBz6AlI
 tTlUernFRdcWKs1Zmky30mVh5mpVmHPu3dosCpK5agZ5n5R/a1Hw8rQqmqAwlKcs70ph
 GDI6xf0w7KCEWxCD+mjkk9TGPlVPPO86wkVdenu1IW8ftT4IwnmRQ8xFoy7+o2RCz7to
 HAbSZCTcgaEI8MdPGFrwMobSruFYSI6bPbh4AU0K03+5CWA+IXuEDtk9RmX+lmspET43
 d+Hg==
X-Gm-Message-State: APjAAAWjDm2GMMN6ZDsSgk+Lfake6H63cjIbUO1ZgYK6GhL/w6ea7huI
 FoRU+BNPpdfTQTj8xiTubn8=
X-Google-Smtp-Source: APXvYqykvGgeXad5LmeBEju/OuMYnpe0CokSWBKSIGfqj7X57dYVvJFgYkY5JS0I5Gg/O0+K8pd8yQ==
X-Received: by 2002:a1c:771a:: with SMTP id t26mr5108179wmi.14.1557053815499; 
 Sun, 05 May 2019 03:56:55 -0700 (PDT)
Received: from localhost.localdomain (ip5f5abb56.dynamic.kabel-deutschland.de.
 [95.90.187.86])
 by smtp.gmail.com with ESMTPSA id s2sm6920574wmc.7.2019.05.05.03.56.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 03:56:54 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: get rid of IS_MCAST
Date: Sun,  5 May 2019 12:56:42 +0200
Message-Id: <20190505105642.8730-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use is_multicast_ether_addr instead of custom IS_MCAST and remove
the now unused IS_MCAST. All buffers are properly aligned.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c     |  2 +-
 drivers/staging/rtl8712/rtl871x_recv.c     | 14 +++++++-------
 drivers/staging/rtl8712/rtl871x_security.c |  4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.c     | 12 ++++++------
 drivers/staging/rtl8712/wifi.h             | 11 -----------
 5 files changed, 16 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 7574a4b569a4..307b0e292976 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -419,7 +419,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 #endif
 	u8 blnSetTxDescOffset;
-	sint bmcst = IS_MCAST(pattrib->ra);
+	bool bmcst = is_multicast_ether_addr(pattrib->ra);
 	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 	struct tx_desc txdesc_mp;
 
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 28f736913292..5298fe603437 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -151,7 +151,7 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 	if (prxattrib->encrypt == _TKIP_) {
 		/* calculate mic code */
 		if (stainfo != NULL) {
-			if (IS_MCAST(prxattrib->ra)) {
+			if (is_multicast_ether_addr(prxattrib->ra)) {
 				iv = precvframe->u.hdr.rx_data +
 				     prxattrib->hdrlen;
 				idx = iv[3];
@@ -180,12 +180,12 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 			if (bmic_err) {
 				if (prxattrib->bdecrypted)
 					r8712_handle_tkip_mic_err(adapter,
-						(u8)IS_MCAST(prxattrib->ra));
+						(u8)is_multicast_ether_addr(prxattrib->ra));
 				res = _FAIL;
 			} else {
 				/* mic checked ok */
 				if (!psecuritypriv->bcheck_grpkey &&
-				    IS_MCAST(prxattrib->ra))
+				    is_multicast_ether_addr(prxattrib->ra))
 					psecuritypriv->bcheck_grpkey = true;
 			}
 			recvframe_pull_tail(precvframe, 8);
@@ -305,7 +305,7 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
 	u8 *mybssid  = get_bssid(pmlmepriv);
 	u8 *myhwaddr = myid(&adapter->eeprompriv);
 	u8 *sta_addr = NULL;
-	sint bmcast = IS_MCAST(pattrib->dst);
+	bool bmcast = is_multicast_ether_addr(pattrib->dst);
 
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
 	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
@@ -331,7 +331,7 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
 			/* For AP mode, if DA == MCAST, then BSSID should
 			 * be also MCAST
 			 */
-			if (!IS_MCAST(pattrib->bssid))
+			if (!is_multicast_ether_addr(pattrib->bssid))
 				return _FAIL;
 		} else { /* not mc-frame */
 			/* For AP mode, if DA is non-MCAST, then it must be
@@ -373,7 +373,7 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	u8 *mybssid  = get_bssid(pmlmepriv);
 	u8 *myhwaddr = myid(&adapter->eeprompriv);
-	sint bmcast = IS_MCAST(pattrib->dst);
+	bool bmcast = is_multicast_ether_addr(pattrib->dst);
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) &&
 	    check_fwstate(pmlmepriv, _FW_LINKED)) {
@@ -532,7 +532,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 
 	if (pattrib->privacy) {
 		GET_ENCRY_ALGO(psecuritypriv, psta, pattrib->encrypt,
-			       IS_MCAST(pattrib->ra));
+			       is_multicast_ether_addr(pattrib->ra));
 		SET_ICE_IV_LEN(pattrib->iv_len, pattrib->icv_len,
 			       pattrib->encrypt);
 	} else {
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index f82645011d02..693008bba83e 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -665,7 +665,7 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 			length = ((union recv_frame *)precvframe)->
 				 u.hdr.len - prxattrib->hdrlen -
 				 prxattrib->iv_len;
-			if (IS_MCAST(prxattrib->ra)) {
+			if (is_multicast_ether_addr(prxattrib->ra)) {
 				idx = iv[3];
 				prwskey = &psecuritypriv->XGrpKey[
 					 ((idx >> 6) & 0x3) - 1].skey[0];
@@ -1368,7 +1368,7 @@ u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 		stainfo = r8712_get_stainfo(&padapter->stapriv,
 					    &prxattrib->ta[0]);
 		if (stainfo != NULL) {
-			if (IS_MCAST(prxattrib->ra)) {
+			if (is_multicast_ether_addr(prxattrib->ra)) {
 				iv = pframe + prxattrib->hdrlen;
 				idx = iv[3];
 				prwskey = &psecuritypriv->XGrpKey[
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index f6fe8ea12961..bfd5538a4652 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -181,7 +181,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 
 	struct tx_cmd txdesc;
 
-	sint bmcast;
+	bool bmcast;
 	struct sta_priv		*pstapriv = &padapter->stapriv;
 	struct security_priv	*psecuritypriv = &padapter->securitypriv;
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
@@ -257,7 +257,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 			}
 		}
 	}
-	bmcast = IS_MCAST(pattrib->ra);
+	bmcast = is_multicast_ether_addr(pattrib->ra);
 	/* get sta_info*/
 	if (bmcast) {
 		psta = r8712_get_bcmc_stainfo(padapter);
@@ -353,7 +353,7 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
-	sint bmcst = IS_MCAST(pattrib->ra);
+	bool bmcst = is_multicast_ether_addr(pattrib->ra);
 
 	if (pattrib->psta)
 		stainfo = pattrib->psta;
@@ -523,7 +523,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 		/* Update Seq Num will be handled by f/w */
 		{
 			struct sta_info *psta;
-			sint bmcst = IS_MCAST(pattrib->ra);
+			bool bmcst = is_multicast_ether_addr(pattrib->ra);
 
 			if (pattrib->psta) {
 				psta = pattrib->psta;
@@ -594,7 +594,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	struct xmit_priv	*pxmitpriv = &padapter->xmitpriv;
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
 	u8 *pbuf_start;
-	sint bmcst = IS_MCAST(pattrib->ra);
+	bool bmcst = is_multicast_ether_addr(pattrib->ra);
 
 	if (pattrib->psta == NULL)
 		return _FAIL;
@@ -903,7 +903,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	sint bmcst = IS_MCAST(pattrib->ra);
+	bool bmcst = is_multicast_ether_addr(pattrib->ra);
 
 	if (pattrib->psta) {
 		psta = pattrib->psta;
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 77346debea03..1a5b966a167e 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -278,17 +278,6 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 
 #define GetAddr4Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 24))
 
-
-
-static inline int IS_MCAST(unsigned char *da)
-{
-	if ((*da) & 0x01)
-		return true;
-	else
-		return false;
-}
-
-
 static inline unsigned char *get_da(unsigned char *pframe)
 {
 	unsigned char	*da;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
