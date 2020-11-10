Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A19EA2AC9D7
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 01:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 832B422636;
	Tue, 10 Nov 2020 00:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EieVHxCdGVCD; Tue, 10 Nov 2020 00:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C440203D8;
	Tue, 10 Nov 2020 00:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB7641BF977
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 00:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E46C68666C
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 00:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ok+0PhDUOtDJ for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 00:44:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3903865D6
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 00:44:07 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id k2so7434328wrx.2
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 16:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=UAh1HsBDivRcx5G1S213KaC/pjNDcxj9I8/2DJ66JkbnUTALShcXWLR5FLn5drfwwL
 r76WaEkx5eHLZgtlskcQpoP+0SCKSgKqdc0M71lj/QwcOklUcvRM2ePC6fcYwQ4Mk2tN
 pW5A+wccsBXuW2kPLTeckbxdSxMHcDQnz+XVVZmVabTckjHPDiJGvYuNAfUIR1gmgMI0
 qPR4tudNj1NP5hFlApMd0mLHMRbqheTZeucurSzSez3buRnq1QvwAfFjk28qu4R9gIqv
 Gnd26ANCh0axUE5OO6Mo2QRbenZ49rPqgnWUQLiwCAKFuSL+f5/khvsGlvKl2USf3fVO
 94eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=aJWmAQk8bjnPwxmHomNGrAvG9c7O2E27rAWjnKtPB3sIOa1fq9T5qQU3qNGESF8FE7
 VGMOHFe+grzOr5G5p7+TJH+FADIrKtDDQOoT4X82CdOhnmtXtcuKurBZ4t/CGoUIBy/n
 iYQ1rW6LbwWe2jjzlW6xU1TemPQ4VoDsQ2hFYYQ5TxtV1uBMrrykV+kCFy709W6o4XKo
 znmKHIl4j2N/wufrgJa+2aV182xZwRSxRccSnqSG3Q/TuAOU02+cQCSZ2tmqZX0Io3yZ
 ikrWnHXU5dCLV38LtauMmWsK794fXtgHVsjOnzqjMtNHNMgyhpJVsDc4dd3EqzITvZc1
 Nnkw==
X-Gm-Message-State: AOAM533Go/94OJy1U94PyZ221xyDVejH4GsHbqLzBzbfTNaeksRBAlkS
 a+Sy1+L2RINHDYVksS5fcsM=
X-Google-Smtp-Source: ABdhPJzmEhb7kgJBfxpd7xHXacWo/NbJhOfnc+DxUq78r33Z/JwRdGcOvJctrpy5hJpLg+VzTvpjng==
X-Received: by 2002:adf:fa10:: with SMTP id m16mr13026853wrr.194.1604969046243; 
 Mon, 09 Nov 2020 16:44:06 -0800 (PST)
Received: from tabot ([154.72.150.220])
 by smtp.gmail.com with ESMTPSA id x18sm16331766wrg.4.2020.11.09.16.44.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Nov 2020 16:44:05 -0800 (PST)
Date: Tue, 10 Nov 2020 01:44:00 +0100
From: Tabot Kevin <tabot.kevin@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: [PATCH] staging: greybus: Fixed issues with alignment to open
 parenthesis.
Message-ID: <20201110004356.GA1803@tabot>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following:
- Made sure alignment matched open parenthesis.

Signed-off-by: Tabot Kevin <tabot.kevin@gmail.com>
---
 drivers/staging/greybus/audio_module.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index c52c4f3..a243d60 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -175,8 +175,8 @@ static int gbaudio_codec_request_handler(struct gb_operation *op)
 }
 
 static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
-				struct greybus_descriptor_cport *cport_desc,
-				struct gb_bundle *bundle)
+					struct greybus_descriptor_cport *cport_desc,
+					struct gb_bundle *bundle)
 {
 	struct gb_connection *connection;
 
@@ -199,8 +199,8 @@ static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
 }
 
 static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
-				struct greybus_descriptor_cport *cport_desc,
-				struct gb_bundle *bundle)
+					struct greybus_descriptor_cport *cport_desc,
+					struct gb_bundle *bundle)
 {
 	struct gb_connection *connection;
 	struct gbaudio_data_connection *dai;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
