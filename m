Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C39B4F681
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 17:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B655220453;
	Sat, 22 Jun 2019 15:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H33rajOGfaob; Sat, 22 Jun 2019 15:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B821B203BF;
	Sat, 22 Jun 2019 15:24:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D9C61BF301
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A8258138B
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gbElBP+c3uvx for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 15:23:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0692781384
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 15:23:57 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id j2so5078036pfe.6
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 08:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=h80AaTSFvhmc0YkZ0rkDk0PBqR1tQ1utYB0+pTg7hDo=;
 b=FRDkeEcJbWKXNWXyNJaoCwbsKvdAGm7euu1rEsCxGLOqmdX4hKy1xJBO3AFM4PvQsZ
 Xyx/e+jpRM+PX3Jmh+e8zcEZVyAs6FSMaE+zgwDT08BtrIBs2p5oDW4PbBLx47QQIKup
 ELgRwW9xtlpCw0dYYVyFiQaJLncYkWZQNRTntyeV15Ndw2iBcjox3/DKrmJRtZh841sW
 ba9Ddq3Xh2rNuI4zNDZzNsRezUbkOv/CS6PkeOogrdyroQQ8+M4HpGCOGk4baIoWYEVF
 Yjr8R39iVSmq7SEqiBxz/oM+TuUZGGb0wSasrs4pZ6bG0oGi+4kBz5trGluFJmvIjR2b
 6Cqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=h80AaTSFvhmc0YkZ0rkDk0PBqR1tQ1utYB0+pTg7hDo=;
 b=Jb6ESIR1rj3Dz4P7kIRza5SfXFCAwnn71HmUOr0XFjj0Ovt55+x02d0PZYXxpPq9a5
 nDyv8aUOT7B05aByNOhtND1jsBHwVBQeOUEXq7VjaN27dgAK7mXwDD2uJUfOrd26w7jz
 nA1uXg+14g4M43xDvmshzyfwu4u3xyUhUH11eGspG9l2DfXfmolSWynkKkX/RsErn2s2
 wyNsebHYeKLOrsbk/5YZ1fNxLRTSPdirNpR4/FnqSh9YsKXR4SerbHTqXzrX2YUQzsbp
 FEKff63O4+hpzakPlOy48abuKWR4axJ2zNTNRk8JC7PvIsJu9r97RFLIVjw1UlGp/FW/
 joFg==
X-Gm-Message-State: APjAAAUy33uurVJgbYCrU/Aq5EnBt+7NVvNeF2CM3wRNIHD9hKz7Dt5Z
 bwNartol7l9mIQp1jDeqhr2vk8ma2uM=
X-Google-Smtp-Source: APXvYqyaAuWPIWUW27cEh9b/8XG86AYW25iim73AROxmyfihsGMAKh40FhwFmnLweKZpc1oOy3JGLA==
X-Received: by 2002:a65:6495:: with SMTP id e21mr23505403pgv.383.1561217036566; 
 Sat, 22 Jun 2019 08:23:56 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id l44sm12496777pje.29.2019.06.22.08.23.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 08:23:55 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 2/2] staging: rtl8723bs: os_dep: Modify return type of
 function rtw_reset_drv_sw() to void.
Date: Sat, 22 Jun 2019 08:23:08 -0700
Message-Id: <eaf48808898ee0a0bb14118bced5a247bd0dca7a.1561215416.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1561215416.git.shobhitkukreti@gmail.com>
References: <cover.1561215416.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1561215416.git.shobhitkukreti@gmail.com>
References: <cover.1561215416.git.shobhitkukreti@gmail.com>
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

The function rtw_reset_drv_sw() return value is set to _SUCCESS.
The return value is never checked when the function is called.
Modified the return value to void to remove "Unneeded Variable warning
of coccicheck.

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_intf.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c    | 4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index 0ea91a1..40313d1 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -46,7 +46,7 @@ void devobj_deinit(struct dvobj_priv *pdvobj);
 
 u8 rtw_init_drv_sw(struct adapter *padapter);
 u8 rtw_free_drv_sw(struct adapter *padapter);
-u8 rtw_reset_drv_sw(struct adapter *padapter);
+void rtw_reset_drv_sw(struct adapter *padapter);
 void rtw_dev_unload(struct adapter *padapter);
 
 u32 rtw_start_drv_threads(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index bd8e316..79d073e 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -705,9 +705,8 @@ void devobj_deinit(struct dvobj_priv *pdvobj)
 	kfree(pdvobj);
 }
 
-u8 rtw_reset_drv_sw(struct adapter *padapter)
+void rtw_reset_drv_sw(struct adapter *padapter)
 {
-	u8 ret8 = _SUCCESS;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);
 
@@ -737,7 +736,6 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
 
 	rtw_set_signal_stat_timer(&padapter->recvpriv);
 
-	return ret8;
 }
 
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
