Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F44C2B1193
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 23:33:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 960F6870A4;
	Thu, 12 Nov 2020 22:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLJW0K6h9Y7p; Thu, 12 Nov 2020 22:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A53186FD9;
	Thu, 12 Nov 2020 22:33:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B75F1BF41F
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 22:33:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 62CDA8771E
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 22:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1E9C-ZOjiJSa for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 22:33:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7727887718
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 22:33:43 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id j7so7684405wrp.3
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 14:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=PaumCKNDUQ/UbbjjN+UcYYQ7C7Eq7wEBAmHONlbn6WxG7o13NNOvWBzN7m1LqCjCQs
 WL9p70rCyeyuXHeyGUbhtVarNngk41RX+oC0YrrrAF69kOMw0kB0wRDKbbfTueuIMLG1
 u6/v3Ng5cY8fpW1O0jDKvBvlIrVvk2re0+7WajXkn+NCItv+J0EIHEZVCUCKYA7Vi1Qz
 +Glj3vMfxza2ySC4cSSdQbRpC7+tUGGl1Mscb2+9mNPX/h/Mts+VXgcFgu2tRPYzON2w
 1Zi668r/Ip7rh+c7My9Ib/8h++gawx6Jk8SxF+6+yIsFqyuprvST0uI5UZfRARQyYEkO
 rbgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=SYIxnsImvmAc7JiGINaqKrGHIG+in/lQbkSOflPeoR/7BUJoUS4gTUljqe9QYwY9zh
 s6MtWlS10L6mzHgvXLclEJ6kGjD+lhF/zflKLbZT1Qem0ng/0Uc1ZSlahrzWQskUi9qb
 dmoQjG1BiiywUW+TAXfkuO+DXGRvbNUaIkoSb8QfFbdPpaFSYA1dOq83dPFRxeVf71S3
 QOBAyVpLz6Nofhc1FHAV6vsG400ZbFz2RjkwRaq4Vcz9jl2ZTJeQGgt03YkSmk4S/SUJ
 gtMG1s/+2UVAPSme8P6Xc2AZxdwY9jUeebH72pb8Jf1YQFnS54INjS4i4Au91u7rZbbR
 054Q==
X-Gm-Message-State: AOAM533mHSW2QLFxur2dVywI4iJoobi8WhmoCQhp/WRVsjguN1tAK7Hf
 nNv8UMmC2pH+Yb6hJFHPVOLEJdk3yU5UgQ==
X-Google-Smtp-Source: ABdhPJxyF55EsQYu9Lk5GwUPWqIRsuf0sTIKLTXSF+gVLeVIttb/A4V1Bze7FVvR7Tyt/ZDZNq5iVw==
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr2065863wrt.264.1605220421864; 
 Thu, 12 Nov 2020 14:33:41 -0800 (PST)
Received: from tabot ([154.72.150.132])
 by smtp.gmail.com with ESMTPSA id z189sm3307986wme.23.2020.11.12.14.33.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Nov 2020 14:33:41 -0800 (PST)
Date: Thu, 12 Nov 2020 23:33:35 +0100
From: Tabot Kevin <tabot.kevin@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: [PATCH] staging: greybus: Fixed issues with alignment to open
 parenthesis.
Message-ID: <20201112223331.GA1681@tabot>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>
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
