Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 808252ACE5C
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DCE1F2039E;
	Tue, 10 Nov 2020 04:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ueYGlaPGZ9jj; Tue, 10 Nov 2020 04:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB9DA2035D;
	Tue, 10 Nov 2020 04:10:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09D741BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 025C62039E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PggIQIYo-mUK for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 9928620366
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:26 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id u19so12360150ion.3
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w0uJH20Y9PB94JSNsUBrDpUu5cXmjr476Na4wBZlVak=;
 b=G0dqbh2SWOkItZGekcxI4+wU+txdf2+3CqKFivXw0I/7gWkAbgW9xQtiHSZsHEW6mY
 wgiLWQkBIL6QTMDjgf0K6GPT4nw0HIIQLDb/wsL52yi/PJ3ievpt2/kDtasjibcg9yr4
 H54K1CiHE3qHpDj00CCzWPmR17a3LUYQKRljvxnJ9N5EFO5ulHEfc7++g2mZ5E0wLXIp
 PSJzLJZ7bqz4Kcr5iyE9AiXYQocIljXpjGJJU6korYt2tPBYV7JwfRpI9V019eGxpxAn
 WBSMEZYqqIr+slwwnj4HjYsNlM3QQiQaV8YBaYgSdIIZn+oH/cGfZj+7bNIwdNIYOxmy
 Vj8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w0uJH20Y9PB94JSNsUBrDpUu5cXmjr476Na4wBZlVak=;
 b=s5FIv3BzHCcnNFVTfHfeG+XTvuhepPyo+xapFVnIq2ZNF2yjDbMgvk6Iyqq3lwn55n
 CVCIs3kuiVK7J9T8MwtWUL0dH1PpEteqXdu7P7ZyE/Zr7uhF7hKFn/40GZ7Eqtq6jexg
 NFtSt1heyMy/66NJQ6w5sT/Ck8WFMk/zRz3ZIRaX6uSR6jDpDyC2JfqpxqkYmoMF8WNw
 SJdGTIkzdhJ0VkklOA0/WWkT9MOMYRAgZG0tciaLX7A3xDkm9/ZEK7y1h/hitTJFKnLG
 D+CaUgvVmxIgE7PWaE+GrS36w/jag4DFhY8pz7zEjdbjPl7LEJfKYr8tDURYH2B4WWcj
 EOqA==
X-Gm-Message-State: AOAM5303cARreNvlhmsvsYof+4vziax6pGSkxpes/4+2NunHKdZLl+vZ
 M6Ef0juRyKcn+fLvzKIafY8=
X-Google-Smtp-Source: ABdhPJy1jNOb/fUQKzPBckHscOzEWhJf5IzGAfno9RPj2+z0mQaKVhsLU9ZrLjx+rAJLJRQvd7r2TQ==
X-Received: by 2002:a6b:d907:: with SMTP id r7mr12849335ioc.37.1604981425945; 
 Mon, 09 Nov 2020 20:10:25 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:25 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/10] staging: rtl8723bs: clean up switch case indentation
Date: Mon,  9 Nov 2020 22:10:04 -0600
Message-Id: <20201110041008.15847-6-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move cases to align with switch indentation to fix coding style issues
and clear checkpatch errors.

