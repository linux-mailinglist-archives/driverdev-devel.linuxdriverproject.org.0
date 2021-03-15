Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 681BE33C3D4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE5BC4C9E3;
	Mon, 15 Mar 2021 17:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7X6OeypeV9b; Mon, 15 Mar 2021 17:14:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE67847489;
	Mon, 15 Mar 2021 17:14:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD39C1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB6F24B1F9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1sUCFC67FzpE for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E04447CA5
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:44 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id lr13so67563190ejb.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VvEP4MeMIuut9HReLGN2jDCS5MpFNLWeJXfhzzB/0PY=;
 b=LTzBEioFe4IptQ4dd5FQkf8mvcuXZvIS5gH43JuDCIXv7xtquErbZ0Jv2QRNYjw54o
 zL/27nY5YOaLqiUBCUcG/j+/Mc36CWuwfc3DrjyRp3geeBp6KcktzIrTIU42PhqiR53C
 mBQ9qJ898inAhqysWTT3Jz/mTWWrf13FqowQbhFJ4ptxpfmLOCbhvpzqsfJ8DmlKlgOB
 kfW67FF+RznMntYhVKVjAan8A+LYU1EWncnR2hwPjerX5UnQrOMbKPUK4SyRBKq4jgYo
 P/QYLv6HN1vp4dYN5QxBNDlIy2hPbotnjXzcUXOG7heow0dndA/s0NWDNkIn3dDAf799
 6rZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VvEP4MeMIuut9HReLGN2jDCS5MpFNLWeJXfhzzB/0PY=;
 b=LPxu13Q6H1c927ARwsAPH7cj1R+uLAzxPVmGVO5z8yPS8xyNDtcskaPR0fZuoSv0Wm
 dlretWe9mQJhGLt0899czf+GLVhd1buA4QylehSRr+80euRcRoKdxLGQGfFenOn29JqJ
 JSaM1y4oDgFCk2ReJE69A86h2+S7ji+zsrh0y+Tnlv+8ItR502fMqtNgNTMQBYbweXFi
 7/fEAj50tZlATz1iyQe4aCEcFryXDspJMqxbgJDiduc4/1ujWr9hwl5jq9yHhPyo/TEm
 Zzf5avZ7+PjDfkcReAcie86Zav/DtILsJp0WKAgKBMrgrJqydJHkKL+b0nGzYht9r41R
 HNrg==
X-Gm-Message-State: AOAM530qkDWqVLp3qz6VPJI6Y1PEA3HBwCaxOWaJfLtkNxUFL8mPHDVT
 sHpTRXn7p1jAgo9hnU8f72Q=
X-Google-Smtp-Source: ABdhPJwIw/hhlYz/wRmp7Xoaudv2PCtgXxVTEVb3TWWxBnE158Jv4eFtn1OzkoxGuHhxhGAk31UjnA==
X-Received: by 2002:a17:906:144d:: with SMTP id
 q13mr23805946ejc.458.1615828002667; 
 Mon, 15 Mar 2021 10:06:42 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:42 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 42/57] Staging: rtl8723bs: fix spaces in hal_com_h2c.h
Date: Mon, 15 Mar 2021 18:06:03 +0100
Message-Id: <20210315170618.2566-43-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo*bar" should be "foo *bar"
    #283: FILE: ./include/hal_com_h2c.h:283:
    +void rtw_get_sec_iv(struct adapter *padapter, u8*pcur_dot11txpn, u8 *StaAddr);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_com_h2c.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index 8970c59388bb..a6eab87f1745 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -280,6 +280,6 @@ struct RSVDPAGE_LOC {
 #endif
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
 void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip);
-void rtw_get_sec_iv(struct adapter *padapter, u8*pcur_dot11txpn, u8 *StaAddr);
+void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr);
 void rtw_set_sec_pn(struct adapter *padapter);
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
