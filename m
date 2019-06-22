Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4718C4F721
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 18:41:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E012520443;
	Sat, 22 Jun 2019 16:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYgt4PZQB+7M; Sat, 22 Jun 2019 16:41:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA61A20351;
	Sat, 22 Jun 2019 16:41:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC5371BF2FF
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A77F485D61
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWHlGe5A-0BO for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 16:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94F4C85D3A
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 16:41:14 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r1so5120147pfq.12
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 09:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=l2wsp1H9xOrGxDdquGp3vARZO0MhvnPC+Qbj0a1u17M=;
 b=mfqIDfj/J32XirJmicVYBku/OXNZqom4lc5ugwi/dg5YH25felbJEkyOoBT3GlOn0Y
 EbpdNgrDUPX2p7knV8bUNemmzZu30EFkCCTDAF+XKoaVisgCrzZPy+OttzMv0x8JKy8h
 gL2ZISdTUKVs7ESRK1HIb7cfPcS0ZAPenNIbipGyLgEDTVk9B6rt+uwZhakWG604eyXI
 HHjwtonFhBoVWWQ4AZyIpYHuk2ffgglPWmX3dyavPVK4y0J8Q2RarBAjxbVWmwELClmL
 dnX34Tz3h72h9Xf27CEvi4qPdKDApH8IMo0ynvoV4WHOzZP0Hg19Mb3j5yIiCRxzyFnL
 7KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=l2wsp1H9xOrGxDdquGp3vARZO0MhvnPC+Qbj0a1u17M=;
 b=Fx+Bp7Oz2rGB7XmCin1byavd5oHI93n+I5tPbm4/58U8NPabSGumfBQAI3GhKBuJOM
 mX3Gl6khDoiCR0AlkhlY99gl/Dqfcc0sHhgjpv9cSQg9HnVrKeGDWWiANnTJFq8UlquX
 NXcUMXsrPnydXsJWw6NLskVPB2jdcR416EpD2hLqT92JXLv6rFU5y+IiGzA/tfSNdpam
 VSDfN7uJh9h8eJhbT1Dm+Po1xNaa8IsdCL7WWZ4R7EHeQT/YDjAxdpKxU+RysZ0SOsIE
 3bGKJV8gUutB/aKC5MRKkLEUPVm/tcK4OYyuuuSSAYtK413J4NDeVrd9AtCfrJ0SxKom
 R9pw==
X-Gm-Message-State: APjAAAU5woMDHHkcixqfpIbVP7KqeNfn2Zl0mWuumQsdpYpxbvyYHJ+u
 X4FJ1sMfOa3FmWMexSn6vtQ=
X-Google-Smtp-Source: APXvYqzypeZfa87R5pF2W/G4L5xhDirSAvZ9qR6JTkbdStADrTSh1DriA+iQtHgx2GTGz/WlF1nebw==
X-Received: by 2002:a17:90a:30aa:: with SMTP id
 h39mr14039408pjb.32.1561221674185; 
 Sat, 22 Jun 2019 09:41:14 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id u5sm5809161pgp.19.2019.06.22.09.41.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 09:41:13 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 2/3] staging: rtl8723bs: os_dep: modified return type of
 function rtw_suspend_wow() to void
Date: Sat, 22 Jun 2019 09:40:41 -0700
Message-Id: <5a28f7afe2c87f3478d9fc277b45337445ca013c.1561220637.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1561220637.git.shobhitkukreti@gmail.com>
References: <cover.1561220637.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1561220637.git.shobhitkukreti@gmail.com>
References: <cover.1561220637.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Changed return type of function rtw_suspend_wow() to void.
The function always return _SUCCESS and the value is never
checked in the calling function.

Resolves coccicheck Unneeded variable "ret" warning.

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 0fd84c9..96346ce 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -673,7 +673,7 @@ int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput);
 #endif
 
 #ifdef CONFIG_WOWLAN
-int rtw_suspend_wow(struct adapter *padapter);
+void rtw_suspend_wow(struct adapter *padapter);
 int rtw_resume_process_wow(struct adapter *padapter);
 #endif
 
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index e1e871e..6b26af3 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1289,14 +1289,13 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 }
 
 #ifdef CONFIG_WOWLAN
-int rtw_suspend_wow(struct adapter *padapter)
+void rtw_suspend_wow(struct adapter *padapter)
 {
 	u8 ch, bw, offset;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct net_device *pnetdev = padapter->pnetdev;
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	struct wowlan_ioctl_param poidparam;
-	int ret = _SUCCESS;
 
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
@@ -1364,7 +1363,6 @@ int rtw_suspend_wow(struct adapter *padapter)
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
 	}
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
 }
 #endif /* ifdef CONFIG_WOWLAN */
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
