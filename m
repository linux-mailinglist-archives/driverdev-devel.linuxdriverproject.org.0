Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE21320B60
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:31:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F1E0834DB
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4y54jxX7n7jG for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 15:31:41 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 7AC7A834D5; Sun, 21 Feb 2021 15:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A1AC83339;
	Sun, 21 Feb 2021 15:31:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B24861BF954
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF0B586FDC
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMpChU2mKHNN for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:31:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3033F86BC1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:31:11 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id kr16so6566264pjb.2
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 07:31:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j4mC5MODCK06jyeNOqSfzPWm9rkZjhjLLWSUaFuOWeQ=;
 b=W26YAow7MCQOmEFMxjjUMX0vE81zHxsrUpaNwBouWxpBWnhvSEursJ4W6H3/3iXs+j
 7dU+0L31S345sQJfvF7MezO/FDRaIrKHwTxTIBewBq3IAlWmbaIm4qDP+dZ1sKY8H7uT
 HzZDkcx/Gp9Akn3UQexGQDhYyN17hyxESb3WQZ87CUn7n2cKpKFzskgV0Xo5pcvU9g4P
 l/tWztQrZap0jbVbE15GLk79wdHsxWkviYaqyqmqM6LHSBaHefsh6YQrMi2fU/URngn/
 HR6tWIac4Rpd3tcTiCeeBy5p8sDnQ/XtdWn6cVY96on5cBrnpERfeltOWzvyVkBuf19D
 F9Aw==
X-Gm-Message-State: AOAM530+oKtXY0uOEzE8s7mQtuOPLV3wxG2UkrnZfd2WJDLYpaTLlRPZ
 urwo+Ck0YlbNMvYlCTOX6Pc=
X-Google-Smtp-Source: ABdhPJxWm8B6PhdNK6eHSyEJYmv+ol5YYlcRFrGhdJvgf86fc8srcahaizaIN4OpNqiN/lY6Uuycug==
X-Received: by 2002:a17:902:bf03:b029:e3:ac31:9c6 with SMTP id
 bi3-20020a170902bf03b02900e3ac3109c6mr15725830plb.55.1613921470823; 
 Sun, 21 Feb 2021 07:31:10 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id c8sm5418812pjv.18.2021.02.21.07.31.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 07:31:10 -0800 (PST)
Date: Sun, 21 Feb 2021 21:01:05 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 1/2] staging: wimax/i2400m: fix byte-order issue
Message-ID: <0ae5c5c4c646506d8be871e7be5705542671a1d5.1613921277.git.mail@karthek.com>
References: <cover.1613921277.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613921277.git.mail@karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix sparse byte-order warnings by converting host byte-order
type to __le16 byte-order types before assigning to hdr.length

Signed-off-by: karthik alapati <mail@karthek.com>
---
 drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/op-rfkill.c b/drivers/staging/wimax/i2400m/op-rfkill.c
index a159808f0..0f438ae6a 100644
--- a/drivers/staging/wimax/i2400m/op-rfkill.c
+++ b/drivers/staging/wimax/i2400m/op-rfkill.c
@@ -86,7 +86,7 @@ int i2400m_op_rfkill_sw_toggle(struct wimax_dev *wimax_dev,
 	if (cmd == NULL)
 		goto error_alloc;
 	cmd->hdr.type = cpu_to_le16(I2400M_MT_CMD_RF_CONTROL);
-	cmd->hdr.length = sizeof(cmd->sw_rf);
+	cmd->hdr.length = cpu_to_le16(sizeof(cmd->sw_rf));
 	cmd->hdr.version = cpu_to_le16(I2400M_L3L4_VERSION);
 	cmd->sw_rf.hdr.type = cpu_to_le16(I2400M_TLV_RF_OPERATION);
 	cmd->sw_rf.hdr.length = cpu_to_le16(sizeof(cmd->sw_rf.status));
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
