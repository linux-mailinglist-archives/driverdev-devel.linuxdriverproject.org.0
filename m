Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F182475DF
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 18:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 178A58574B;
	Sun, 16 Jun 2019 16:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e02F3MYHqnYQ; Sun, 16 Jun 2019 16:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5529684F58;
	Sun, 16 Jun 2019 16:20:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6EE91BF316
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 16:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A22BF2040C
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 16:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fl9FGk3xTQxS for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 16:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 55E3D20372
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 16:20:29 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s21so4355257pga.12
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 09:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=EzUB83/4vbw+CwJuopIXHONoPt2SMEg6J7YUNraqN58=;
 b=C/1kUCyUiRd88ORqW+QroKCRVfr5FSP7gdgKyhLSo/NsgIm93bymyLGrQN6h8eYgFI
 6ENRvQXAxVXJYZLY7xOMCkd1OXjq4YVIPFZhGQQYaBCRRbRfwcFYW3pThIu/du7Hz/yU
 xIj54L2cwC1HI+L+KB0iDc5GempebOmn7fyv3OH+txdp/uhSbKtQvdMkceA2nTub+44Y
 yN8arsMupMqkBfde+3cDMBstTOJaPYfbCDW6oXgCeGSMk7rbWdPgn1lEFh6VI2zmT2OU
 nkpMLH3UIQHrhs120Y+oREJ1A4bwxtrHTpWD9Wx7ROzmK6lCSWwCUzkBgiP2n6EEAp91
 YdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=EzUB83/4vbw+CwJuopIXHONoPt2SMEg6J7YUNraqN58=;
 b=RqCFlW4Jp9f6peGGi3rqphN8Z1gaDqQBEe9EfPrNqHFq0vX07hSkfVSw4ZFktWWPii
 w7SzDsJtwVrvlMmDrpAUbPfXQhJZv/i5lsKYSf6/J28GcsVVaC/MbdmZBmqC9pNlwFC0
 Z7KXCEZW4G4fVu73sEmCM0cLHnU3Tf87CoxoAyYWNUPDo+mnKUhKxw9Ut5cfIkzMYULl
 SJE2lo5ylERrT1tq3CIosz8iw/PIDMQZaWQr9WiPZk7YZkqHOn/fe9BKfrkHDBcljIq0
 qusPOy0uphaN75OdQIBldo8H19T0skKyto8S6R1rsnW3LpMxXzwnO8GaGArqoJinsQBI
 fGNg==
X-Gm-Message-State: APjAAAVw+6hwpysqvOY/pbzGGs8Jtv3RMvPRT+1AQ7VINXkwDxly9x3b
 Y5iWZNK6TrfmxADsslNetbU=
X-Google-Smtp-Source: APXvYqys+TpVk+sQ1uzVkEl6LxwY7m1WZzxx2ChjtdNBGzSy3M7cZO0P3QnAfjyt2f1nGL7xp0ZZCg==
X-Received: by 2002:a63:1208:: with SMTP id h8mr43884589pgl.377.1560702028839; 
 Sun, 16 Jun 2019 09:20:28 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id 8sm1687908pgc.13.2019.06.16.09.20.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 16 Jun 2019 09:20:28 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: [PATCH v3 2/3] staging: rtl8723bs: Resolve the checkpatch error: else
 should follow close brace '}'
Date: Sun, 16 Jun 2019 09:19:50 -0700
Message-Id: <466c579bdb97777d5e0df0eced4c07b3ec2aa7fe.1560701271.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1560701271.git.shobhitkukreti@gmail.com>
References: <20190616131145.GA30779@t-1000>
 <cover.1560701271.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1560701271.git.shobhitkukreti@gmail.com>
References: <cover.1560701271.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Bastien Nocera <hadess@hadess.net>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleaned up the code to resolve the checkpatch error else should follow
close brace '}' from the following files:

mlme_linux.c
recv_linux.c
sdio_intf.c

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 ++----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 21 +++++++--------------
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |  9 +++------
 3 files changed, 12 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index 4631b68..6a5ab35 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -48,8 +48,7 @@ void rtw_os_indicate_connect(struct adapter *adapter)
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
 		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
 		rtw_cfg80211_ibss_indicate_connect(adapter);
