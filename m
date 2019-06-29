Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9BC5ACDC
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 20:27:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5833186BAD;
	Sat, 29 Jun 2019 18:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wNlRY-dhff7; Sat, 29 Jun 2019 18:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E66C8863CE;
	Sat, 29 Jun 2019 18:26:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78B391BF3AD
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 18:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E3F6867ED
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 18:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YgnkRrOmhviR for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 18:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1EB1863CE
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 18:26:56 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id b7so5047995pls.6
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 11:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=0AQq5+Vp+iXDTeJ3o4QHOhInjIIqHgZpcbiK10bqgAM=;
 b=D7k9iNR7pd51jAEyBLiLrYZjx2Oio8czS27/BNqc7Bi2lJR7CCbpGnLt9mcSGaZ8tZ
 MMWwgA1dTkZZkZht4IS5ITJP/FlXuPAn0Fm0tzCEkuaZoxLQemw6lJ9tAeabX4iFcPx8
 yMIqWnSzVZ9vXqSNXL96ePGr4DKVtP1TYZYiWVrrfprg/b+SJu+JvjYfPCG89UtrpUl1
 n2jp9j8M6hSlBS36mbWfwAIXeqcncOz/5pA7N0/YzjMhWs8Sj7IcTNlBC70lCaZDkXKw
 oCFMEL35oKPaO2H9o7cr9PHl1Yz71vDBDFYmieTUqHQsaGHpuiUZ13Zc47+/zA6GE6Hd
 ZGmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0AQq5+Vp+iXDTeJ3o4QHOhInjIIqHgZpcbiK10bqgAM=;
 b=Tf6XkXEFfpB39e+e7f7dN8vM4fzutExzjqWn3uATZ+bEmJqFnjc7XUTSJR3WnvwAZE
 kIrbB2I/LfRhSIq+8SxJqDUZyN7z/tRd1V3DlcUk9pNLu8Eb+lqlMWJ9yilYz2R5cD0u
 kU4PpvOMjc/rcqPwj+c/IRALtI+V3VPvpx+5UGHN59WeK5Kbgu82Wjyr7/16w8S5oxCF
 lueh39K942PS7oFo86ten78q5irYM27i/c4I6Fur0fNh7UnYu6n5G/hrGSXkMqXr7U4z
 gaZtobm8aO/n+vbwSyFq5999yUPevjDtfNMhOQ6QBQEHhBOyP1anS4ShZqQucTmCKo5i
 NCfA==
X-Gm-Message-State: APjAAAXkYGTbO9OYKnRcOG9mcWk66Yhdm2/HnhhdOodb6ydSYLa/QkbH
 VRXrdlaG0nwPjG5Nb2ah5jg=
X-Google-Smtp-Source: APXvYqxRjI+V0IAfuEbzIaM5/WnOj2f/0ZA5jYjT/GrCALlOUwdqdF1xnPoyYbOQqQmWdKsNswhu3w==
X-Received: by 2002:a17:902:b093:: with SMTP id
 p19mr18443296plr.141.1561832816301; 
 Sat, 29 Jun 2019 11:26:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id z20sm12267284pfk.72.2019.06.29.11.26.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 11:26:55 -0700 (PDT)
Date: Sat, 29 Jun 2019 23:56:50 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Florian =?iso-8859-1?Q?B=FCstgens?= <flbue@gmx.de>,
 Bhaskar Singh <bhaskar.kernel@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging/rtl8188eu/os_dep: Remove unneeded variable ret
Message-ID: <20190629182650.GA9138@hari-Inspiron-1545>
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

Below list of functions returns 0 in success and -EINVAL in failure. So
directly return 0 on Success.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index eaa4adb..d9d0462 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -2508,7 +2508,6 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 
 static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 {
-	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
@@ -2538,7 +2537,7 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 		DBG_88E("rtw_del_sta(), sta has already been removed or never been added\n");
 	}
 
-	return ret;
+	return 0;
 }
 
 static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *param, int len)
@@ -2636,7 +2635,6 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 
 static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	unsigned char wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
@@ -2668,12 +2666,11 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 		pmlmeext->bstart_bss = true;
 	}
 
-	return ret;
+	return 0;
 }
 
 static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	int ie_len;
@@ -2698,12 +2695,11 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 		memcpy(pmlmepriv->wps_probe_resp_ie, param->u.bcn_ie.buf, ie_len);
 	}
 
-	return ret;
+	return 0;
 }
 
 static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	int ie_len;
@@ -2729,12 +2725,11 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 		memcpy(pmlmepriv->wps_assoc_resp_ie, param->u.bcn_ie.buf, ie_len);
 	}
 
-	return ret;
+	return 0;
 }
 
 static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct mlme_ext_priv	*pmlmeext = &(padapter->mlmeextpriv);
@@ -2754,7 +2749,7 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 		value = 0;
 	DBG_88E("%s value(%u)\n", __func__, value);
 	pmlmeinfo->hidden_ssid_mode = value;
-	return ret;
+	return 0;
 }
 
 static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
@@ -2787,7 +2782,6 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
 
 static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *param, int len)
 {
-	int ret = 0;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
@@ -2796,7 +2790,7 @@ static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *
 
 	rtw_set_macaddr_acl(padapter, param->u.mlme.command);
 
-	return ret;
+	return 0;
 }
 
 static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
