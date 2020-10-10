Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0083A289CBD
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 02:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55EA4878A5;
	Sat, 10 Oct 2020 00:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWNBy1j8rrfj; Sat, 10 Oct 2020 00:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAA1187785;
	Sat, 10 Oct 2020 00:32:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C98EE1BF9C1
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 00:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5D6887911
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 00:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oarzURqvXj9x for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 00:32:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E66A887692
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 00:32:05 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id e18so11978429wrw.9
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 17:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=X304Zmf4DAmzm4Xa3c9x/rKW88i4eYwq3+QpMe64f7j/mZNsgtci5N2c4QjOyC+2Gx
 qdMdpm0KToViGoANAxM2yh0dTidSOx71ye5k3dYtiO9FuHZPBRZI5FdtrMBe0+cQ15KC
 Q5QOoAyOaSviZCSLmkRZUqtNeWQuSvxLFtKAZm7fu4WahPmNVfpJUP7NEaltPR32HeMT
 ABySQ/qLBHq9fPOPJC45KM3QICNMwkF+fkujxgTnAOAzhnsp3iI5L/L11uZqh05Lx1iz
 NfR3+MwKYZSeo2VglCg8XRqP3v09nSGoYmWc1JjyKIOT9nW2oOnOVN4sjpGENMKkok4C
 3gmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=iNY7ZlwGyxg8jnPaAjKm4ZKQqYyUTdK1tg4MDlChSNqtgxokPLGEC2UosI1QlIPTEw
 2d4yWg1BlzpMibf/9F0iST4/7IocVHYNqw2WB730hIZ2LI6DFkAgZdUcWSzoZwR1towe
 nN3QGXfknYKzk4W97jyXjik5CpFXo+yWgDXLfeH9fqEL/0CXV7gVnoGdRhInka50K0ZG
 /64G6QPskIKdujY0KqoM1pQkIqmSXNIkZcgn01VvCuXgEtSpfcgTazJMu7kjQcHruVzL
 0iQUe1xZFvw1F89Dz25OimbcHsWmYbdGJwEGywPn46iw4cuu/ZNx4okjqOBOjCpaA0bH
 LX0A==
X-Gm-Message-State: AOAM530ESbExktxBkpxPV8skB6cOBWhsqHM5ObaH4lBzFedLgO5pIez1
 7LhmWUzCCYidmCznHLujOH8lC+9ALwo/sQ==
X-Google-Smtp-Source: ABdhPJzcwH7SyXD7C3uxfnbJvKSCyN0484U+6LE9nphv4WXLsf8FYm8lSujYAKP50ltNKQbcUezSWA==
X-Received: by 2002:adf:9361:: with SMTP id 88mr16883971wro.37.1602289923951; 
 Fri, 09 Oct 2020 17:32:03 -0700 (PDT)
Received: from tabot ([154.72.150.107])
 by smtp.gmail.com with ESMTPSA id 1sm15064007wre.61.2020.10.09.17.32.02
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Fri, 09 Oct 2020 17:32:03 -0700 (PDT)
Date: Sat, 10 Oct 2020 01:32:00 +0100
From: Tabot Kevin <tabot.kevin@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: [PATCH] Fixed coding style issues raised by checkpatch.
Message-ID: <20201010003200.GA1399@tabot>
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
