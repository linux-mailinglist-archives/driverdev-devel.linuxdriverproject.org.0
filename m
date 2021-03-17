Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 452D433FB18
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:26:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B26BE4EDE9;
	Wed, 17 Mar 2021 22:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l7LOiVzl5WjM; Wed, 17 Mar 2021 22:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98C0A4EDD3;
	Wed, 17 Mar 2021 22:26:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37A3F1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 275186F9BA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBAdq9hKWMSO for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4100960636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:41 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id hq27so818008ejc.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0E4RzUSkghDN8Dj2CBZz9C8Hx592WesExdwZLE82RBg=;
 b=BfPnVM9UyJlOWZEGLEenMCrjzmkvoJArECRXi7TBCR3ujSl6MDxMKhj7ZlzH+ceOKi
 5ZNuxlpdbbrUbP+EC/IcbrIO9LMe1tf5J3fjE9gKJlu1bWo/GJe9CEdNtdHP8MUvfSMC
 DW0/ktgo4M3ajaOW253xdc7fa5GAn5OmWsnZx+QDoTMQ2oPLIgNsDMV92fjo0G7BbVL8
 JU3WzEvcSUUL9gHOFOhWB7svpu99zHqK4ttHQgdQP9rYSsfYMbK1yB3zpTYFjoa4O0sZ
 iRQHYPF4ESnDL9syMq4m/yA853awjIT/4iKQiFB7I3Hze5Py8bL2wtSUY0pZWaDKaH6h
 hFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0E4RzUSkghDN8Dj2CBZz9C8Hx592WesExdwZLE82RBg=;
 b=j/TFt46DNWQMow8qRq3TzHw9F3fCvH+F4o79iIcMn+AwnPbEZJRZU4QJahBHY/e9z3
 s0wDqVO7Z0OhQxCX1fOVSyadJfjLvs8GdA3w0md7ABjLO74tPzryHNhk8esOiKqafb8E
 +ktpw5WO3fxOFZgEfz7g8vY98caaE2/nmayrty6Pl1MIAoKnMuYvlmvdKxVpe0WmlfLd
 /R8sjZKej84WayH7cbtHmouAXvRcZkxKMYR9P4eZmgN8/REPpe+A2W84GPHyqbCbXJ68
 WFrRdms87khsQXj00zAh5Vcb1GcAm/Z+nsZWIUt1BjOOLqcKVXK0UFtbAKPh6AhdenDo
 BqTg==
X-Gm-Message-State: AOAM533T89fzdx9ZJL4hdCCJ0FWpzCoTklEN1OKGJ2a7an6taBJ3qdH6
 UD25h4hbz0DtciuYTQ2HG74=
X-Google-Smtp-Source: ABdhPJxeC+QrrwvHXPPRObFA18KyYdeXPXxbxdFOPt83Si7zuZoXTPch9Wv6TknngB70hGiptPSnJw==
X-Received: by 2002:a17:906:f0d0:: with SMTP id
 dk16mr38375598ejb.48.1616019699586; 
 Wed, 17 Mar 2021 15:21:39 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:39 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 29/43] Staging: rtl8723bs: fix names in hal_btcoex.h
Date: Wed, 17 Mar 2021 23:21:16 +0100
Message-Id: <20210317222130.29528-30-marcocesati@gmail.com>
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
in include/hal_btcoex.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 2 +-
 drivers/staging/rtl8723bs/include/hal_data.h   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index fb8bc2cf083b..3c03be210d87 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -11,7 +11,7 @@
 
 /*  Some variables can't get from outsrc BT-Coex, */
 /*  so we need to save here */
-struct BT_COEXIST {
+struct bt_coexist {
 	u8 bBtExist;
 	u8 btTotalAntNum;
 	u8 btChipType;
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 6a0c5626e19f..9512da2a7e95 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -434,7 +434,7 @@ struct hal_com_data {
 	struct DM_ODM_T		odmpriv;
 
 	/*  For bluetooth co-existance */
-	struct BT_COEXIST		bt_coexist;
+	struct bt_coexist		bt_coexist;
 
 	/*  Interrupt related register information. */
 	u32 		SysIntrStatus;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
