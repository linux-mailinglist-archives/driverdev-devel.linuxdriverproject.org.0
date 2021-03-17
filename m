Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A50733FAFF
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:23:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCD1743288;
	Wed, 17 Mar 2021 22:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EqP8l8TM0F2P; Wed, 17 Mar 2021 22:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59F824309B;
	Wed, 17 Mar 2021 22:23:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08F021BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FE4D4EDD3
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cl5owMFdGwwg for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 906F74EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:28 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id dm8so4225185edb.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ptaqYmt3m9OTsLOBj47K8ndpJhuKEHH1HeUkWaPDMx0=;
 b=VjGMgvEvOTdCJaLgE+MxzlQEbNzsLbpMp+8/nhVMJBzT7gbUMzK5FPV1BFDjvILhXF
 8UrkangWjo/fpiHAsYg7jWZwBpu0up1gnzGeiepQM9DyEKHx8FbYGMAME0jNNFMEmT0A
 9SitfZzPWVSoyPAS202Iql8hH1uJuBECEVOAdf0y1LN0tUo4g/3zvF3iFrD+gAamccpS
 MaatWvxM66iO2bNMFLquWMAWqzeaowbecvORn6eyAdpWMNtdWX/++wa0VCkCUQ5anC6T
 0yXF9FyubxDMdkPmz/jA67yL13IhH4virG9ZfPvFPL6yeW1vyRGxttjZF7W6tLK82YT4
 F3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ptaqYmt3m9OTsLOBj47K8ndpJhuKEHH1HeUkWaPDMx0=;
 b=gXr7+YruaVRT3kU9Do7cK3puCUJoE/m3S2XD1oTzBMLQjafBadBBAYmdGev52c0lC0
 eUYnMGyLL8kxxXO1FJKLoYLfyfNweeEY4O9zoBrjXgXMb60qejEM8Xu0JRrDnMv1ntJr
 Bo+EEsYdT2caIM6zWg7KSsgjHIRvujpYlIU1xfTH7SQV4LtUiXYXkDF6OaGImW3cc+h9
 eKJ6B7uHPJ+EPcGEVhJ4ZI35k1QKLILhDn3zXm3J3zyErsyMZaBo46PqyozeHuwRfmY5
 HZfEF+nfLTJqkaNMyoA6GozM6gDkhY9dXGGG6gjcRlpKb4D5yOm4/CcY8uRnfTS1UGHt
 LyyA==
X-Gm-Message-State: AOAM53146DnSdE6f6lFdR4+RXo2msY7DNwQVUJMmGF58mTCK5GsngwVV
 cy/43IBE2emyz5K7Wr/Bff+Z0+CUgMw=
X-Google-Smtp-Source: ABdhPJwfT3KHkzMuYu+JMUwzFzz23NrBKXG/o63m0qQDueel/o+XiMe5DD+C995lZv0pApqlPNyEBQ==
X-Received: by 2002:aa7:cd6a:: with SMTP id ca10mr45097434edb.7.1616019686815; 
 Wed, 17 Mar 2021 15:21:26 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:26 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 12/43] Staging: rtl8723bs: fix names in osdep_service.h
Date: Wed, 17 Mar 2021 23:20:59 +0100
Message-Id: <20210317222130.29528-13-marcocesati@gmail.com>
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
in include/osdep_service.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_service.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 07f846efa0d1..10e1826eff77 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -80,7 +80,7 @@ enum mstat_f {
 #define mstat_tf_idx(flags) ((flags)&0xff)
 #define mstat_ff_idx(flags) (((flags)&0xff00) >> 8)
 
-enum MSTAT_STATUS {
+enum mstat_status {
 	MSTAT_ALLOC_SUCCESS = 0,
 	MSTAT_ALLOC_FAIL,
 	MSTAT_FREE
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
