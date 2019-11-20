Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 050ED10450B
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 21:28:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADBB786DD9;
	Wed, 20 Nov 2019 20:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htkcXZhkUFgD; Wed, 20 Nov 2019 20:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7B9186DC2;
	Wed, 20 Nov 2019 20:28:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE45C1BF296
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 20:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE92686DC6
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 20:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17A6xC-JYO0G for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 20:28:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com
 [209.85.219.73])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32E1B86DC2
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 20:28:45 +0000 (UTC)
Received: by mail-qv1-f73.google.com with SMTP id bz8so623355qvb.9
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 12:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=crGojvqPejLz+ZoEWLR9PYMiwd17r/jHteu/NDFXyro=;
 b=h1lhvquFeZ2uh46ZsVkih9HTffkNZdfHGsII8AxyBthTH8OdPOl8wzt1TigjrIzEtc
 pycnaQgl/UdUSCOgdkRklhk/EckYHRqNSm1RS+dNxv/J5U+LC34rG3xgCX7zEWDjOSCH
 59HqTnemL8O9WYYMYI4rGOFRYEP0un3D0bk4gzehgYJcmxvvqPao8j/6aIvGE1IhnXbH
 pDbFfnDXvHICAYXGZtO8yFRTObYIhuUUccGCUbxV9ylSNboHX2ONPxi9TTWzeEV/DTxu
 gdb9XTXE4aSlppYaNECwuF28j+e8cxFeklWJlrd3Gr/UMYjuSbfZ10QrtniiQr5vBZFi
 G+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=crGojvqPejLz+ZoEWLR9PYMiwd17r/jHteu/NDFXyro=;
 b=mgfGmedTBKmGLNeSQsuYPCAOi1Nj91pKGn7FQqSZpzwxLtYZ97BS4al2k2ce4zan46
 We7dd63BIZ04kZYzuFlPGGAUnj9GfUnPoR2EoiVZy/45hrE7Luyid68vWYTW2XCtnUBz
 TzvdAI+ACujMXoByhSCsuA6mQi9HMlxO9A8WT1Qw8kq2aRqM9RuxntqZw0sTdoo45asX
 SExdFmCRN9bYWo39VXeWdwSh9dtoC7VwYFrbXmzU1Zbr633XDJIaIVTfoflV261nStTr
 cz1tzYecqKuZ7hdPM+MBj7neSxsifcZgU2+x3FhcL+sbGC2rpITobnMBDBlDmmSzVxky
 C10g==
X-Gm-Message-State: APjAAAXFWqxF8E6FM4H1o0pcn91xgbWQBfETLMMi9WhxtA+xe9kKuMTo
 LK8IjceEfJnm4fmsLm0LZ9lUlIoG8gMbLYDkSLc=
X-Google-Smtp-Source: APXvYqwZVUIkz9+QwLMhcsNNrs7QOMw0ZncDA4D59khxuhLBv1p3c4yZBk497TD5rgY2RePSlg/6KmLSz1M17XnrEVI=
X-Received: by 2002:ac8:23d3:: with SMTP id r19mr4808259qtr.297.1574281266299; 
 Wed, 20 Nov 2019 12:21:06 -0800 (PST)
Date: Wed, 20 Nov 2019 15:21:00 -0500
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
Message-Id: <20191120202102.249121-3-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 2/4] staging: vchiq_dump: Replace min with min_t
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replacing this fixes checkpatch warnings.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6328abcaeeeb..942b4768c88e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2081,7 +2081,7 @@ vchiq_dump(void *dump_context, const char *str, int len)
 		int copy_bytes;
 
 		if (context->offset > 0) {
-			int skip_bytes = min(len, (int)context->offset);
+			int skip_bytes = min_t(int, len, context->offset);
 
 			str += skip_bytes;
 			len -= skip_bytes;
@@ -2089,7 +2089,7 @@ vchiq_dump(void *dump_context, const char *str, int len)
 			if (context->offset > 0)
 				return;
 		}
-		copy_bytes = min(len, (int)(context->space - context->actual));
+		copy_bytes = min_t(int, len, context->space - context->actual);
 		if (copy_bytes == 0)
 			return;
 		if (copy_to_user(context->buf + context->actual, str,
-- 
2.24.0.432.g9d3f5f5b63-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
