Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E01834AF14
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 02:38:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6CA0F2050F;
	Wed, 19 Jun 2019 00:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uh0TlX7pfVDN; Wed, 19 Jun 2019 00:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1222B20511;
	Wed, 19 Jun 2019 00:38:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1A971BF2B0
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DEF6D85BD3
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eaUdgMQiIcNI for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:38:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48B5A85AA1
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 00:38:14 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id m30so8607621pff.8
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=bAA7Iv6CnrCeifP2aG7kS9Z8x5uPv9BIfdgSK9PbnqA=;
 b=I9IiVzVeALSA4kcf+/maRv777/NKbSNAmfg3irJ/EqDxJKiD9e4zRl9A24+Cwm/I7h
 m3PT8QWnXzb3e/vWTdmJJPCxHehZ9VBV98THDWfdjRXKi+Hk/qNmheFibDvPkQ2L5R9I
 MGlcx64lE80y3MJEaC+30id40o66M7zBhfbFAOg0l9KSSZT8a/mMCak/MEb+udf+LgxV
 FyuK6WimhQTfTQkY5QZDliRUfP/wufhYsPHyxPBv4sObukcuN173TnOQed4aZp35k6Kf
 aaAy18oHolwHIIQedPvlRvcM0EMXbWMT9KpDnZAmzZp86OYAL0leJtepRsCUXYQGYI6C
 PA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=bAA7Iv6CnrCeifP2aG7kS9Z8x5uPv9BIfdgSK9PbnqA=;
 b=XINN+sAiJD1FIBAoAXWwPz9+0rab/ZzpBKhvZxJcnRww8HOTbrnlrEtfX+Nd1q9jvJ
 cQX02ZVa7KTpXrZZWiXuH9pXc70WKTQQ5juNgz4sQCFIXpjFDPEcJj5Lq0nvOV0zY8Ah
 tSXCPRshsdu5wpBP9L/BFXv+/R9SYxuH+rRnj4Y3VdLsLpc69RvGT71CghESwv/V7zn6
 m0lLh0rmXxwriWmjf3GIGMW2tvUiWOZC6rjBI5l6H1d32XMdIl0BRbjuwKDgN0ozzym3
 D3mOrkT5t/JdH/cWGk0k4/Rz5v1ysgmhfKeBkflVXb82ljTg9FtnmEXKxQ/KTwtmgsl9
 7HCA==
X-Gm-Message-State: APjAAAWvjG7GxJWz6sKrkpT7YBq07eRG85r1L6SfjtdWjL5pn6lR2Ibl
 AgGMPMqPK2Fr3ApoFJ6TtXE=
X-Google-Smtp-Source: APXvYqzFZgIy8rv3ts6tIg2xPdQ5vI1HfznpT5bx/4cDNVZPUBTzFkCXHFLGjyzt9q6KbmoJfWAWSg==
X-Received: by 2002:a65:534c:: with SMTP id w12mr5221251pgr.431.1560904693879; 
 Tue, 18 Jun 2019 17:38:13 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id x26sm14217860pfq.69.2019.06.18.17.38.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 17:38:13 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/3] staging: rtl8723bs: Resolve the checkpatch error: else
 should follow close brace '}'
Date: Tue, 18 Jun 2019 17:37:33 -0700
Message-Id: <3faf32eea0b1e877c1a79e0ab431d11bb76d5793.1560903975.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1560903975.git.shobhitkukreti@gmail.com>
References: <20190618070019.GA20601@kroah.com>
 <cover.1560903975.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1560903975.git.shobhitkukreti@gmail.com>
References: <cover.1560903975.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Joe Perches <joe@perches.com>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
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
index 4bccfd6..52a5b31 100644
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
 		/*  */
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 17c5199..746f074 100644
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
 				DBG_COUNTER(padapter->rx_logs.os_indicate_ap_self);
@@ -182,24 +179,21 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 
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
 
@@ -209,8 +203,7 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
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
