Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E53D3830A
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 05:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6298988263;
	Fri,  7 Jun 2019 03:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pe4+FG6Ko2t9; Fri,  7 Jun 2019 03:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FF838827C;
	Fri,  7 Jun 2019 03:10:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DC2E1BF9B2
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 03:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8996420523
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 03:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yECqoIWBoiqV for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 03:10:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id D1952204DC
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 03:10:55 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id s24so242427plr.8
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 20:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=WDhw+eAgLM5AT/4N10m4uBp8IUkFKeIWWDX2t9FopMg=;
 b=Rubne3a8bo3lLNZqXpWyu4eQr2bbgv90zhzbIpUjAxUN1EVS3NoIvHjzBlKjjXwSzg
 BSBKKDMUIchhCCsdG/hkiwqUP9quQycwXSk486ZSMS8ZXTDoVjd2oZtKTqTB5QPM8eJy
 Rh+8X6V0y/SRyIZDGNmsIhH3WuOcsi9uZBkBDxprxoUWmBlyhezwDirygMwQgovyDApV
 3MlRY682DOCihpGwkSWCVD7tudTch4AB2OxBgcTZfsjw6+gLPa85j0vHHoP+ZeQMLNl+
 99zkuY4Q2aXEwGqIZmdAp8BmZwhbSsCoDGxiEx6kknY9yWtR02/34FbcQ1ba+R1lqMaq
 fsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=WDhw+eAgLM5AT/4N10m4uBp8IUkFKeIWWDX2t9FopMg=;
 b=LYhGB+ONZQWowJbWykYsqrehqIN9q1GtyZU0tKyOuEe7P6/2x5yckEkULOhhiy+I9y
 HvnUz2yduYHxKjaX90Xv0LvVSRoPTks29LRfjF0j84iNTJcE6HY8w0ElPI0Yi/NS0kbO
 mLi1KfjUMhvmUTz1AsiAR2jYAveZqvU9FKxQ5+LRQuOrhZhBKcpUr1xeoK/g9PhtEcJm
 h76YtmHHKmzDdxeUirjNF+tHZZ09scdvevik57BbQOiVmjT2IWw/0VnLS3gyOpONgSAI
 WkO/6dcbAopbg9zNKACfnZGSsAaAjw0wPwOB3/SheOyTnZYsKlgS+YDf6098u9Dbuz9G
 DPCA==
X-Gm-Message-State: APjAAAWfoqr4yju/IzjKyUPBapm3UY8knFokSDEQVgDd7GVzVreDs1Z7
 KS0nQotSLpR7dlQD4ndV8lI=
X-Google-Smtp-Source: APXvYqxY9Lwp/AoQFktEEK2OZh5HhrarwcZh+km/uPOTNoEDEI0sI8RDcTlES8cNSuAW3WBJBOgB3w==
X-Received: by 2002:a17:902:4906:: with SMTP id
 u6mr54171843pld.220.1559877055239; 
 Thu, 06 Jun 2019 20:10:55 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id k3sm403781pju.27.2019.06.06.20.10.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 20:10:54 -0700 (PDT)
Date: Thu, 6 Jun 2019 20:10:52 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: rtl8723bs: Fix Unneeded variable: "ret". Return "0"
Message-ID: <20190607031049.GA30138@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

coccicheck reported Unneeded variable ret at rtl8723bs/core/rtw_ap.c:1400.
Function "rtw_acl_remove_sta" always returns 0. Modified return type of the
function to void.

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c        | 4 +---
 drivers/staging/rtl8723bs/include/rtw_ap.h     | 2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 ++-
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7bebb41..87b201a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1394,10 +1394,9 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	return ret;
 }
 
-int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
+void rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 {
 	struct list_head	*plist, *phead;
-	int ret = 0;
 	struct rtw_wlan_acl_node *paclnode;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
@@ -1438,7 +1437,6 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 
 	DBG_871X("%s, acl_num =%d\n", __func__, pacl_list->num);
 
-	return ret;
 }
 
 u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
diff --git a/drivers/staging/rtl8723bs/include/rtw_ap.h b/drivers/staging/rtl8723bs/include/rtw_ap.h
index d6f3a3a..4a1ed9e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ap.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ap.h
@@ -19,7 +19,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len);
 void rtw_ap_restore_network(struct adapter *padapter);
 void rtw_set_macaddr_acl(struct adapter *padapter, int mode);
 int rtw_acl_add_sta(struct adapter *padapter, u8 *addr);
-int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr);
+void rtw_acl_remove_sta(struct adapter *padapter, u8 *addr);
 
 u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta);
 int rtw_ap_set_group_key(struct adapter *padapter, u8 *key, u8 alg, int keyid);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 236a462..9da1fd2 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -4174,7 +4174,8 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
 		return -EINVAL;
 	}
 
-	return rtw_acl_remove_sta(padapter, param->sta_addr);
+	rtw_acl_remove_sta(padapter, param->sta_addr);
+	return 0;
 
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
