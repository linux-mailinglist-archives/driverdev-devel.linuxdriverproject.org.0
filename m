Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EFB85AF2
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0121881E9;
	Thu,  8 Aug 2019 06:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UOOFeaUOVv3; Thu,  8 Aug 2019 06:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 607998817B;
	Thu,  8 Aug 2019 06:40:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 426BA1BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3BD5386B68
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PLwcXK4F9bib for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DB2D85B7C
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:46 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u17so43507803pgi.6
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HWWPf+4wANm86Uirv9R4mrhnvyr8cROrrNOXJ4z3un0=;
 b=Qp2rs+TM8go0zWFgLHlJljqsWIalpxOQWhfaEJhYHuzitT6a2Zj2FNIKbieaHB2I5U
 +jXYU/44j8ZTjmB6lEJ08h1kNOjqBCYRBrJthYHmlJOtFS5ycXwyHjuwQfTkjuVib9Mm
 qmrRPlIW84YmkhoaLfEKzW/ReaHwbeA4K/as1LosEqx0dFZb1IflZc0X9pmyc1sJf6BB
 v+23wMh7JlkhxWYf4xRS7m3Oi+0hXa6XudGupYsMU4aZe3xnWS6izQnR4niz3/nQTQmE
 RbDc0jyr2CK77YKbp/3jKUsZFru0q6o/yFokD6AmsznU3BEloR2RK4KMAa272wxnfqvL
 HOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HWWPf+4wANm86Uirv9R4mrhnvyr8cROrrNOXJ4z3un0=;
 b=dHqcUN4ix5FNcxK0QNOoXeF8exyV1c9xk0Gbw5QBdo+ra7GEHHsrNAZMf0Njekshy5
 ko0nmIAPfY37jZP39tH1u+LBBzQxgY0IrzhfW3oHpPyUopMJO/+mJWLNDZeBuTK7wEkn
 dUWWSdjh2yjdqJIXHaVT4NexsODxIKQFawLHueHsDVdB1qB1ehOcDTJleypcZgjv3NvB
 drxxk76Pg0VQTrqltKV8syES3LvgdNUMwLmKDwpsWOjNeLEBtKnRaWZOmhJd12mMFNNK
 yNmJdYyo4gZSeihEljiiuqvvSQ3oVEQDXP3EwiGxHQ96LJnzk4WHN22l3ddCr0UNfK9k
 scdA==
X-Gm-Message-State: APjAAAUSS80hOG34W3a24hsyHhVxTn88wkNr+5gK8jUQn+jsEWPIY3/L
 +FKyqt+xgvBfXkVMPySlo8c=
X-Google-Smtp-Source: APXvYqz+UaYSt5ay/dxBHQIN1GD9rmZ4nojVg9caIy3sW5f6A5o2idT717v2ddJuxtugwaSQ0lZWqg==
X-Received: by 2002:a63:89c2:: with SMTP id
 v185mr11207495pgd.241.1565246446245; 
 Wed, 07 Aug 2019 23:40:46 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:45 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: rtl8712: r8712_free_drv_sw(): Change return
 type
Date: Thu,  8 Aug 2019 12:10:10 +0530
Message-Id: <20190808064012.12661-8-nishkadg.linux@gmail.com>
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

Change return type of r8712_free_drv_sw from u8 to void and remove its
return statement as it always returns the same value (_SUCCESS) and even
this value is never stored, checked or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c   | 3 +--
 drivers/staging/rtl8712/usb_osintf.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index be3e5bdea495..0c3ae8495afb 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -326,7 +326,7 @@ int r8712_init_drv_sw(struct _adapter *padapter)
 	return ret;
 }
 
-u8 r8712_free_drv_sw(struct _adapter *padapter)
+void r8712_free_drv_sw(struct _adapter *padapter)
 {
 	struct net_device *pnetdev = padapter->pnetdev;
 
@@ -341,7 +341,6 @@ u8 r8712_free_drv_sw(struct _adapter *padapter)
 	mp871xdeinit(padapter);
 	if (pnetdev)
 		free_netdev(pnetdev);
-	return _SUCCESS;
 }
 
 static void enable_video_mode(struct _adapter *padapter, int cbw40_value)
diff --git a/drivers/staging/rtl8712/usb_osintf.h b/drivers/staging/rtl8712/usb_osintf.h
index b649adedfe7c..2e512b4a564c 100644
--- a/drivers/staging/rtl8712/usb_osintf.h
+++ b/drivers/staging/rtl8712/usb_osintf.h
@@ -29,7 +29,7 @@ void r871x_dev_unload(struct _adapter *padapter);
 void r8712_stop_drv_threads(struct _adapter *padapter);
 void r8712_stop_drv_timers(struct _adapter *padapter);
 int r8712_init_drv_sw(struct _adapter *padapter);
-u8 r8712_free_drv_sw(struct _adapter *padapter);
+void r8712_free_drv_sw(struct _adapter *padapter);
 struct net_device *r8712_init_netdev(void);
 
 #endif
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
