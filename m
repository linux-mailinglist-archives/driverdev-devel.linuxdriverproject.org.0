Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448F85AF1
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5CE186205;
	Thu,  8 Aug 2019 06:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-9dKgJhKDJD; Thu,  8 Aug 2019 06:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0135E86204;
	Thu,  8 Aug 2019 06:40:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF9EC1BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB2CA8817F
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88axZqnfszvH for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBC8D8817B
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:43 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id m9so42947306pls.8
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hlHOCwyoHrIaXcT/jV3hnUthLRjjbtwrUqTXlnq8IWg=;
 b=XPsB5aRH5SUxVGTrxr6W7IecCjLkCjAjQ5+asCditt4llv36oNrrgQxsR0EDqDJ21s
 GALwiwcxk+tou+jspDJWZ5fRDibYrIYAh6Cf2HVs1qY0K/4uYBAiFBjaKFoFIyGPxasp
 kAIEV124hplqxuMJKbOwcOXe2W94R7vvbmiuDGGspM7C+hPS9c/Q1SS+tzSPq3HqFIjx
 VniV2keUI7mC0h0D5FsjnpTlR7NTuNzhNmqLTcJy2sDw/PMZxT4VSSo1Tg71Am0n1Sdd
 vHBephn0bEI57XzvhD9jrqJYy0+1ELVlndnxZ7sDpCmmv6iPyMtfvKZEMbPWmgsQxwI5
 Il/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hlHOCwyoHrIaXcT/jV3hnUthLRjjbtwrUqTXlnq8IWg=;
 b=rjrLAAaFmHRW6SiXkPPbrMmTmCgHnYds0Uu3ZLij42TaL7WQ+gZEe3as3a/nKKNNd0
 nI7IGYI4smB5f+SXZ4yqGUkNUscVnLRCLstSlbA41CCmr3MPQ8i3ksguDYFJXCA7x9jM
 huzWO7j6xaFJ5VHWPJBsAI8skLWiWPyVf4Lw4eHEE75rW/lIX0AZxAFDzv+apzvcH2NC
 vdl3Od9ZD3PFeKNZuRnomRYTGmro4m9eHmcdxaDg6mBjdnhfdx7QsgyeY6saqTZxZ6po
 meQSSWifOLTcfTKVO7xfxayhH5axU0F0G99RFllbE6X/8fDQjR2d52fzLMgPSpHj0ZGW
 CZFQ==
X-Gm-Message-State: APjAAAW1u8Z1COPJBQBBmks3ueVAuFKjxRsOnib6r7XsQyXcHRRSQsih
 KsqhG3ga2Tj0LgjvfEYT4oU=
X-Google-Smtp-Source: APXvYqznxwwqgCcot2CP9bRJYijyUP4S1YAAKaYumuD67BuXtk20mPSF9pbMi0Qy+vkx+Jr4G349+g==
X-Received: by 2002:a17:902:788e:: with SMTP id
 q14mr12175917pll.234.1565246443566; 
 Wed, 07 Aug 2019 23:40:43 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:43 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: rtl8712: init_drv_sw(): Change return values
Date: Thu,  8 Aug 2019 12:10:09 +0530
Message-Id: <20190808064012.12661-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190808064012.12661-1-nishkadg.linux@gmail.com>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of init_drv_sw from _SUCCESS and _FAIL to 0 and
-ENOMEM. Change return type from u8 to int to allow this.
Add a return variable to streamline return of error codes of called
functions.
Modify call site to check for non-zero return value instead of _FAIL.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c   | 26 ++++++++++++++++----------
 drivers/staging/rtl8712/usb_intf.c   |  2 +-
 drivers/staging/rtl8712/usb_osintf.h |  2 +-
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index c98acf4f6fff..be3e5bdea495 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -294,30 +294,36 @@ static void init_default_value(struct _adapter *padapter)
 	/*misc.*/
 }
 
-u8 r8712_init_drv_sw(struct _adapter *padapter)
+int r8712_init_drv_sw(struct _adapter *padapter)
 {
-	if (r8712_init_cmd_priv(&padapter->cmdpriv))
-		return _FAIL;
+	int ret;
+
+	ret = r8712_init_cmd_priv(&padapter->cmdpriv);
+	if (ret)
+		return ret;
 	padapter->cmdpriv.padapter = padapter;
-	if (r8712_init_evt_priv(&padapter->evtpriv))
-		return _FAIL;
-	if (r8712_init_mlme_priv(padapter))
-		return _FAIL;
+	ret = r8712_init_evt_priv(&padapter->evtpriv);
+	if (ret)
+		return ret;
+	ret = r8712_init_mlme_priv(padapter);
+	if (ret)
+		return ret;
 	_r8712_init_xmit_priv(&padapter->xmitpriv, padapter);
 	_r8712_init_recv_priv(&padapter->recvpriv, padapter);
 	memset((unsigned char *)&padapter->securitypriv, 0,
 	       sizeof(struct security_priv));
 	timer_setup(&padapter->securitypriv.tkip_timer,
 		    r8712_use_tkipkey_handler, 0);
-	if (_r8712_init_sta_priv(&padapter->stapriv))
-		return _FAIL;
+	ret = _r8712_init_sta_priv(&padapter->stapriv);
+	if (ret)
+		return ret;
 	padapter->stapriv.padapter = padapter;
 	r8712_init_bcmc_stainfo(padapter);
 	r8712_init_pwrctrl_priv(padapter);
 	mp871xinit(padapter);
 	init_default_value(padapter);
 	r8712_InitSwLeds(padapter);
-	return _SUCCESS;
+	return ret;
 }
 
 u8 r8712_free_drv_sw(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index d0daae0b8299..ba1288297ee4 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -389,7 +389,7 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 	}
 	/* step 4. */
 	status = r8712_init_drv_sw(padapter);
-	if (status == _FAIL)
+	if (status)
 		goto error;
 	/* step 5. read efuse/eeprom data and get mac_addr */
 	{
diff --git a/drivers/staging/rtl8712/usb_osintf.h b/drivers/staging/rtl8712/usb_osintf.h
index ddfa405d0c9b..b649adedfe7c 100644
--- a/drivers/staging/rtl8712/usb_osintf.h
+++ b/drivers/staging/rtl8712/usb_osintf.h
@@ -28,7 +28,7 @@ void rtl871x_intf_stop(struct _adapter *padapter);
 void r871x_dev_unload(struct _adapter *padapter);
 void r8712_stop_drv_threads(struct _adapter *padapter);
 void r8712_stop_drv_timers(struct _adapter *padapter);
-u8 r8712_init_drv_sw(struct _adapter *padapter);
+int r8712_init_drv_sw(struct _adapter *padapter);
 u8 r8712_free_drv_sw(struct _adapter *padapter);
 struct net_device *r8712_init_netdev(void);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
