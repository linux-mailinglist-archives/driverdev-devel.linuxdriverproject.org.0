Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBCF33C3EA
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F7666F56F;
	Mon, 15 Mar 2021 17:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12r7l4KB2_lJ; Mon, 15 Mar 2021 17:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E89B06F558;
	Mon, 15 Mar 2021 17:16:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C87E21BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3B9A4B524
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dp2KooERrhpl for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C76F847489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:55 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id bf3so18198171edb.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5NN0YX23lAwBXL3av3SmtX49esqIx8FUTGyMlzSQ0kE=;
 b=EVf2DG4m1zv86CHtuknStEOYfYquSQEreuPNIPEWjhegQuMaWuTeKjbJE4HskMaVEQ
 qK31X1Vnvxu9OYD7x2Okjb++mOwnzrGVdsalL9Fno1uOuIJ0j0PwZBidHvqG+wVsOjMT
 8p8dZQS4m1VffDc42J85gzhx/Q5cGztd7Jqr0NDw0GVXQHUca2qEbn3lLo89K1eUEAMB
 z2ODBNPruYWzpz0O39hDz8Aj9Gh/xYDspkc0gPRmBIFw7jiStbcyT6TK+YnpActWvbp+
 iAgv6twTTVjM11CqZWuXric/khtIHWViJ9u4wdpp0v9i3ZYRslVF8loQnt3y1xwY8FiQ
 b7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5NN0YX23lAwBXL3av3SmtX49esqIx8FUTGyMlzSQ0kE=;
 b=PZ9OPFWkG5Q2BUALdDOwbJHLbeczLWHQx9IBJ90uzXEAXFz6SS4Cs9NO0ncxp5S/uJ
 Jz0WeZ9Vu3fof5RgUzarXkMlCEg3k01o8KXxhKPMfYmiorhu488Sbx3jOVm0Fkqw0KVh
 kzS5nFMsJ+LzckKryHYozQeoa+BFcR6vOF/5sTBrAL27n9Z2R4scQ1E2554AGwrw2djb
 crqaXapSvaczSQiGz351Q2a88s136bi2wLsTGf1iu16cW77GQVc8pAI9qIUgLP1I70yK
 QiSR0Q1jnOOmQJ15OExmhnW+GOh6Cg7xQ7VQDWJYWEezyQQBGgUEz26RowZq0nAxsmDa
 THcA==
X-Gm-Message-State: AOAM532iYWfz6VOSflxhsaLaPfghatAR6NzwrtXfs7nTRXb6MeXZBj/z
 tdRDbt9uf0SRLSR6znJsucJOCkMQKVw=
X-Google-Smtp-Source: ABdhPJxvOO29ay9p15/Lbz0RyM+PPl5FLrNcKUYlqFnLR7Abfdnvs4jl8cm9PXX/hJ5u8/33CXEsnw==
X-Received: by 2002:aa7:da97:: with SMTP id q23mr30600233eds.180.1615828014088; 
 Mon, 15 Mar 2021 10:06:54 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:53 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 54/57] Staging: rtl8723bs: fix spaces in xmit_osdep.h
Date: Mon, 15 Mar 2021 18:06:15 +0100
Message-Id: <20210315170618.2566-55-marcocesati@gmail.com>
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
    #28: FILE: ./include/xmit_osdep.h:28:
    +extern int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #29: FILE: ./include/xmit_osdep.h:29:
    +extern int rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/xmit_osdep.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/xmit_osdep.h b/drivers/staging/rtl8723bs/include/xmit_osdep.h
index 0e0d8d150f78..e781cd5dfd01 100644
--- a/drivers/staging/rtl8723bs/include/xmit_osdep.h
+++ b/drivers/staging/rtl8723bs/include/xmit_osdep.h
@@ -25,8 +25,8 @@ struct sta_xmit_priv;
 struct xmit_frame;
 struct xmit_buf;
 
-extern int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev);
-extern int rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev);
+extern int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev);
+extern int rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev);
 
 void rtw_os_xmit_schedule(struct adapter *padapter);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
