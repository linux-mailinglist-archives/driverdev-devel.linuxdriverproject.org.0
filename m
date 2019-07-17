Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F156C0AB
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 19:56:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C51E5867A5;
	Wed, 17 Jul 2019 17:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1yYpFkaKnt7; Wed, 17 Jul 2019 17:56:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EA5A86546;
	Wed, 17 Jul 2019 17:56:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B476D1BF2A2
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 17:56:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A46562041D
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 17:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Su24a8C3rpD for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 17:56:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E7C40203C8
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 17:56:50 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u14so11223745pfn.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 10:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5ZzkyzHu/9GruXdKeTYRFl7pejTn8WM+7V712xwIO2Q=;
 b=gMtj8j9qouvBU3wgRFzrTl5vpM7V2I0pGuJplwz8ASYq/NXhQuepN8g4pyvgCYuDZ1
 KpId1aj1ANWprHXYUXE2KpmqgcabUBaC2MB86AYSq4QAsA2qA03YT+jRoY59inL/xqaB
 +UPuab9jfYaf2io/XQH5ZByA4iQlEQ6vkxNLUGSGLH57V0T3E1p7pwfVjvvRzab6SzxA
 VL5JpiqTbeefJ1PnKh7THB3Vrqm/5m/ZXeTn8jNKSn+HF5bk4nDIs2Gf8yI1jZUcrX80
 DXA5bZyOCndr/ssgEcjYNubwGBTPnm9TgM+rp8T1B8WgNhE1ejML2IYmui7IiVQjbRk3
 he1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5ZzkyzHu/9GruXdKeTYRFl7pejTn8WM+7V712xwIO2Q=;
 b=hMNlfnlU9wSRHX+vYR3NF4IbzR7uWhuvTQO9nqSCwlf3hFINyAm3OmD3rVj1/ZrTHK
 fxUjV7jKxgKcbGplzSBehjF0xy7hi+aIkmP8ZYZWPyzcPCMWGmGwTmipwkkG5opGzDHM
 UEyjxnaoUsjl0ZVqKg10snHwvd3F/lZ5E1vATwX4iIBGhr1Sgt84KTqunutSGELL/Z1t
 faWshUSMLiUmCFsjWWpqMTPnwF93lgZEIvN3EsaA9QNBgm5Vd+jbQlup5LgGtm4BYVak
 K64PYhnHDBusJVtAzefYOIsPBo3ATE3+Vx/TcgGt9wKTFKNAtLWQC9AQmWkPo3UVzxt+
 gqdg==
X-Gm-Message-State: APjAAAUAoVFQlxAy9tG9dgKZi3JY92bLLFIdL1AuZFQKJQqugcIr2QUD
 mZJxNQR4jJQxDsBiPjdqiRyQE5bp
X-Google-Smtp-Source: APXvYqybm2s5X0roXllcEeWDBu1R1qHYnoYJ+cpHoGStf2x+lBDzFi3aqvzcqE3HW4KdtDHMwY/OEg==
X-Received: by 2002:a63:4c5a:: with SMTP id m26mr42052935pgl.270.1563386210373; 
 Wed, 17 Jul 2019 10:56:50 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id t7sm20566932pjq.15.2019.07.17.10.56.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 10:56:49 -0700 (PDT)
Date: Wed, 17 Jul 2019 23:26:43 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: change return type of
 rtw_suspend_ap_wow
Message-ID: <20190717175642.GA10582@hari-Inspiron-1545>
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

Change return type of rtw_suspend_ap_wow as its always return SUCCCESS.

Issue found with coccicheck

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 544e799..285fd54 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1361,13 +1361,12 @@ void rtw_suspend_wow(struct adapter *padapter)
 #endif /* ifdef CONFIG_WOWLAN */
 
 #ifdef CONFIG_AP_WOWLAN
-int rtw_suspend_ap_wow(struct adapter *padapter)
+void rtw_suspend_ap_wow(struct adapter *padapter)
 {
 	u8 ch, bw, offset;
 	struct net_device *pnetdev = padapter->pnetdev;
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	struct wowlan_ioctl_param poidparam;
-	int ret = _SUCCESS;
 
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
@@ -1409,7 +1408,6 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 	rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, 0, "AP-WOWLAN");
 
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
 }
 #endif /* ifdef CONFIG_AP_WOWLAN */
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
