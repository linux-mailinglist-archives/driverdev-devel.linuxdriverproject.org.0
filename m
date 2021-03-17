Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A533FB12
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 148714EDD3;
	Wed, 17 Mar 2021 22:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAYUG1UAuU_q; Wed, 17 Mar 2021 22:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26B954EDA0;
	Wed, 17 Mar 2021 22:25:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3B551BF9C6
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C14C143096
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ae6u_hR4ndRX for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DD4A430A8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id k10so822491ejg.0
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DvLh5EQ10uLWjh+6uJIOMOQmkBMQdtM6UGFZxQ0z39g=;
 b=bPxdDScGTMnyVJKP8qR3oUsXPCyOQwxE+424BZ/xnozaOQizCv5ZukyyIRbOQ5Clzo
 ZOQw4aEZBL01NferHAVgYSeidKmNNC1n9ZAku4qHdm5oIR3vgxjR1jVFmXfUAgoz0xne
 330DV91JrbLG4/CH7xPgLB9udBj0KbXtr4J7iZzbKvI135c0IAuAPQm9jJxYAKB9Wtv8
 pgFJDafdqdPFD3jMQ5+23sGtlE8fdM1hRzosC1gI3Qn9y8KggKcRegvCNoGeUn9XKrba
 mGtmD1UQeEZJw7bjirFHdO/w8PIY5hF16Jb5rPrN+TXWrl8c0LkGY1EYIUNFZG3wzstp
 aMvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DvLh5EQ10uLWjh+6uJIOMOQmkBMQdtM6UGFZxQ0z39g=;
 b=sgdqO9TlDjIc+HaJC7tPXi8HrbwRj+lZ7c+Om41dtuOU8w2hOkA1fSSnZuDmVxD7Q0
 bahRLvtT6CcodjtNC6sX9NxxzvpWmsgbUJu1uIqA8SBZ/zOhL2qSmAHAX07CFsQov2/B
 nS5rRgCLMVFzjWpi0BzYGl9C+lYV2HIcOZ9zm6k6suRuKI6ddmbcp3wid4tSwLLdmDaL
 5UjdPF7I+hIhadSJg34t7MdpKpFvh6BOcl93C6NKrkrJ8ggWkb0O/yaWEqdkxZKmHLhX
 fKrNaTP3Qa3Tho4w66rBxbRhK4ruVIM32/zWM/1HUi9b1dMo60oyCNyUI6u8AZnxPERM
 DYaw==
X-Gm-Message-State: AOAM530I6oKMDM9d/iAH7aRcsYqIs3hWTxspX5z62YZOFaksw7KLoD8J
 tvv0UpfOSlOnIrN+P5/417B0zNsXqqQ=
X-Google-Smtp-Source: ABdhPJy1Om3AlLEe98+noi34yB4y0fqGL9OSts2dHwM/ZxBCPZqcX538wLBM2lxDVGuLc1hxAsBh6Q==
X-Received: by 2002:a17:907:2112:: with SMTP id
 qn18mr37111309ejb.220.1616019696394; 
 Wed, 17 Mar 2021 15:21:36 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:36 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 25/43] Staging: rtl8723bs: fix names in sta_info.h
Date: Wed, 17 Mar 2021 23:21:12 +0100
Message-Id: <20210317222130.29528-26-marcocesati@gmail.com>
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
in include/sta_info.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/sta_info.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index 33e6e00c126d..abde3e3df988 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -31,7 +31,7 @@ struct wlan_acl_pool {
 	struct __queue	acl_node_q;
 };
 
-struct RSSI_STA {
+struct rssi_sta {
 	s32	UndecoratedSmoothedPWDB;
 	s32	UndecoratedSmoothedCCK;
 	s32	UndecoratedSmoothedOFDM;
@@ -186,7 +186,7 @@ struct sta_info {
 	u32 assoc_req_len;
 
 	/* for DM */
-	struct RSSI_STA	 rssi_stat;
+	struct rssi_sta	 rssi_stat;
 
 	/* ODM_STA_INFO_T */
 	/*  ================ODM Relative Info ======================= */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
