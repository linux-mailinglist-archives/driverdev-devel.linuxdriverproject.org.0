Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D453C33C3B8
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:12:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B5F34E4BC;
	Mon, 15 Mar 2021 17:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vURm69-qiDAX; Mon, 15 Mar 2021 17:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5000A4D107;
	Mon, 15 Mar 2021 17:12:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89F191BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79B4747A73
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92SyM6nf5YtL for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A602447489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id bm21so67502385ejb.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=D2JlOrPZQ+EH2F/18WPYjSM19giJ5CfG9/HbrNsUgAU=;
 b=mPXSr3ZH4JZTnFMMJBtd3TLTyWgfupW248snconeBhoraVvOwBdl0vcRKXb1MVnOgI
 cYjh/y2wpHtQgXa39Hhggg3nTHI6a3TzctKJA8U0EdQojOTbiigMQod8m3BBlBi1B59D
 xLWVFQdkFfv6n5jsgwcHVe8YsWBlC2/+AYeYIBpX5HQCeVQINUk5/VcGPWn/pZcRbvaO
 RiTqIzleESgWnk2TivxRg04yA+P0gFhjwiRo6EvV87lyxslhz9a91g1YV11nKpfG/1yN
 Yqf2eyn4brxgjLg5GAcF2bFEzFs7Yryln8uWRq6IX+oTSL1IsqQFr6AW6f9dcS6l1Ouo
 dmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D2JlOrPZQ+EH2F/18WPYjSM19giJ5CfG9/HbrNsUgAU=;
 b=ccEygDo3KzM0UcaSMMD6XmPa1tvZ01n0kfKJZBi0r4OViRYD63KKBQn76MVvfSKhr3
 C9yByFGmj2Dee2aoubfhB5PaZfMhxuiBTMsFmYH465ZQTejSqm32qEH1Mrsks3sPzF1f
 a7vMbJ4JY6A7659BhLulkjjo2Oh5Zd/ezidGqdshyUBxMpAFKYdAXb3spLrm3uOGH51g
 PiEV0MIvIZXUmoGIfLdT2iWqXgGmwo0K+z+qe3cTFPYCXRMUR2xsVaynmQEYXH+Vp7Ie
 bAr+KM2QZcntOa5BoF6wfGRZok6FRoGCZ+M4CjC++GbntuWOjX8ZeJzV6Zf8MixyQekt
 UOvw==
X-Gm-Message-State: AOAM533nnJGj+arAGumPy82DG25wa6tmTTsH6Ab1U42+3m8ofRABs4zt
 2HWGzexqRdmf2j7wOwhUX6c=
X-Google-Smtp-Source: ABdhPJy1vxb0Gw7ctfUV71kh5uTswiSOjcvsLf13nfnboNpcO6GxZrhO+Cc0GgWFE4ouhGx1JsPIJA==
X-Received: by 2002:a17:906:95d1:: with SMTP id
 n17mr24118118ejy.394.1615827995991; 
 Mon, 15 Mar 2021 10:06:35 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:35 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 34/57] Staging: rtl8723bs: fix spaces in odm_debug.h
Date: Mon, 15 Mar 2021 18:05:55 +0100
Message-Id: <20210315170618.2566-35-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #165: FILE: ./hal/odm_debug.h:165:
    +void ODM_InitDebugSetting(struct DM_ODM_T * pDM_Odm);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_debug.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.h b/drivers/staging/rtl8723bs/hal/odm_debug.h
index adb63ecc0b3e..22f0e37456e2 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.h
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
@@ -162,6 +162,6 @@
 	no_printk("%s %p", title_str, ptr)
 #endif
 
-void ODM_InitDebugSetting(struct DM_ODM_T * pDM_Odm);
+void ODM_InitDebugSetting(struct DM_ODM_T *pDM_Odm);
 
 #endif	/*  __ODM_DBG_H__ */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
