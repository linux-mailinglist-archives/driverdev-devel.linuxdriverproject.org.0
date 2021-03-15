Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A94333C373
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3217383478;
	Mon, 15 Mar 2021 17:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YTdbsAtRtcAU; Mon, 15 Mar 2021 17:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77B5D83486;
	Mon, 15 Mar 2021 17:08:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 932341BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82F0D430C0
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xt0oDRevPs4f for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE3C840170
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:17 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id ci14so67356296ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TxxVqyIceuorpOi8mDumsd+tnZ6aJEtmu10IEoZHD1g=;
 b=vMPZe6md7QTo6knP5h/WcnThxjq16sKUaJWMnf+Ie1+3iHdZf8GdHRTfl1mLofm0dk
 EB7kIXDZi32RrwAm9cjLt3ftnWxks+ZKntUWftVruhgrQM24yhA26/PetAE029q24+jZ
 1ludc2zV8xgCBPQBGfJ34QM914VMVUUPsq9Dd/xWA8Q22XBLkh8onLKiOaSuNQn1UI7e
 Bghu5kLxthh5d0VUbjxF7HuDBPkjW4TlJRHu2lK8NfS4RGvhxwsNPbyt8qySRBkSq9nN
 WhcuBmrBsEMxcCca+74RgB3Ea3gfsdATrcHP1kwgEs3I3w4LxyeQFBNZMBl5mS4W0b0h
 GyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TxxVqyIceuorpOi8mDumsd+tnZ6aJEtmu10IEoZHD1g=;
 b=WCi4+NRWjkSeXeDvGc8KocN+GTPrdjXirSpJKjRl4u2aYhBKv5JYTm9cVYsYD8w0qk
 qN1v4wsqigiMwmjSyADRyRsf67Ykwo34H/R1bd11Ltan1aQaXsS+596fy0VcCR6Enpsw
 P8xizDjLvaEnuItV82jasYiA2cUyPQK9pfekCJ7HAWhmS4+zfrvnckhLjj3oWGncSSjB
 RrjycE8dS+fPKHxlEn1KbuyQHkPg/UmnC5G83h0ympG0tRP7aYnD43ITPuJCXI8l1kxp
 7eiqnabz4UZKGaDBMW9oypiXVle3hUH9jFwKuxBE3trf+x5tOMOCqIEWLuvi8ksXxXt8
 maTg==
X-Gm-Message-State: AOAM531toANRpJeE19CKbvcdzV6FXQwgRZW7z/5GETpaLtzVeK3DhqpH
 6btBSp4On5abDcq6nhljfYA=
X-Google-Smtp-Source: ABdhPJxIvlBuixo/7eB+L8dM5q2xMWzhQgkH3rfFRHzuXtFtKxtOA6NA/4JFFIXXX0smcboqGLkfoQ==
X-Received: by 2002:a17:906:dfce:: with SMTP id
 jt14mr25070353ejc.83.1615827976138; 
 Mon, 15 Mar 2021 10:06:16 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:15 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 10/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_MAC.h
Date: Mon, 15 Mar 2021 18:05:31 +0100
Message-Id: <20210315170618.2566-11-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #18: FILE: ./hal/HalHWImg8723B_MAC.h:18:
    +	struct DM_ODM_T *  pDM_Odm

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
index de7502232b7a..4ff8b7c28999 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.h
@@ -15,6 +15,6 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_MAC_REG(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
