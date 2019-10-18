Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDEBDC30A
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 12:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6BB586F16;
	Fri, 18 Oct 2019 10:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rtdSEi4FB3I; Fri, 18 Oct 2019 10:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 879B986EFE;
	Fri, 18 Oct 2019 10:48:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E063C1BF5A7
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 10:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC0CB20483
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 10:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34rYx5Kg7qgn for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 10:48:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id ED79C2038D
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 10:48:40 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 3so5625458wmi.3
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 03:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hMmhoG1hFboF7DXkU4ekkYimIsKSAcCusM/Xte7xdI8=;
 b=lgdlRz+uSVGQVaS3PxFgm2wIGiadmtRDfXH4cABLh/YbO7etdfmz5DmXZB5Bx5qV1v
 KNDekQflg+C0kb0PfbI807MJXfTfnMesPIP3j8PbUAn90aiwpUruLOm/FOtRYhieCvMg
 w5zFrYpSZqIRiuI95nwo57sPAqvLCsiZGTQeiRzzHsziQYrlVfSfyKiVOOoJv1R5BJD3
 RVCtCXjDfkZl2Dqc9++XDZYIWfIFoeTAvKw+FKnzs38pIxJhXwGo8BiEJNfXkjdeSTK3
 ZhiKQh+MtqupHax5yYUza9WO9RKgGdTBFyQT3WfFSuHwKJ07PM7AaN8ncUY7k03XCESB
 HxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hMmhoG1hFboF7DXkU4ekkYimIsKSAcCusM/Xte7xdI8=;
 b=Qkqp5aAuKCxG4ITS10VgtS9+bpoj/pnG9/drPh66yvl2VWyB7fTaxnp/07C2gCsLSi
 +7Ds1sZjHI1EaSbKQqEfozCOgPB5r8JXFHqXYukeYfqFlnPjVrRWpD3exxytDGnY09iX
 w6eeOk1r+T/yTjNzGzFBvm30JWbH1vISw64gPrZ/RZUuKNBlS7P/vcDh6plCjd+lL1jI
 MpT65duLy9exurEZdjPshGZ+vT5gBBhxHd7BVeTxdMKNnMgqf8FappkdoRdExPoHe9kI
 rGrjHZQGIBU8Pb2KXrCsPVdil7r8jzvBIfwc2J6zKAdyOA+v3zNgtprFDoN3Ux3qu6j+
 RfuA==
X-Gm-Message-State: APjAAAU0M8/ESWAt9nWAgUQ0biQE4RDMndpuD89nzCT5xjHMDXnXRAUM
 0z+UKctuZ1pVd1c2PN8wMGs=
X-Google-Smtp-Source: APXvYqywrEmGtcfgiQCvsqP6fhxcZBflw6vimfyggHqVCGb4ju5EOaYdktfQNQtHNaT+OeGvm2eXMA==
X-Received: by 2002:a1c:6089:: with SMTP id u131mr7149905wmb.60.1571395719401; 
 Fri, 18 Oct 2019 03:48:39 -0700 (PDT)
Received: from debian.office.codethink.co.uk. ([78.40.148.180])
 by smtp.gmail.com with ESMTPSA id z13sm4894356wrq.51.2019.10.18.03.48.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 03:48:38 -0700 (PDT)
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: reduce stack usage of
 rtw_cfg80211_unlink_bss
Date: Fri, 18 Oct 2019 11:48:37 +0100
Message-Id: <20191018104837.23246-1-sudipm.mukherjee@gmail.com>
X-Mailer: git-send-email 2.11.0
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
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The build of xtensa allmodconfig gives warning of:
In function 'rtw_cfg80211_unlink_bss':
warning: the frame size of 1136 bytes is larger than 1024 bytes

Instead of having 'select_network' structure as a variable use it as a
pointer.

Signed-off-by: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 59ea4fce9a08..a25c535b6b4f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1410,16 +1410,17 @@ void rtw_cfg80211_unlink_bss(struct adapter *padapter, struct wlan_network *pnet
 	struct wireless_dev *pwdev = padapter->rtw_wdev;
 	struct wiphy *wiphy = pwdev->wiphy;
 	struct cfg80211_bss *bss = NULL;
-	struct wlan_bssid_ex select_network = pnetwork->network;
+	struct wlan_bssid_ex *select_network = &pnetwork->network;
 
 	bss = cfg80211_get_bss(wiphy, NULL/*notify_channel*/,
-		select_network.MacAddress, select_network.Ssid.Ssid,
-		select_network.Ssid.SsidLength, 0/*WLAN_CAPABILITY_ESS*/,
+		select_network->MacAddress, select_network->Ssid.Ssid,
+		select_network->Ssid.SsidLength, 0/*WLAN_CAPABILITY_ESS*/,
 		0/*WLAN_CAPABILITY_ESS*/);
 
 	if (bss) {
 		cfg80211_unlink_bss(wiphy, bss);
-		DBG_8192C("%s(): cfg80211_unlink %s!! () ", __func__, select_network.Ssid.Ssid);
+		DBG_8192C("%s(): cfg80211_unlink %s!! () ", __func__,
+			  select_network->Ssid.Ssid);
 		cfg80211_put_bss(padapter->rtw_wdev->wiphy, bss);
 	}
 }
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
