Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC3C33FAFC
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:23:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C25F74EDF1;
	Wed, 17 Mar 2021 22:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sQL-8iBz_8HG; Wed, 17 Mar 2021 22:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C14404EDD7;
	Wed, 17 Mar 2021 22:23:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 467981BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D67A34EDE0
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWfiNIG_VVTJ for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1478C4EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id u5so817805ejn.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xmK7ILk3tsDukoMtNrlOX4Em62jtxjhml0Q8Y+6zrGw=;
 b=qW5ZUierX4/sW5dakYe/11I2JKLjNF1+XhJjP1rGq3iU/F3WzrO9+Xtzw+tjcDs12r
 qdfHd8zW5RGDJ7L8BM5WrgBGam7TsfC7ZFZ9M+ziku8GX7vJC/QhSR8ZBZmqFQcYRbDh
 7BkliyBOaFvE62M5gVTcDO8wAhhA0DiCquLFEZ6SzB4MStMBTM8qTqjmz3/WiMPKUnIT
 Lu4q3ZD5cDFSlrHupW+bWvTBfLKV3fY0cRpiHmEdYBiVOYvogXeSidcJdJg+YgOKJ0gE
 3gWdBGKvlTbe3YKnj8BFYidjzRP++TmpMxUHaDsT+deMH7TtRnyKQ0/+k0P+LRmYEaPn
 hbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xmK7ILk3tsDukoMtNrlOX4Em62jtxjhml0Q8Y+6zrGw=;
 b=oMO1UeGB9IgcWy3xrVyrgda9ntdRqHtYM/csap/GET7zf6SdsSc+WD58N/h8Vu9Ul6
 DiRLrRE5GhtptQlEXOCED1cdJS2bKTRQtWc8fZ8xnK6IODuw8PwkkEpEWnT7qY1Q99+f
 ZYFzuWNIG4a0JFuWqFyGhqP2x39TkN1xPqu2qrFAqVMV8hA/Tt8d1jrWF5hvcZDAwLBx
 Nl6T+/TTrktL8zByIhiJRAgXWMP+++/egYGIUETRV04lAOu2ggrJ/60cfMyR1HrewLxH
 aLIrZaBYbm7K6OAk6pSIEwqSneDAr6xxeOiYd0fp6wHH3H5Kw3WfegANbXrrx9rnWGfn
 vRSw==
X-Gm-Message-State: AOAM532CpzEU8r+8/xBgH/Rx6ZIFjt2ro+EEQPOrHTtQF5TNU2APX+5p
 tDMMi88qBGJ39PBBt+3jVwk=
X-Google-Smtp-Source: ABdhPJx9K+2iY5TryF2Nxu651QMU2QW6I/9C09hfw+3i2p4mcvAMl32EWR1RxMPuGRp//I2F1vxdKg==
X-Received: by 2002:a17:906:37db:: with SMTP id
 o27mr38471503ejc.60.1616019685358; 
 Wed, 17 Mar 2021 15:21:25 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:25 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 10/43] Staging: rtl8723bs: fix names in rtw_cmd.h
Date: Wed, 17 Mar 2021 23:20:57 +0100
Message-Id: <20210317222130.29528-11-marcocesati@gmail.com>
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
in include/rtw_cmd.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index dd01c3c76584..6f3b018463e4 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -158,7 +158,7 @@ enum rtw_drvextra_cmd_id {
 	MAX_WK_CID
 };
 
-enum LPS_CTRL_TYPE {
+enum lps_ctrl_type {
 	LPS_CTRL_SCAN = 0,
 	LPS_CTRL_JOINBSS = 1,
 	LPS_CTRL_CONNECT = 2,
@@ -168,7 +168,7 @@ enum LPS_CTRL_TYPE {
 	LPS_CTRL_TRAFFIC_BUSY = 6,
 };
 
-enum RFINTFS {
+enum rfintfs {
 	SWSI,
 	HWSI,
 	HWPI,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
