Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A5533FB0A
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:25:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F7FA4328D;
	Wed, 17 Mar 2021 22:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGLc7la--uTD; Wed, 17 Mar 2021 22:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E22AF43277;
	Wed, 17 Mar 2021 22:25:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCD071BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCD5C6F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPgrPLTkLsuX for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A01160636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id y6so4223634eds.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZvGXKi0/Tt1FYP3+M1pQ7n6yNmcRGITL9SH6yeLkYcc=;
 b=A9Ys+22u9OMi46mXd77xtpnWF/Q4q83s1EGjhGY7v122XRtVB7qDannVJNJl2ky+Kr
 E2m20wDIZi5GY+cYbZEIYidM25Mi2B7vbqaYEUiWItoWTgaaAiZ/TIaQhWuU08malQZd
 J76NDwwplD3mxDVNm4gtLXrAUMVh9G2zsnci/bAvgZ6G/k+mhy7LlAAH+rdCF2iCLzYR
 KaiS9a8pLE26SGHAvkoC/1Ie/V6L3wiJAaaOBi5BVMkz+BfPvMZF+CDiwfAoTIM0STge
 S4AZr0Z4FlG9llHsc9Bj29OtZaKYQOzXLuvIWdNLcpwjpJ6zlD0XAVUk/KeLEftGXETc
 baNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZvGXKi0/Tt1FYP3+M1pQ7n6yNmcRGITL9SH6yeLkYcc=;
 b=q4T33spNxTmCXnMax+u6A7TbRSMZ2UJ/k7tK1pKa+MYU1mK+ahT5S2ao1cvxxlK/0p
 0M1SwHFb8zdUxlThh9kYeLkHrdqf1oAd22S/JfnMINYMdEeXZjtdh6lYOSyjs+vjSIxW
 aJOdLNpDOvCBS7+N/bEuGJsmr2HD+NEZVJ4nePYIt5ApoJagTx+BSYNDc8pEck+nMBxH
 K9mBa30Ymrs0CsIyGCvFWeZw3mfrQn1MkHECk7VunS+8lfBGo4uLxzclbzZmtj3dcqO5
 5zJr/GHclVUR+j5i2tu6fdjYYRch184iv5zHeALVhJukZ8iZV/ZQL6VxOY4dqT9EOv02
 5LbA==
X-Gm-Message-State: AOAM533eMBWfo7OI6ghztfl9JyALMrRIHFDk9o7DAE84kZxT2XVyFTJL
 DG7UftVVq1CvPt1PZCiWGBk=
X-Google-Smtp-Source: ABdhPJzckEMusK52FVpK18uH9dxCDuHzQgOJo84hxf+7wHL/a3ctmvs89ZcEiQfVtwTsHhC7OQhpZQ==
X-Received: by 2002:aa7:cc98:: with SMTP id p24mr27253113edt.187.1616019693213; 
 Wed, 17 Mar 2021 15:21:33 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:33 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 21/43] Staging: rtl8723bs: fix names in rtw_xmit.h
Date: Wed, 17 Mar 2021 23:21:08 +0100
Message-Id: <20210317222130.29528-22-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_xmit.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_xmit.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index b482821c9af8..f7d6ac0ff865 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -83,7 +83,7 @@ do {\
 
 #define TXDESC_OFFSET TXDESC_SIZE
 
-enum TXDESC_SC {
+enum txdesc_sc {
 	SC_DONT_CARE = 0x00,
 	SC_UPPER = 0x01,
 	SC_LOWER = 0x02,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
