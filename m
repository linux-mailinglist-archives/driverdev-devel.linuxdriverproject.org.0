Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5F7103EEC
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 16:37:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B2FA8763F;
	Wed, 20 Nov 2019 15:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcFay0qYYeBc; Wed, 20 Nov 2019 15:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 314628707A;
	Wed, 20 Nov 2019 15:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64EF81BF5EA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B01A85735
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QmpnqiTmeZz for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 15:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D055887DAC
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 15:36:51 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id f4so139867yba.22
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 07:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9UqL212491HSYvTBtYxc6Q7H4ChdA0a5BFKHQkhH9HA=;
 b=hZawc0KSPggyBxM1Y5h4P/OhNP06+Uc5erF8j1BvYCc1O0PS3DbJXQkgo5cyy7BW/j
 125LhNBJtgYvIx0hwBmHIpRne+1t1BnyW/cqxSbFH3Yo5HJKfOmHRk+tuIMc2dVvKejH
 li0+65Yjg5Ed/rmPh4j7mhGStagSiXxGjhvFfIDOCT5j41a2wJD7tZR04F8xibttLUbt
 NedD41OqZA6AdWgS0PB7+SricUqd8f2NS6Us65CAx9yO5ry8tcFVTDB+/w5LFicYnsUi
 IELKj123Aa4LaH1cE/dyMjQafQx8mSRId70Vbie3L7xHN9gb/IiYSv+5x3QUGQDAZgPs
 EL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9UqL212491HSYvTBtYxc6Q7H4ChdA0a5BFKHQkhH9HA=;
 b=Ti3JuqUAwypI/xke+2mbPBIk2hM0TrgGQCl71yPzPL3Jr5joMZnVjy6EoT1beqjq0b
 o/5gWvCPoq3hXlaOfd19FPDG2leRd9FELlxYazfPAWaSKC4as+At8wlfzNAF47BiH5P3
 gPto5EJMUlhC5nH5807C6XPL8/UdeL82vx6kVplmNwagjzWjvceZ2aaSwemBf7QcbrSI
 +HmFldQBGFh/rmYExIrxONC4tsDTDN6O05D+j/NV0xTYsKXSGRxp6r92H9HS1yb5egas
 c4IKnTRXoDNPCOIUk9yum6yyE3NinsniyQRgtQ286XrI540qLdpi6yLS9+j3yIL2D1nN
 cyeg==
X-Gm-Message-State: APjAAAWkoiU3++d41f2RZxIa3hyUZUV0NiVLesLFpvoSegjg3+nuAp8o
 TH4OfybwIhE+zrn+PjwdbFXWVnpaqrATCEcuCrM=
X-Google-Smtp-Source: APXvYqx2mKPn0/kxf9R+AdrmiQP4TnON1gauhsCTmqwR4GZg9Xs9DCqi7yQWBp8gBNpIPGIIAaRE6uNUCcSZnMraAto=
X-Received: by 2002:a25:9cc6:: with SMTP id z6mr2190034ybo.46.1574264210745;
 Wed, 20 Nov 2019 07:36:50 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:46 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <d38c33e15a5cdffd2d49243574fee46be8caee92.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 1/3] staging: vchiq_dump: Replace min with min_t
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

Replacing this and fixing the block comment format in this
function fixes checkpatch warnings.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 319e7aa0e0e0..942b4768c88e 100644
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
@@ -2098,9 +2098,11 @@ vchiq_dump(void *dump_context, const char *str, int len)
 		context->actual += copy_bytes;
 		len -= copy_bytes;
 
-		/* If tne terminating NUL is included in the length, then it
-		** marks the end of a line and should be replaced with a
-		** carriage return. */
+		/*
+		 * If the terminating NUL is included in the length, then it
+		 * marks the end of a line and should be replaced with a
+		 * carriage return.
+		 */
 		if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
 			char cr = '\n';
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
