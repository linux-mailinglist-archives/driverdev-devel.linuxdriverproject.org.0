Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2650A320ADD
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:04:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC9E484493;
	Sun, 21 Feb 2021 14:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54bIIpUZTHYz; Sun, 21 Feb 2021 14:04:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E62D80EC1;
	Sun, 21 Feb 2021 14:04:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22DB71BF981
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11BD66F47A
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_dCjfcfihWQ for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 14:04:22 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 6583C6ED68; Sun, 21 Feb 2021 14:04:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33D4C6F47A
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 14:04:21 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id kr16so6496412pjb.2
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 06:04:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j4mC5MODCK06jyeNOqSfzPWm9rkZjhjLLWSUaFuOWeQ=;
 b=S6fBeIpLGAnamIkVOix6UB2vGT9T8wHIS/4SI7VnqhwCpg/Uj55ZFvZ7bcknkWLF0I
 /TGBjcscK1EG9FY7b2XoZwdSlwiXhiRPB3xSs3qyUYRdYkSTOWh/fEt0V8NYEQJwACDY
 bqKxRvjS2ECnG+pac522h1l1zbz9E57FQUPa7FdJkaxn4vEDbTjR3RRCbSlLyru25aPJ
 +9kAJNQOc5DDCYONrbWGlNBjANxNVG7B0y99Uc/H/CwhctKdq+AXxZ+BX/pW8HPgdAGd
 BseErs7N8l69B14+ZcRJtluLOmsek12Jan3IHb0H7yU/jLjO+wTAk1Grp6aVQ6/fJRbR
 K4YA==
X-Gm-Message-State: AOAM531FBNy+PzhgFc5gbFWleE2zGZj++Z5IY2f+zyIULEAXRS2JNpxG
 qcm6hjzJ3i19ZfhEWS4EOXQ=
X-Google-Smtp-Source: ABdhPJxe8j4ShuC/BDyNc7tnbifTWbXEkS+8meATRydYNQBC75uMQoB0LKzc3om4fjnA7LjH31PYVQ==
X-Received: by 2002:a17:90a:9918:: with SMTP id
 b24mr19001146pjp.127.1613916260664; 
 Sun, 21 Feb 2021 06:04:20 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id d12sm14376906pgm.83.2021.02.21.06.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 06:04:20 -0800 (PST)
Date: Sun, 21 Feb 2021 19:34:16 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging: wimax/i2400m: fix byte-order issue
Message-ID: <0ae5c5c4c646506d8be871e7be5705542671a1d5.1613915981.git.mail@karthek.com>
References: <cover.1613915981.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613915981.git.mail@karthek.com>
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
