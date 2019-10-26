Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B726EE5A67
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E13D876A0;
	Sat, 26 Oct 2019 12:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9s4PkEP7LRL; Sat, 26 Oct 2019 12:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C16578777C;
	Sat, 26 Oct 2019 12:12:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 501F61BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49A7220424
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhVHpiFacshz for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id F0EC0203FB
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 22so4490720wms.3
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PfPUIgUWgffxKXgP3/ETgSqjZhUKnyysDpsFlHetnSw=;
 b=FsB6NmgAB6uqLYV1kF+yiHpbLc8zuklmoFwAVexNabfQWgO37sS1UZAI0fQrFBcedh
 litNEBRtuSxCuIs5VcD64zubXmdEiPf1xNoMvCNcJzzT+Rrj9QAVLDrX3UPHXYnmFjO4
 kKJmVl5mAEZattFbYXfjY2xAjO21RKv1BXKDz/YV2eHMzjg5XjNw5zTJPwe1Z5KT8op+
 KTGb2eOqQmmrz1Y9cPcn0sM45rufdLAFDpRp9Sibo0fnP/+UDlkVfziN0B4MTADsBYyd
 vO711VhJqGrjk+WMQ5sHMaAn9BwADKzx/FcphpV6xaRtMTIPzrFwrfqfrnvZ/4AqkdZN
 u/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PfPUIgUWgffxKXgP3/ETgSqjZhUKnyysDpsFlHetnSw=;
 b=W0PEcHKZ2LP1/40hmhICtUr/zSuE3YkHypncShfv5dfv+mI6oQbuY6g9veBr8TTCr6
 STr0lSSK//crt1Z6fx9GMP0TtXIzHtJ2djxf28N0IB89n+gw7jsv9F2l/asDWsfLD9dO
 wYJKM4DgJ22dJhkUQsooj/4R0eVuQJWzsjJlWCWVCE0W6BWKXhNhi4Zp792NkJK3zhqS
 vKmZCMwcLCw6Z4Kvp3GxZcoz/EXfuvilS/DQ2AWsyXtw8i6OnFM9gN6KRkwvQciLcsmf
 jkOcGrYU7WfnxauHjPMn6wFi4gtuG4a9C2DJAGp5Q5G2/xZwto9KozI++xi/Cws1Nfiq
 EHfQ==
X-Gm-Message-State: APjAAAUGkZbtRgPLyTyVJcVR3ElFdI3R7BixwPt0ghwsfC8fuiXFLg8f
 am/3dfKshyeFrqbTEbfhPXI=
X-Google-Smtp-Source: APXvYqzywJ6DRD/YjmbGjQhwLO6eRyQLLH/++2xr0UR8QeRkEvXX633XUFDDIqL7MaWn7btxnVdMaw==
X-Received: by 2002:a1c:a657:: with SMTP id p84mr7158331wme.35.1572091916488; 
 Sat, 26 Oct 2019 05:11:56 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:55 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/7] staging: rtl8188eu: cleanup long lines in rtw_sta_mgt.c
Date: Sat, 26 Oct 2019 14:11:34 +0200
Message-Id: <20191026121135.181897-6-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026121135.181897-1-straube.linux@gmail.com>
References: <20191026121135.181897-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup lines over 80 characters in rtw_sta_mgt.c by adding line
breaks where appropriate.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 3cadc46836e1..43925b1f43ef 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -83,7 +83,8 @@ u32 _rtw_init_sta_priv(struct sta_priv *pstapriv)
 
 		INIT_LIST_HEAD(&pstapriv->sta_hash[i]);
 
-		list_add_tail(&psta->list, get_list_head(&pstapriv->free_sta_queue));
+		list_add_tail(&psta->list,
+			      get_list_head(&pstapriv->free_sta_queue));
 
 		psta++;
 	}
@@ -186,9 +187,11 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 		_rtw_init_stainfo(psta);
 		memcpy(psta->hwaddr, hwaddr, ETH_ALEN);
 		index = wifi_mac_hash(hwaddr);
-		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_, ("%s: index=%x", __func__, index));
+		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
+			 ("%s: index=%x", __func__, index));
 		if (index >= NUM_STA) {
-			RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_, ("ERROR => %s: index >= NUM_STA", __func__));
+			RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
+				 ("ERROR => %s: index >= NUM_STA", __func__));
 			psta = NULL;
 			goto exit;
 		}
@@ -208,7 +211,8 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 		 */
 
 		for (i = 0; i < 16; i++)
-			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i], &wRxSeqInitialValue, 2);
+			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i],
+			       &wRxSeqInitialValue, 2);
 
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
 			 ("alloc number_%d stainfo  with hwaddr = %pM\n",
@@ -457,7 +461,8 @@ u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 
 	if (!psta) {
 		res = _FAIL;
-		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_, ("rtw_alloc_stainfo fail"));
+		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
+			 ("rtw_alloc_stainfo fail"));
 		goto exit;
 	}
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
