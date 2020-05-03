Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA95F1C2AA9
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 09:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B4B488688;
	Sun,  3 May 2020 07:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPqsMVzCtQbq; Sun,  3 May 2020 07:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DF828867E;
	Sun,  3 May 2020 07:52:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1D191BF427
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 07:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADF7D86637
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 07:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ViuvV0VflCc for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 07:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7D42786276
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 07:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588492334;
 bh=A/nJWC7/FExLFiup0GI1qnhxkOVZJTAIzBKRg1zgUc0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Rag3U7TKXp21NW/Gg0bNvOoO2RLj/qr7r4o66Zg9ile0To2ViPtInK7ywZnfEqrvz
 hO1m/MsjAGgQj1bbAm/uWY7u5ygAHTM7QUBbSk9FhLb4E3vuEWUhVkQ9yIkRClfhUk
 NxTbnIZwUGhcyLH5FXY+b3kdVtp3tOIwzb96P9A0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MYeQr-1jhxTK3GU7-00VdXK; Sun, 03 May 2020 09:52:13 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Adham Abozaeid <adham.abozaeid@microchip.com>,
 Ajay Singh <ajay.kathat@microchip.com>
Subject: [PATCH v2] staging: wilc1000: Increase the size of wid_list array
Date: Sun,  3 May 2020 09:51:45 +0200
Message-Id: <20200503075145.4563-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:qvvL1+SdxKFiDVKqX8vb6sp0013MXgY6KFNBrGzi5WW2EyekwOv
 FWuhJjXCK7zI8igLhf5vSxPSEnfeCACOKnQ6hNv95M9ZiskYE9+scneNjTNRtu0ArXuBJpQ
 cxERxtIi2SSadPM/7ieZSrUrEkiCHeco9TEFKC2o8W6Jz4LID71b4arcWELxR/PzF6XKyJb
 PPc5iySXyoC6FFzRcoXrQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6OILL9EKE3A=:1cyA5RM3VDcsMEboQaVktg
 7cjXo73+8YVzuMHXl+CbIGntoxU97ewALoHEB3atKeQbTYT1gwJbmTYsioHO5xR0GE5bZtOfK
 XPTW4oJt+q2fccnQwqBRaIUYwOrA5+7N6yrpJXW3mh6CVRRRI8UmBtZBWg9H2b83ZOqfw5nDF
 tmkez/E4GGl+2ix250wP50eNhvgKVk5uvm7mqsqVRYDyX2QZUbRs5ieR3RYP1rqmQgiP6ye4T
 tfQykdlgfD+uyLly16ChSSUabivJ2xLUhsHypEvmoT1JozIbOCEXKa2nI/mUtIItjW6js+SYh
 FnR742Gl7sIs6JFpdV6WZRRDCf9vWRFbAgzGcLunNWTBrEqATZrG/Y0iub23JDxK28K9SMAAU
 hPLH7w+dj615oIGdpLdhdNg+03f3hrhizBUIUtIVofao2eeMOLphl+RWp5Rewp651p9CoRPTq
 OGAkLNVlo7wLKXUIAmDDWuSkAP6zaDAp2kVJyE9/AxOYJnfMOO81mEDXtt1moRABKp2a5nlFD
 9J5QLdebWf/Ol0KglHiYE3o5sDWkmpkKzYw1MDUTPcgIr2CMR+3IzKdrINRFcoy9IQUc3c48k
 HmmZkCdou8QP58vQQacaSAOR//nO3cviWGmdI9RVKuCJf+55yU7nxcuaOFv1fdtkKVa4DtzC7
 bXddxdqbdZU9MDlWlS7yQit207cJCaeev42Q43tQNgF9q+HpBFkJTiKC6j9ymfEa/dnfFUcOL
 TfECkdmmoT5RzcqhTwg3jFbrhVBm7StnjZiU3RQlQFkg7MnJojdTRehdyf6YgA1aXByiXeyI5
 9b6ojM+4JF8G+VtBbsvxz4tIK0LPmhFT7c5I+p7mriOIK915ZCmSoFfaopg9tfmNKP7YMIWNC
 TBErbRH+JkDpy2Z+90AEX6OWaavNvuMCtULwbmZzjeoq8gKsMDINyqgywwhIFFCve3UPq7Tsk
 Mb5DC2gBqszPUXc+ZRS3eRuoI6CCQRb4mShZd5wuP8TkjcD1cenmz/Jk7Hf0XtPGSdBrCBxD3
 1Pw61d51lYHo0fiRs2w89KbK59Fl9NASjBGK4Vd/k4VXloNaWvR1vVmeey92+1U8gVdpCJWDK
 1tH2mPWAwiEi9uBqU67oz8Z5J2NX4dwZmqG9a2ovbi5BSdZhI1jyK8aHQppB9mt8h0Er81q45
 AUvJpglDCNCzMRRtNtf93pcrxpFVwS0p1eHCpyC1nwMQPps1/jrVh7/mN4ZOkMFeKZ7UG5LiY
 J+EhPqTp7LbPmlYW+
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
Cc: Rachel Kim <rachel.kim@atmel.com>, Dean Lee <dean.lee@atmel.com>,
 Chris Park <chris.park@atmel.com>, Oscar Carter <oscar.carter@gmx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-wireless@vger.kernel.org, Johnny Kim <johnny.kim@atmel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Increase by one the size of wid_list array as index variable can reach a
value of 5. If this happens, an out-of-bounds access is performed.

Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Fix the commit for the "Fixes" tag as Ajay suggested.

 drivers/staging/wilc1000/hif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
index 6c7de2f8d3f2..128943c3be4f 100644
--- a/drivers/staging/wilc1000/hif.c
+++ b/drivers/staging/wilc1000/hif.c
@@ -151,7 +151,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 	      void *user_arg, struct cfg80211_scan_request *request)
 {
 	int result = 0;
-	struct wid wid_list[5];
+	struct wid wid_list[6];
 	u32 index = 0;
 	u32 i, scan_timeout;
 	u8 *buffer;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
