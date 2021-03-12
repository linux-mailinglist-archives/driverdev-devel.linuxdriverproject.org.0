Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A9433874E
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:28:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 748C26FA3A;
	Fri, 12 Mar 2021 08:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lVobAReALGbW; Fri, 12 Mar 2021 08:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D99726F963;
	Fri, 12 Mar 2021 08:28:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6DB1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F57A4150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id czMlKrtWHnGX for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A0AA40025
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:55 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id d15so4300605wrv.5
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZzHUHkmSdY/D0HuvWeLnAoXRQmnzdv/bI/ZC3Xp6jWg=;
 b=aXvTB+GYLrnlJ9axD4O2IchxMasIdu8Zk0IlhxsbncAYghwmTVz+TScfT86YkcHG5d
 QBu+ilP15zc/7wHLPEAnK+p1JlECsoZsY8Ra+wJcFix8tiruX1PwB64niEIo1JhQAAQm
 ZzLYz1+VIntKaNWOl6DmS9uouLB36POGPU6DMPuvVfFlTaOQDbtOcPuiG+N6KEg3FjvM
 XVvwOsjAJS9oW5I89eKy1dUKaJCPPe6R+KAHogktf3aq3X0YYymttsgte6mp/qLPNhza
 wZ1wlSgME5OVpb39CVms5733mJ72KShSgiB4I+URiUIIBhTUu+fc7tfDd83I0PX/KZKR
 q/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZzHUHkmSdY/D0HuvWeLnAoXRQmnzdv/bI/ZC3Xp6jWg=;
 b=cpSJM83VUkqH3CMQ4Z9JMaqenOAfG2070X9GQNOwF5YPpkjow1oFH1Yiq2RZcNWyQ3
 k2EzQROabLqj+2lgQg6FiYFcUU9sVHN7bKHf3EjVhQzkGOQ1dELHY6q74ZAH5sSDuzUz
 eehyl+hmW4KP6dTkIvZfrc11JqcwKtoqCsvfzHUR6+iu/h11BhOWdzqrX1LlGH911+5D
 1itPCUjf9HGm9+4N3vVNNQQBYj3M5Ia8g74hC22JPudIOjj+RdQLaDzAqpdJW/80FAiI
 M6luhLaOzXLSL+Bnh7CwANZtteoromKhkDm6v6ZQ8pDYjAv/975DPA+rs+I3kXvl7FH7
 RX2A==
X-Gm-Message-State: AOAM532giRH+ESuzOE+Uddf7iaivphyU2M004SlHeHQMQKfvltbm7o8T
 h61hNbPs0VRbc1NjhAh/4+M=
X-Google-Smtp-Source: ABdhPJwR4+EVXI8itoXrbzSYDjm6YqEAKn8vYKfJdIJeO+oBSKGUBzLoQ3CLUaVxwgYs5I5ZYnem7Q==
X-Received: by 2002:adf:9d82:: with SMTP id p2mr12855705wre.234.1615537613597; 
 Fri, 12 Mar 2021 00:26:53 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:53 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 10/33] staging: rtl8723bs: remove typedefs in rtw_eeprom.h
Date: Fri, 12 Mar 2021 09:26:15 +0100
Message-Id: <20210312082638.25512-11-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #45: FILE: include/rtw_eeprom.h:45:
    +typedef enum _RT_CUSTOMER_ID {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_eeprom.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_eeprom.h b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
index 78f34f6cebb4..fb619e83217a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_eeprom.h
+++ b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
@@ -42,7 +42,7 @@
 /*  Besides, CustomerID of registry has precedence of that of EEPROM. */
 /*  defined below. 060703, by rcnjko. */
 /*  */
-typedef enum _RT_CUSTOMER_ID {
+enum RT_CUSTOMER_ID {
 	RT_CID_DEFAULT = 0,
 	RT_CID_8187_ALPHA0 = 1,
 	RT_CID_8187_SERCOMM_PS = 2,
@@ -90,7 +90,7 @@ typedef enum _RT_CUSTOMER_ID {
 	RT_CID_819x_ALPHA_Dlink = 44,/* add by ylb 20121012 for customer led for alpha */
 	RT_CID_WNC_NEC = 45,/* add by page for NEC */
 	RT_CID_DNI_BUFFALO = 46,/* add by page for NEC */
-} RT_CUSTOMER_ID, *PRT_CUSTOMER_ID;
+};
 
 struct eeprom_priv {
 	u8 bautoload_fail_flag;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
