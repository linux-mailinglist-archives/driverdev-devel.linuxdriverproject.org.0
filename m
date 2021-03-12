Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A2C338753
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:29:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFA6043251;
	Fri, 12 Mar 2021 08:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KmjkZ3eVNWzl; Fri, 12 Mar 2021 08:29:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36AFE40025;
	Fri, 12 Mar 2021 08:29:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0CC1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2CC54ED4D
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xE2x4V4lpuyJ for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0F1D4ED4E
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:56 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id b9so1277988wrt.8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=25G+d7LPOJEDCYOMKDHPWfNHdKWRISXsMdgQb8B/KYQ=;
 b=S5hYpdfabenmtph1xjFLTgdjfbVZzOboSQ/WpfWB+He3bDs+MbI8DTLoS2fQHyRkj6
 z6K7INuuW8gnE/VaN2ElqXjgKQylajGAmyPWsLpqlbwcqkMNRZH2dpW5Gusn8TzJFbyk
 zq5Rt6Cy1/VGmVSEcj4774/W6K9xIqEURiB7iu1sYhxS0hsAKccuA9AVl9HUpekq3M3B
 gH3Piigndr14ToYlnCvuZ36zu3ULy8u30PcPguS3X7HIB0PV5yIwGkab3gzKSsrTuCPu
 ZD6xjqBcCrX/8wxj3a4+yTTu1COnMZj6kvKojINqolwI3ujD2YOkMj9pbx6bSEQmFJ7f
 87Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=25G+d7LPOJEDCYOMKDHPWfNHdKWRISXsMdgQb8B/KYQ=;
 b=pS68NeUBnWGKBytTuMxV+uc7uIFZ9memH1XURRd7Y69gk+43tHUSe4u9cgikHyzZAM
 sUqj7PpHbI6wLuXRq1kGGI+86tYhLBSOFfp/eIuP1grYtlLRKyOKOgrEttdTeAX9CoQ6
 EiNuJG2H+wFMQ/oGCjQ7AkAPiLxig+LEdmnv8Pge9FkvVgJ85iLv4uXuB33I4dndS3LJ
 2xp1GdH7mEFyaTojdmMi1ElmAXGo43IPWn/Izko545TcaWMjzA4fZXAbxD5XkGvYXw73
 UeeWwg2l722RYmaLZl8bxhHlXgXg/YYEcosJOoG5HrU8Um0TscEix8JTdkOz2CKNZUP0
 bavA==
X-Gm-Message-State: AOAM5304EJzBeiKSBMle+Ejl9LkIwpkNfn+CvdgGZ0ZWt3CioNXrEzWh
 kKk5uTkqZl4ZIGNqEssXCnA=
X-Google-Smtp-Source: ABdhPJxWqmFF+mGZ4SO3BgmxeN9bXq6HnL/G/yT5M0MqELG2t9LVtbeUqwxEiKnlxXZGmxuV4KZERQ==
X-Received: by 2002:a5d:5250:: with SMTP id k16mr12886788wrc.309.1615537615031; 
 Fri, 12 Mar 2021 00:26:55 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:54 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 12/33] staging: rtl8723bs: remove typedefs in drv_types.h
Date: Fri, 12 Mar 2021 09:26:17 +0100
Message-Id: <20210312082638.25512-13-marco.cesati@gmail.com>
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
    #374: FILE: include/drv_types.h:374:
    +typedef enum _DRIVER_STATE {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index cfde6e3ba400..59d7e22cddca 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -371,11 +371,11 @@ enum ADAPTER_TYPE {
 	MAX_ADAPTER = 0xFF,
 };
 
-typedef enum _DRIVER_STATE {
+enum DRIVER_STATE {
 	DRIVER_NORMAL = 0,
 	DRIVER_DISAPPEAR = 1,
 	DRIVER_REPLACE_DONGLE = 2,
-} DRIVER_STATE;
+};
 
 struct adapter {
 	int	DriverState;/*  for disable driver using module, use dongle to replace module. */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
