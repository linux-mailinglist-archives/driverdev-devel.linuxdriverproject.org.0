Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA05C0EF0
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Sep 2019 02:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9F518671C;
	Sat, 28 Sep 2019 00:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8k6QxgJW9Zb; Sat, 28 Sep 2019 00:13:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C0E9864E6;
	Sat, 28 Sep 2019 00:13:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3EB91BF9B4
 for <devel@linuxdriverproject.org>; Sat, 28 Sep 2019 00:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D0986882F2
 for <devel@linuxdriverproject.org>; Sat, 28 Sep 2019 00:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEJQ7RE09FlM for <devel@linuxdriverproject.org>;
 Sat, 28 Sep 2019 00:13:21 +0000 (UTC)
X-Greylist: delayed 00:07:07 by SQLgrey-1.7.6
Received: from mx4.ucr.edu (mx4.ucr.edu [138.23.248.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4CCA0882F0
 for <devel@driverdev.osuosl.org>; Sat, 28 Sep 2019 00:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569629602; x=1601165602;
 h=from:to:cc:subject:date:message-id;
 bh=FaCTevKekKWl5COEvVNNzHMFqf8s6yFBpnUXYidtk40=;
 b=ZU+3Ss4+psxifhk1YUTtFJyFuMd1VHvvQ22+KfyUAxgMM7zB1zTrbgc0
 5jVvvsGcCHNv2AjaC4Reb3VVEwIHQ/pwQPHyIoVwDXCduUL2ZhDHHyHqh
 OPe0YDYiGeygUtW+NZOLN5hRcoGaDfRz5/LO6INDqga6CtVpIIis/1ZM4
 Aym9K1gNRcpcRfphi5EX8UEE2DXTb6RTzwTOLbaAhkEqsJ8lx0rWL2EHv
 VtFVuGQkxkwTcDAd8BJ94UuFz5itqrIlSXgOgyQQNEr7jXUllsFI9+Ixf
 +7lmWgVsNU2fozLfnkd+OTeneZHVZyxoeUKAkCx2CPSdalrRjUFOAovkC A==;
IronPort-SDR: KShhpq9j243brmM2NxmzixgIRoRBaerUUDlUmhR99/EKDG8bxOJRrBDFx4JPGLttWzSA4R+FPQ
 BlSwnMbUAUVrwBkdCWB6qq/JPYK4u56i1ZlbeKEfhJHf7bv1eqAvX2cB9C23rEZRotj4/gMF22
 pgSJs54s2a4p8EioZzA1ijwJsfF6J4yhTPD9mS9GlmCvilP9YA6MR/OKE+pNZU3aKmxs9/e9Cw
 X/aD4ZiAzGQHEOOQ68twdPArE5QWSv6k7LaBRZimhnRfMVMMQUFNoyEaKZEbXN4h+L4AaxO752
 hOk=
IronPort-PHdr: =?us-ascii?q?9a23=3Ao+ZguREgO5FzIzcexqV0qp1GYnF86YWxBRYc79?=
 =?us-ascii?q?8ds5kLTJ78r8uwAkXT6L1XgUPTWs2DsrQY0rGQ6P+rAzJIyK3CmUhKSIZLWR?=
 =?us-ascii?q?4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBx?=
 =?us-ascii?q?rwKxd+KPjrFY7OlcS30P2594HObwlSizexfL1/IA+4oAjTucUan4pvIbstxx?=
 =?us-ascii?q?XUpXdFZ/5Yzn5yK1KJmBb86Maw/Jp9/ClVpvks6c1OX7jkcqohVbBXAygoPG?=
 =?us-ascii?q?4z5M3wqBnMVhCP6WcGUmUXiRVHHQ7I5wznU5jrsyv6su192DSGPcDzULs5Vy?=
 =?us-ascii?q?iu47ttRRT1kyoMKSI3/3/LhcxxlKJboQyupxpjw47PfYqZMONycr7Bcd8GQG?=
 =?us-ascii?q?ZMWMNRVy1aAoOnbosPCeUBNvtGoYfkulAOoxq+CheoBOzy1zREgnH70bE/3+?=
 =?us-ascii?q?knDArI3hEvH8gWvXrUstv7KakcX+OywqTT0TnPc+lb1Svn5YTUbhwsp+yHU7?=
 =?us-ascii?q?JqccrWzEkiDwHKjlSRqIzlIjOV0fkGvm+b7uthVeKgkW8npx1trjWh3cosl5?=
 =?us-ascii?q?XGhpgPxl/a6Cp53Z84KNulQ0B4ed6pCIVcuz2eOodsQc4vQ3tktDgnxrEao5?=
 =?us-ascii?q?K3YSwHxZc/yxLCavGKd5KE7gztWeuROzt0mnNodKi9ihu990Wr1/fyWdOu0F?=
 =?us-ascii?q?lQqypIitzMtncQ2BPN8sWHUf59/lu52TaIygDT9vlIIUAqmqrfLJ4s2rswmY?=
 =?us-ascii?q?ASsUTHByP2gEv2gLKPekUq5+Sl7+fqbq/ppp+bMI90hQX+Pbo0lsOjBuQ4Nx?=
 =?us-ascii?q?ACX2md+euiyL3u5VP1TKlOg/EskaTUsIrWKdoGqqKlGQNZz4Iu5hWnAzejyt?=
 =?us-ascii?q?sYnH0HLFxfeBKAiojkI1HPIfH4DfilglSgjCtnyv7dM738HprNNGLPn6n8cr?=
 =?us-ascii?q?Zg80Jc0hY8zchD55JIDbEMOO/8VVHvtNPGCh80KBG7w/zmCNVjyIweQ3+ADb?=
 =?us-ascii?q?GHMK/Itl+I/f8vI+6XZI8Rojr9LOIl5/G9xVEjnlpITKi73YYQICSpDPRvIh?=
 =?us-ascii?q?3BOlLxic1HHGsX6FltBNf2gUGPBGYAL025WLgxs3RkUI8=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2F9AAA7o45dhsbSVdFmHQEBBQEMBQG?=
 =?us-ascii?q?BVAcBCwGDXUwQjR6FclEBAQaLJhhxhXqDC4UmgXsBCAEBAQwBAS0CAQGEQIM?=
 =?us-ascii?q?6IzUIDgIDCQEBBQEBAQEBBQQBAQIQAQEBCAsLCCmFQII6KYM1CxYVUlY/AQU?=
 =?us-ascii?q?BNSI5gkcBgXYUBaEogQM8jCUziHEBCQ2BSAkBCIEiAYc0hFmBEIEHhGGEDYN?=
 =?us-ascii?q?WgkQEgS8BAQGNcIcrlkkBBgKCEBSBeJMHJ4Q5iTuLPwEtpxICCgcGDyOBMQG?=
 =?us-ascii?q?CDk0lgWwKgURQEBSBWg4JFY4tITOBCItpglQB?=
X-IPAS-Result: =?us-ascii?q?A2F9AAA7o45dhsbSVdFmHQEBBQEMBQGBVAcBCwGDXUwQj?=
 =?us-ascii?q?R6FclEBAQaLJhhxhXqDC4UmgXsBCAEBAQwBAS0CAQGEQIM6IzUIDgIDCQEBB?=
 =?us-ascii?q?QEBAQEBBQQBAQIQAQEBCAsLCCmFQII6KYM1CxYVUlY/AQUBNSI5gkcBgXYUB?=
 =?us-ascii?q?aEogQM8jCUziHEBCQ2BSAkBCIEiAYc0hFmBEIEHhGGEDYNWgkQEgS8BAQGNc?=
 =?us-ascii?q?IcrlkkBBgKCEBSBeJMHJ4Q5iTuLPwEtpxICCgcGDyOBMQGCDk0lgWwKgURQE?=
 =?us-ascii?q?BSBWg4JFY4tITOBCItpglQB?=
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="79252787"
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by smtpmx4.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 27 Sep 2019 17:06:13 -0700
Received: by mail-pf1-f198.google.com with SMTP id z13so3014496pfr.15
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 17:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iWRIaOK35hrLohXaCf+wY4P/hDj86VUIyT0UiZ54CEE=;
 b=rez9W0hCm5mFKLsNTb4d+K96sxpYjxnRWFsYmT2rWjr0kh4dQh6O10o9WIPu3bkLTD
 j95hm9rGkUWSS/i82i6vI/S8rNKIPZUU4My14zpvvVFHu3ztBsdkKepcI3rbXlMBp2ed
 c/vpIZXL1qFlhuNiqPd9C+STVpLVcvOm5U/dg/HzEr5XFHp77AocYGDB7tjEY6sjQic3
 3xnteKFdZSdWNDDnad3VqA6C3v42si3Q5a26M+V9dKq+v0jnLMBDdYeB9d9A65Lo3EPJ
 1OqVhz9eDMrqBY0Bi+Y0lT82HjZFXZRgWxDDbOMwxZQJIPmdllQYDE75DdgGLr7ab1G7
 gFPg==
X-Gm-Message-State: APjAAAVUP1jWGnXBaT5K2VLHOl2fTAcEwsIq+K6i5wBCK7FVN2iWzGn+
 H+mgNf9REeAKSxfJfMuaAi/sUJlBJYAK9ShXKzPjAWk0qqeXMQ60CnRudcwL1vPxXSCPSe8ILA8
 V/9PEMzzFdEsA3LIBc9q65dk=
X-Received: by 2002:a65:5003:: with SMTP id f3mr12170038pgo.335.1569629172932; 
 Fri, 27 Sep 2019 17:06:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3zzIUKbwUDelODLitrwoLWyQ8vBQ0lg/rhYGX9pv+WYB6eYPDVIHDeWRYXarba746c+dW0w==
X-Received: by 2002:a65:5003:: with SMTP id f3mr12170002pgo.335.1569629172560; 
 Fri, 27 Sep 2019 17:06:12 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id p1sm7381787pfb.112.2019.09.27.17.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 17:06:11 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] staging: rtl8723bs: Variable rf_type in function
 rtw_cfg80211_init_wiphy() could be uninitialized
Date: Fri, 27 Sep 2019 17:06:51 -0700
Message-Id: <20190928000655.27507-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
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
Cc: csong@cs.ucr.edu, devel@driverdev.osuosl.org,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>, Puranjay Mohan <puranjay12@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, zhiyunq@cs.ucr.edu,
 linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In function rtw_cfg80211_init_wiphy(), local variable "rf_type" could
be uninitialized if function rtw_hal_get_hwreg() fails to initialize
it. However, this value is used in function rtw_cfg80211_init_ht_capab()
and used to decide the value writing to ht_cap, which is potentially
unsafe.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 9bc685632651..dd39a581b7ef 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -3315,7 +3315,7 @@ static void rtw_cfg80211_init_ht_capab(struct ieee80211_sta_ht_cap *ht_cap, enum
 
 void rtw_cfg80211_init_wiphy(struct adapter *padapter)
 {
-	u8 rf_type;
+	u8 rf_type = RF_MAX_TYPE;
 	struct ieee80211_supported_band *bands;
 	struct wireless_dev *pwdev = padapter->rtw_wdev;
 	struct wiphy *wiphy = pwdev->wiphy;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