ERROR: switch and case should be at the same indent

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 219 +++++++++---------
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  14 +-
 2 files changed, 116 insertions(+), 117 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 783daa30f1d7..773e4816fbc4 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -664,49 +664,49 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 			pairwise_cipher = WPA_CIPHER_NONE;
 
 		switch (group_cipher) {
-			case WPA_CIPHER_NONE:
-				padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
-				break;
-			case WPA_CIPHER_WEP40:
-				padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
-				break;
-			case WPA_CIPHER_TKIP:
-				padapter->securitypriv.dot118021XGrpPrivacy = _TKIP_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
-				break;
-			case WPA_CIPHER_CCMP:
-				padapter->securitypriv.dot118021XGrpPrivacy = _AES_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
-				break;
-			case WPA_CIPHER_WEP104:
-				padapter->securitypriv.dot118021XGrpPrivacy = _WEP104_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
-				break;
+		case WPA_CIPHER_NONE:
+			padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
+			break;
+		case WPA_CIPHER_WEP40:
+			padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
+			break;
+		case WPA_CIPHER_TKIP:
+			padapter->securitypriv.dot118021XGrpPrivacy = _TKIP_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
+			break;
+		case WPA_CIPHER_CCMP:
+			padapter->securitypriv.dot118021XGrpPrivacy = _AES_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
+			break;
+		case WPA_CIPHER_WEP104:
+			padapter->securitypriv.dot118021XGrpPrivacy = _WEP104_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
+			break;
 		}
 
 		switch (pairwise_cipher) {
-			case WPA_CIPHER_NONE:
-				padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
-				break;
-			case WPA_CIPHER_WEP40:
-				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
-				break;
-			case WPA_CIPHER_TKIP:
-				padapter->securitypriv.dot11PrivacyAlgrthm = _TKIP_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
-				break;
-			case WPA_CIPHER_CCMP:
-				padapter->securitypriv.dot11PrivacyAlgrthm = _AES_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
-				break;
-			case WPA_CIPHER_WEP104:
-				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
-				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
-				break;
+		case WPA_CIPHER_NONE:
+			padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11EncryptionDisabled;
+			break;
+		case WPA_CIPHER_WEP40:
+			padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
+			break;
+		case WPA_CIPHER_TKIP:
+			padapter->securitypriv.dot11PrivacyAlgrthm = _TKIP_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
+			break;
+		case WPA_CIPHER_CCMP:
+			padapter->securitypriv.dot11PrivacyAlgrthm = _AES_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
+			break;
+		case WPA_CIPHER_WEP104:
+			padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
+			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
+			break;
 		}
 
 		_clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
@@ -860,28 +860,27 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 	}
 
 	switch (wrqu->mode) {
-		case IW_MODE_AUTO:
-			networkType = Ndis802_11AutoUnknown;
-			DBG_871X("set_mode = IW_MODE_AUTO\n");
-			break;
-		case IW_MODE_ADHOC:
-			networkType = Ndis802_11IBSS;
-			DBG_871X("set_mode = IW_MODE_ADHOC\n");
-			break;
-		case IW_MODE_MASTER:
-			networkType = Ndis802_11APMode;
-			DBG_871X("set_mode = IW_MODE_MASTER\n");
-                        /* rtw_setopmode_cmd(padapter, networkType, true); */
-			break;
-		case IW_MODE_INFRA:
-			networkType = Ndis802_11Infrastructure;
-			DBG_871X("set_mode = IW_MODE_INFRA\n");
-			break;
-
-		default:
-			ret = -EINVAL;
-			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("\n Mode: %s is not supported \n", iw_operation_mode[wrqu->mode]));
-			goto exit;
+	case IW_MODE_AUTO:
+		networkType = Ndis802_11AutoUnknown;
+		DBG_871X("set_mode = IW_MODE_AUTO\n");
+		break;
+	case IW_MODE_ADHOC:
+		networkType = Ndis802_11IBSS;
+		DBG_871X("set_mode = IW_MODE_ADHOC\n");
+		break;
+	case IW_MODE_MASTER:
+		networkType = Ndis802_11APMode;
+		DBG_871X("set_mode = IW_MODE_MASTER\n");
+		/* rtw_setopmode_cmd(padapter, networkType, true); */
+		break;
+	case IW_MODE_INFRA:
+		networkType = Ndis802_11Infrastructure;
+		DBG_871X("set_mode = IW_MODE_INFRA\n");
+		break;
+	default:
+		ret = -EINVAL;
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("\n Mode: %s is not supported \n", iw_operation_mode[wrqu->mode]));
+		goto exit;
 	}
 
 /*
@@ -1342,50 +1341,50 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 			section = *(pos++); len -= 1;
 
 			switch (section) {
-				case WEXT_CSCAN_SSID_SECTION:
-					/* DBG_871X("WEXT_CSCAN_SSID_SECTION\n"); */
-					if (len < 1) {
-						len = 0;
-						break;
-					}
+			case WEXT_CSCAN_SSID_SECTION:
+				/* DBG_871X("WEXT_CSCAN_SSID_SECTION\n"); */
+				if (len < 1) {
+					len = 0;
+					break;
+				}
 
-					sec_len = *(pos++); len -= 1;
+				sec_len = *(pos++); len -= 1;
 
-					if (sec_len > 0 && sec_len <= len) {
-						ssid[ssid_index].SsidLength = sec_len;
-						memcpy(ssid[ssid_index].Ssid, pos, ssid[ssid_index].SsidLength);
-						/* DBG_871X("%s COMBO_SCAN with specific ssid:%s, %d\n", __func__ */
-						/* 	, ssid[ssid_index].Ssid, ssid[ssid_index].SsidLength); */
-						ssid_index++;
-					}
+				if (sec_len > 0 && sec_len <= len) {
+					ssid[ssid_index].SsidLength = sec_len;
+					memcpy(ssid[ssid_index].Ssid, pos, ssid[ssid_index].SsidLength);
+					/* DBG_871X("%s COMBO_SCAN with specific ssid:%s, %d\n", __func__ */
+					/* 	, ssid[ssid_index].Ssid, ssid[ssid_index].SsidLength); */
+					ssid_index++;
+				}
 
