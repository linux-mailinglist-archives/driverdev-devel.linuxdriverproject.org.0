Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D30901A6BC7
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 20:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57D2084EDB;
	Mon, 13 Apr 2020 18:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLUK2q7EMHAD; Mon, 13 Apr 2020 18:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8909384B26;
	Mon, 13 Apr 2020 18:01:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20C3A1BF319
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A77220485
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jukIe2Mu2Vtg for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 18:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id BCD1320445
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 18:01:40 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id e26so10098166wmk.5
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 11:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D5Z8dE6ImcAXCyeDIiVasuREmY3KTQoR9IpkKMh44/4=;
 b=LkKPLLGnKbN6uNj8eGVWgc58SBnatJbKP+wJAlc3m98nOdSKl2ouCtfNLXlAtkth12
 GFkXHBlZt8QmbmV+JxT8w4Kif9hmFtGAFZ0k0GvZ/EjEYKbXJcw/p5K2hVODx9321Vhw
 RjMjMvcdrq0TEnUc+3UvDsF6v3vQWcTTK3eNM/6VKyuK3dRM6MceGY7YDy/kJCjlholR
 TuaqoDN6aSgUa/t8yTm5rMKdJHdbN6xbFMNi4C6l2u+/iP43DYWvCDetXVk6Pz29/arU
 krMsHVHEAEaXp/jVCpipG/nu603a428AlmHK8sQiZ4PAKjhA9PWlQcHT8HExUW8e8psS
 vBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D5Z8dE6ImcAXCyeDIiVasuREmY3KTQoR9IpkKMh44/4=;
 b=mkbegnXqO31rA97j6r2t7Dbu4hxH5PqRjhZkytyqYIY8RPYDDMoU/FLvbYX2B7ew8i
 //H9xGikPJsMMZfTR1W/E5Wa5tdOTWNMSpqx1c5EhIqUYfxDUOIuUEaF3gnvjHvuOJJG
 LZ7G///5GW/NABYFwakl/58sSiRuBmvLH5niF6uAPjHOeI6SagM0UT/hgm1JTScqtZ+5
 NwF1z7jbnD+Ni8nC/IjLKNCQdI8kPbRKWO1noIGGqQPDEGFmMJWdEDrdojedPNvGBK3E
 uOreIdqvKC/mNiGvUcAQZ0Lxv/O0RTlYn9uNQi97NYPBdqnEG40thYugjXk997uZtfAZ
 wuvQ==
X-Gm-Message-State: AGi0Pua3DjIUMdmTnuFpN0atCIUpBI0K/UpFVZeNXY4ITY4L2993rkOn
 SlTx77ktC47O/chBdetWs9Q=
X-Google-Smtp-Source: APiQypJHyeTWGfUue3wbfzPGKb804c1ZjjAg1iFK5H3NhowtMKoC5CFnuvNJYZmxrslpuL3de8EmKA==
X-Received: by 2002:a1c:4409:: with SMTP id r9mr20365172wma.165.1586800899152; 
 Mon, 13 Apr 2020 11:01:39 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-241.092.073.pools.vodafone-ip.de. [92.73.54.241])
 by smtp.gmail.com with ESMTPSA id u3sm6476181wrt.93.2020.04.13.11.01.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 11:01:38 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8188eu: rename define to upper case
Date: Mon, 13 Apr 2020 19:59:55 +0200
Message-Id: <20200413175957.30165-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413175957.30165-1-straube.linux@gmail.com>
References: <20200413175957.30165-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename 'FWDL_ChkSum_rpt' to 'FWDL_CHKSUM_RPT' as defines are normaly
named all upper case. Also clears a camel case checkpatch warning.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/fw.c                | 4 ++--
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index 486ee4bd4744..dbf7883f9ed7 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -111,7 +111,7 @@ static int _rtl88e_fw_free_to_go(struct adapter *adapt)
 
 	do {
 		value32 = usb_read32(adapt, REG_MCUFWDL);
-		if (value32 & FWDL_ChkSum_rpt)
+		if (value32 & FWDL_CHKSUM_RPT)
 			break;
 	} while (counter++ < POLLING_READY_TIMEOUT_COUNT);
 
@@ -192,7 +192,7 @@ int rtl88eu_download_fw(struct adapter *adapt)
 		rtl88e_firmware_selfreset(adapt);
 	}
 	_rtl88e_enable_fw_download(adapt, true);
-	usb_write8(adapt, REG_MCUFWDL, usb_read8(adapt, REG_MCUFWDL) | FWDL_ChkSum_rpt);
+	usb_write8(adapt, REG_MCUFWDL, usb_read8(adapt, REG_MCUFWDL) | FWDL_CHKSUM_RPT);
 	_rtl88e_write_fw(adapt, download_data, download_size);
 	_rtl88e_enable_fw_download(adapt, false);
 
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
index dd943c831d91..be30c9434a29 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_spec.h
@@ -817,7 +817,7 @@ So the following defines for 92C is not entire!!!!!!
 /* 2 MCUFWDL */
 #define MCUFWDL_EN			BIT(0)
 #define MCUFWDL_RDY			BIT(1)
-#define FWDL_ChkSum_rpt			BIT(2)
+#define FWDL_CHKSUM_RPT			BIT(2)
 #define MACINI_RDY			BIT(3)
 #define BBINI_RDY			BIT(4)
 #define RFINI_RDY			BIT(5)
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
