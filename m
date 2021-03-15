Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A9B33C3C3
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C02A4E578;
	Mon, 15 Mar 2021 17:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwDKCEsMIFqb; Mon, 15 Mar 2021 17:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5F6447489;
	Mon, 15 Mar 2021 17:13:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA1A21BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C75D540170
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yY0SJc1k3PO3 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A1E741503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id mj10so67516116ejb.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZpRB2yatDf6eOjAyEWqvNtb3nar1zyjAy3LmF01XF10=;
 b=Br26n15fqjR3fFhdneVmieGwV/6p6zNyVX/LBRx2AkhCEXAtPMcqz39fAYady90PgD
 i/iAaP+e9wT6mysaDtE3W7ZPujLPXsp05C+fS0r1Xi90Hc2m/zDH3T5l031EC0AuNTrH
 x4A22Znpv/nOPLbxEJs8oO6JwKuxLH/GrgFJMwITeRqsQieIh5MfMj9NYrJbBgnyreCg
 ZVdUlGRHdOla80MiT+i5RUWTyIieRSTt9XSLu/GVuw0rLcn0bfiyPmuE4vdctthwhfCR
 4JVIJVniBB/aGSz6sWa94D25NLMhs0WJSMCThmeCChirWUWDlgQ8PQDUucn1XNJVuoBD
 sIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZpRB2yatDf6eOjAyEWqvNtb3nar1zyjAy3LmF01XF10=;
 b=AiG54SnDjwZo8MQ8jKeaZUA2T0EKYy3bgUQxGrN+1iO53Aqgr+BDqwy2olKwwzxuoZ
 YzU9LVQc0Oqb+Mz7eDpVXqNeGTznsGpgSCpNBfEc9P8VGxbFQpMYDZRdGosmhbmX3s/N
 BeoZBOH2BckqV0yOE9rYl0VSmJ0H5MbudQMz13x5cWyglzYMFqqg5dtptf2VMhjQ7iRC
 KOIoJS5Evg+Luo3tqIeu8UEaEmtix5Kj4j3nhfBTSyBpe49U9ebqnYj6VDpGXGFtM16l
 mdSkBOT77nXZI1ewJgjidbLJWC/4LoC2fxhkmnSo+9ESQmfbGp34mdazheax7lFpGReD
 Dhig==
X-Gm-Message-State: AOAM531Nt+Q+7KTs7byQ1S+yNxR2pw1r29tZLx5I6ho1pqEEIzK0ikjr
 4/LzS6OeM/2jluoHftzH3Lk=
X-Google-Smtp-Source: ABdhPJyIO8HGnn9Tqiu44Zb5eBHuuMyMXR9xoCFCm9pHI66TqezmnX/YlW6JOkmo/eODXDTXTMLioA==
X-Received: by 2002:a17:906:d0c3:: with SMTP id
 bq3mr24296551ejb.424.1615827999389; 
 Mon, 15 Mar 2021 10:06:39 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:39 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 38/57] Staging: rtl8723bs: fix spaces in HalPwrSeqCmd.h
Date: Mon, 15 Mar 2021 18:05:59 +0100
Message-Id: <20210315170618.2566-39-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #116: FILE: ./include/HalPwrSeqCmd.h:116:
    +	struct adapter *	padapter,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
index 56c87ed17e48..7e8c2e511d0b 100644
--- a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
+++ b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
@@ -113,7 +113,7 @@ struct WLAN_PWR_CFG {
 /* 	Prototype of protected function. */
 /*  */
 u8 HalPwrSeqCmdParsing(
-	struct adapter *	padapter,
+	struct adapter *padapter,
 	u8 		CutVersion,
 	u8 		FabVersion,
 	u8 		InterfaceType,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