-	}
-	else
+	} else
 		rtw_cfg80211_indicate_connect(adapter);
 
 	rtw_indicate_wx_assoc_event(adapter);
@@ -104,8 +103,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		adapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
 		adapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
 
-	}
-	else {
+	} else {
 		/* reset values in securitypriv */
 
 		/* if (adapter->mlmepriv.fw_state & WIFI_STATION_STATE) */
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index a2055f6..aab0195 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -62,15 +62,13 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 	if (sub_skb) {
 		skb_reserve(sub_skb, 12);
 		skb_put_data(sub_skb, (pdata + ETH_HLEN), nSubframe_Length);
-	}
-	else {
+	} else {
 		sub_skb = rtw_skb_clone(prframe->u.hdr.pkt);
 		if (sub_skb) {
 			sub_skb->data = pdata + ETH_HLEN;
 			sub_skb->len = nSubframe_Length;
 			skb_set_tail_pointer(sub_skb, nSubframe_Length);
-		}
-		else {
+		} else {
 			DBG_871X("%s(): rtw_skb_clone() Fail!!!\n", __func__);
 			return NULL;
 		}
@@ -142,8 +140,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 						return;
 					}
 				}
-			}
-			else {
+			} else {
 				/*  to APself */
 
 				/* DBG_871X("to APSelf\n"); */
@@ -183,24 +180,21 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 
 	if (psecuritypriv->last_mic_err_time == 0) {
 		psecuritypriv->last_mic_err_time = jiffies;
-	}
-	else {
+	} else {
 		cur_time = jiffies;
 
 		if (cur_time - psecuritypriv->last_mic_err_time < 60*HZ) {
 			psecuritypriv->btkip_countermeasure = true;
 			psecuritypriv->last_mic_err_time = 0;
 			psecuritypriv->btkip_countermeasure_time = cur_time;
-		}
-		else {
+		} else {
 			psecuritypriv->last_mic_err_time = jiffies;
 		}
 	}
 
 	if (bgroup) {
 		key_type |= NL80211_KEYTYPE_GROUP;
-	}
-	else {
+	} else {
 		key_type |= NL80211_KEYTYPE_PAIRWISE;
 	}
 
@@ -210,8 +204,7 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 	memset(&ev, 0x00, sizeof(ev));
 	if (bgroup) {
 	    ev.flags |= IW_MICFAILURE_GROUP;
-	}
-	else {
+	} else {
 	    ev.flags |= IW_MICFAILURE_PAIRWISE;
 	}
 
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index c60f13c..9c408d9 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -88,8 +88,7 @@ static int sdio_alloc_irq(struct dvobj_priv *dvobj)
 	if (err) {
 		dvobj->drv_dbg.dbg_sdio_alloc_irq_error_cnt++;
 		printk(KERN_CRIT "%s: sdio_claim_irq FAIL(%d)!\n", __func__, err);
-	}
-	else {
+	} else {
 		dvobj->drv_dbg.dbg_sdio_alloc_irq_cnt++;
 		dvobj->irq_alloc = 1;
 	}
@@ -115,8 +114,7 @@ static void sdio_free_irq(struct dvobj_priv *dvobj)
             if (err) {
 				dvobj->drv_dbg.dbg_sdio_free_irq_error_cnt++;
 				DBG_871X_LEVEL(_drv_err_,"%s: sdio_release_irq FAIL(%d)!\n", __func__, err);
-            }
-            else
+            } else
 		dvobj->drv_dbg.dbg_sdio_free_irq_cnt++;
             sdio_release_host(func);
         }
@@ -232,8 +230,7 @@ static void sdio_deinit(struct dvobj_priv *dvobj)
 			if (err) {
 				dvobj->drv_dbg.dbg_sdio_free_irq_error_cnt++;
 				DBG_8192C(KERN_ERR "%s: sdio_release_irq(%d)\n", __func__, err);
-			}
-			else
+			} else
 				dvobj->drv_dbg.dbg_sdio_free_irq_cnt++;
 		}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