-					pos += sec_len; len -= sec_len;
-					break;
+				pos += sec_len; len -= sec_len;
+				break;
 
 
-				case WEXT_CSCAN_CHANNEL_SECTION:
-					/* DBG_871X("WEXT_CSCAN_CHANNEL_SECTION\n"); */
-					pos += 1; len -= 1;
-					break;
-				case WEXT_CSCAN_ACTV_DWELL_SECTION:
-					/* DBG_871X("WEXT_CSCAN_ACTV_DWELL_SECTION\n"); */
-					pos += 2; len -= 2;
-					break;
-				case WEXT_CSCAN_PASV_DWELL_SECTION:
-					/* DBG_871X("WEXT_CSCAN_PASV_DWELL_SECTION\n"); */
-					pos += 2; len -= 2;
-					break;
-				case WEXT_CSCAN_HOME_DWELL_SECTION:
-					/* DBG_871X("WEXT_CSCAN_HOME_DWELL_SECTION\n"); */
-					pos += 2; len -= 2;
-					break;
-				case WEXT_CSCAN_TYPE_SECTION:
-					/* DBG_871X("WEXT_CSCAN_TYPE_SECTION\n"); */
-					pos += 1; len -= 1;
-					break;
-				default:
-					/* DBG_871X("Unknown CSCAN section %c\n", section); */
-					len = 0; /*  stop parsing */
+			case WEXT_CSCAN_CHANNEL_SECTION:
+				/* DBG_871X("WEXT_CSCAN_CHANNEL_SECTION\n"); */
+				pos += 1; len -= 1;
+				break;
+			case WEXT_CSCAN_ACTV_DWELL_SECTION:
+				/* DBG_871X("WEXT_CSCAN_ACTV_DWELL_SECTION\n"); */
+				pos += 2; len -= 2;
+				break;
+			case WEXT_CSCAN_PASV_DWELL_SECTION:
+				/* DBG_871X("WEXT_CSCAN_PASV_DWELL_SECTION\n"); */
+				pos += 2; len -= 2;
+				break;
+			case WEXT_CSCAN_HOME_DWELL_SECTION:
+				/* DBG_871X("WEXT_CSCAN_HOME_DWELL_SECTION\n"); */
+				pos += 2; len -= 2;
+				break;
+			case WEXT_CSCAN_TYPE_SECTION:
+				/* DBG_871X("WEXT_CSCAN_TYPE_SECTION\n"); */
+				pos += 1; len -= 1;
+				break;
+			default:
+				/* DBG_871X("Unknown CSCAN section %c\n", section); */
+				len = 0; /*  stop parsing */
 			}
 			/* DBG_871X("len:%d\n", len); */
 
@@ -1917,15 +1916,15 @@ static int rtw_wx_set_enc(struct net_device *dev,
 			DBG_871X("(keyindex_provided == 1), keyid =%d, key_len =%d\n", key, padapter->securitypriv.dot11DefKeylen[key]);
 
 			switch (padapter->securitypriv.dot11DefKeylen[key]) {
-				case 5:
-					padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
-					break;
-				case 13:
-					padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
-					break;
-				default:
-					padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
-					break;
+			case 5:
+				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
+				break;
+			case 13:
+				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
+				break;
+			default:
+				padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
+				break;
 			}
 
 			goto exit;
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index ed8212b7deb4..b62fe9238e6d 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -400,17 +400,17 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 	memcpy(&eth_type, pdata + (ETH_ALEN << 1), 2);
 
 	switch (be16_to_cpu(eth_type)) {
-		case ETH_P_IP:
+	case ETH_P_IP:
 
-			piphdr = (struct iphdr *)(pdata + ETH_HLEN);
+		piphdr = (struct iphdr *)(pdata + ETH_HLEN);
 
-			dscp = piphdr->tos & 0xfc;
+		dscp = piphdr->tos & 0xfc;
 
-			priority = dscp >> 5;
+		priority = dscp >> 5;
 
-			break;
-		default:
-			priority = 0;
+		break;
+	default:
+		priority = 0;
 	}
 
 	return rtw_1d_to_queue[priority];
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
