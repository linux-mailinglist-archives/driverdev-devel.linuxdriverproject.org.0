Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465E887167
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71CB988320;
	Fri,  9 Aug 2019 05:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LPu8nLn2nh0; Fri,  9 Aug 2019 05:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA41C88162;
	Fri,  9 Aug 2019 05:24:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A8451BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 17C4A866C4
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CmUmzm0amShz for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D091866A9
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:12 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i189so45398900pfg.10
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g9Qgjf7iMz7cZ9oPscL0u6GuWrHoAxkygnO/usHPfzc=;
 b=vKeQg+CRIsSvc1OF5164EZQWZyoFKdEEdVQdk67CPvFM/YYdr06w/23shh1FK20EpQ
 qX7n4GDxvMeKFQk52PQg/2H44x27oKJOTkmP2vG800ZwZPP1IolHu3sCpE3ysqYe6G92
 XoGDwwlggVeYXWSjxsjxHgtPe6GSVqUwIai92quT7w53CO2+Gk4cEi99OjybXo2NiP2t
 R7CcxhPaHYyN5CPFfImde7JCIhh1TPBBQiB9yKzaK9B1IqWknGklAo/5v/FZHx1bef6N
 CiutUWgwDheqardu+TyJYbmt31J20PXENOCFEwAjIpGsM7vs3Gpis7/P8tYkIybwI4nB
 9mig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g9Qgjf7iMz7cZ9oPscL0u6GuWrHoAxkygnO/usHPfzc=;
 b=REkmoNkDnQXmnnlwYBOgE+5PJTt6SoXxoS3p+DBJ/3yLdwdXdSQ3EoF77AvNmbdicz
 GKxzVhm6T13wTm4M8AaZwqN/mYIPa7j83FjCk5nB2SEnDmVS2aoKyjjYpzkWPtO9bX2q
 5cSGpuOJJ35gCX1IQnRI0jnAPxDb+OHuxsbWTyeLcdn6ccdfsRCRF6xQfYhv7v+oADsF
 BrlDsERe5Df5hRslawMRGYmorJUiTLmlPg4UxYkN0c26vVZL031jgwo244stLYJ9h3nW
 p3Ehb5az+Vnl9wqd4MWr18Ft8EOPhpfC400jvDfwdsC3jHoi7hxPiYpp8lVzcPcjskgl
 56tg==
X-Gm-Message-State: APjAAAX1e2dfvT1WJaqtH2cokFSGpHJpCucAlHXmAuG5LF0FS+iJehcC
 0HIQbi8g7WroTOc6aN6vD/2kZjf3V/4=
X-Google-Smtp-Source: APXvYqzls8gweeAgJD4UXqm8Gai/49YlBRTExvk9ge8U1wv4w/jfbp70ShgzYT0Gsz9Zyvoh3UC0EQ==
X-Received: by 2002:a65:52c5:: with SMTP id z5mr15992472pgp.118.1565328251607; 
 Thu, 08 Aug 2019 22:24:11 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:11 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 02/11] staging: rtl8712: r8712_update_attrib(): Change return
 values and type
Date: Fri,  9 Aug 2019 10:53:44 +0530
Message-Id: <20190809052353.5308-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190809052353.5308-1-nishkadg.linux@gmail.com>
References: <20190809052353.5308-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of r8712_update_attrib from _SUCCESS and _FAIL to 0
and -ENOMEM or -EINVAL respectively. Modify call site to check for the
new failure conditions. Also modify the return type from sint to int.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 16 ++++++++--------
 drivers/staging/rtl8712/rtl871x_xmit.h |  4 ++--
 drivers/staging/rtl8712/xmit_linux.c   |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index b9dc8953c6b3..40246cdd0911 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -173,8 +173,8 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
 	free_hwxmits(padapter);
 }
 
-sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
-		   struct pkt_attrib *pattrib)
+int r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
+			struct pkt_attrib *pattrib)
 {
 	struct pkt_file pktfile;
 	struct sta_info *psta = NULL;
@@ -224,7 +224,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
 		/*firstly, filter packet not belongs to mp*/
 		if (pattrib->ether_type != 0x8712)
-			return _FAIL;
+			return -EINVAL;
 		/* for mp storing the txcmd per packet,
 		 * according to the info of txcmd to update pattrib
 		 */
@@ -271,7 +271,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		} else {
 			psta = r8712_get_stainfo(pstapriv, pattrib->ra);
 			if (psta == NULL)  /* drop the pkt */
-				return _FAIL;
+				return -ENOMEM;
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 				pattrib->mac_id = 5;
 			else
@@ -283,7 +283,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		pattrib->psta = psta;
 	} else {
 		/* if we cannot get psta => drrp the pkt */
-		return _FAIL;
+		return -ENOMEM;
 	}
 
 	pattrib->ack_policy = 0;
@@ -301,7 +301,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		pattrib->encrypt = 0;
 		if ((pattrib->ether_type != 0x888e) &&
 		    !check_fwstate(pmlmepriv, WIFI_MP_STATE))
-			return _FAIL;
+			return -EINVAL;
 	} else {
 		GET_ENCRY_ALGO(psecuritypriv, psta, pattrib->encrypt, bmcast);
 	}
@@ -315,7 +315,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		pattrib->iv_len = 8;
 		pattrib->icv_len = 4;
 		if (padapter->securitypriv.busetkipkey == _FAIL)
-			return _FAIL;
+			return -EINVAL;
 		break;
 	case _AES_:
 		pattrib->iv_len = 8;
@@ -339,7 +339,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 	if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
 		pattrib->priority =
 		    (le32_to_cpu(txdesc.txdw1) >> QSEL_SHT) & 0x1f;
-	return _SUCCESS;
+	return 0;
 }
 
 static sint xmitframe_addmic(struct _adapter *padapter,
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 6ddf5b6bb633..291763c310ba 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -264,8 +264,8 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 			      struct xmit_frame *pxmitframe);
 sint _r8712_init_hw_txqueue(struct hw_txqueue *phw_txqueue, u8 ac_tag);
 void _r8712_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv);
-sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
-			 struct pkt_attrib *pattrib);
+int r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
+			struct pkt_attrib *pattrib);
 int r8712_txframes_sta_ac_pending(struct _adapter *padapter,
 				  struct pkt_attrib *pattrib);
 int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index 01d713d027b0..1f67d86c606f 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -160,7 +160,7 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *netdev)
 	if (!xmitframe)
 		goto _xmit_entry_drop;
 
-	if ((!r8712_update_attrib(adapter, pkt, &xmitframe->attrib)))
+	if (r8712_update_attrib(adapter, pkt, &xmitframe->attrib))
 		goto _xmit_entry_drop;
 
 	adapter->ledpriv.LedControlHandler(adapter, LED_CTL_TX);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
