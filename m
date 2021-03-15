Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C99A33C3E4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:15:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5724430E8;
	Mon, 15 Mar 2021 17:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYV76TWIlYsV; Mon, 15 Mar 2021 17:15:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 219F040170;
	Mon, 15 Mar 2021 17:15:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCBFB1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B659183486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwkT29w6y8MH for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F388783478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:53 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id z1so18219773edb.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7TH3zqm15/bGSX3wSGitb74ZVvPXGU59G75w2D8W6J4=;
 b=pLqayzBXHmMolAPKZvrGD8ngfof5cuEwXarqabJ4f5bZ2Vrn1Y+6kjJ6qAo+VEIYzt
 lPwNpQUQcET4DhdAkwZkT0feSyJKkQinNhLt1VpFBT/4Ae3f1kbWgFN7q/4+J857THFU
 7Vrhfr2g3rmgEk5zqwpvSd7JGsv6mKxPgvlMn0icqDUab9YsIygZGPDaQT+ZlcntAvm/
 OK10NVX8CBRg+bOi9m6EtWo0qLZCsw0Phh2HJll/A6MvnmrKYiX+edterZ/wOrtNyGj6
 sAgcrXRqnNlY+/gI8JGOa2Sf6ehn1hfrRdNiB9f7pWbkMb80Q7ernUQIegsPYUTzXjaR
 7g4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7TH3zqm15/bGSX3wSGitb74ZVvPXGU59G75w2D8W6J4=;
 b=GfyMIpqAVooVhC0+wZQuIdhzDfUOt9biEKNGEmxIpcgmSErXFI3bnzq+nxb8zQUUfw
 FBYacOKrL/Sxm1uDopXVRdy5umQRRILG0ePf1DRafIwf2nm9MfJgyxjX9A39MV2pCDXT
 NKnvx/Q4DWuqdpI0ZmD+48QOF2xmRDI4teQPwyDDNkmXgC/MhLkOC+5QC8whUb7hj2Lw
 I2FShf3BMRM/QRAZMRoREnugfekdmJ7a2e40uB0PaBJ6dlzjJqWac2BHALgvGrgburjK
 P/xfFApy1Gr29FtZBdzYfGSlTMXDiNcnsUCyhLhpEy4GfYuyHRnDgb7Dq5gCguOlpnu/
 l/Xw==
X-Gm-Message-State: AOAM533xpWLLiU8YollPhjpA2U6GbbRWJaRnbyd3aN72zquwU1O3+FAe
 ZdYUXrZVAVluA6mMASvfRmfY6J23JQY=
X-Google-Smtp-Source: ABdhPJx05ato9GaZZ8+/xtkYoTwYKTnY8keAUc9TMFoGVieeFLg3lYAega9fKveapWRD8m6TCnMXgA==
X-Received: by 2002:a05:6402:1393:: with SMTP id
 b19mr31098128edv.333.1615828012295; 
 Mon, 15 Mar 2021 10:06:52 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:52 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 52/57] Staging: rtl8723bs: fix spaces in rtw_ioctl_set.h
Date: Mon, 15 Mar 2021 18:06:13 +0100
Message-Id: <20210315170618.2566-53-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #21: FILE: ./include/rtw_ioctl_set.h:21:
    +u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep * wep);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #25: FILE: ./include/rtw_ioctl_set.h:25:
    +u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid * ssid);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_ioctl_set.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
index b0cdee2df638..4db23b1c2d47 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
@@ -18,11 +18,11 @@ struct BSSIDInfo {
 
 u8 rtw_set_802_11_authentication_mode(struct adapter *pdapter, enum NDIS_802_11_AUTHENTICATION_MODE authmode);
 u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid);
-u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep * wep);
+u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep);
 u8 rtw_set_802_11_disassociate(struct adapter *padapter);
 u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_ssid *pssid, int ssid_max_num);
 u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
-u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid * ssid);
+u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid);
 u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_11_ssid *ssid);
 
 u8 rtw_validate_bssid(u8 *bssid);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
