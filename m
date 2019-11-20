Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2ECD1045BA
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 22:25:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94EAA204F5;
	Wed, 20 Nov 2019 21:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRLe2kXNkYAB; Wed, 20 Nov 2019 21:25:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02BA9204BB;
	Wed, 20 Nov 2019 21:25:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE931BF2CF
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 21:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B686869A9
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 21:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2dGF72c6DxMN for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 21:25:39 +0000 (UTC)
X-Greylist: delayed 00:34:34 by SQLgrey-1.7.6
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com
 [209.85.210.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 120C385C1D
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 21:25:39 +0000 (UTC)
Received: by mail-pf1-f201.google.com with SMTP id z21so638327pfr.4
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 13:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=fWfTgwXgNFFl2fLN6zQYf3X/dIUmqtkeZhCtb1F+DgQ=;
 b=gtuofu0zXTJtMRhTzmiWR7ra7BXyRjjQkfgvEfsM26gkH7ijheeDuFBkTjwxaS6Ko6
 5wGSLZhoiAqkkJWPeg72mysHkgeilUBI/KU9vRHmaYYuPA23IDKORqkuDv29oFVKRjmP
 zqnei+jzuFsl63DBLJ0pzo7GCEVxvXzNiOIcO0gAPZvQZ3ckxmWKlkE7ckPui1ajRobY
 drrMYFKsz/tpbv/H1rPtLX1C2bfmx+N14gjsFV67gBr2FAEnrN2aocvOfnmFGAN3PwBG
 XXwYIIHiGr58GA/lH3JjzBzFjfMV44NW8syeRCkymmnGgZkYYSMWGMnRUVDptDrdc+YY
 Ds8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=fWfTgwXgNFFl2fLN6zQYf3X/dIUmqtkeZhCtb1F+DgQ=;
 b=bfTIGF48aD89TD6CohZkFiWHFZ+WXW5jUMQ9ehdxUfs3nGZ89Zwimgj9QLQ+kdT9Gx
 4EzSNESHDGDqur2+MnTgpvNJVZxFUN5vI5RcO3K++pnzt2cbxV6Iyg/5+MPl8ANdcSzb
 IBSK5h6rXrGZc/FKu4RYztLwX80yXXF+dtnbZRT+5QzBoayxzktSQSTleWT2KXUEwFs1
 7fRzFOGNsWD2XVuhiH1VYFveHiWJD2bMql7DnSn5qhBMO0/6X+k5b2ciLqR1vUE/br3j
 b93VQCI63tgsIPDcOujrMfaKofBt1Adh4scKvAeFWBv9BuOrCHafATzr2yYM/6FO8Lz+
 2pRg==
X-Gm-Message-State: APjAAAVzokw1+ukgJAglwZf3NrMU6tEPA+TgolXMrwq/ePl5sTMIH/yt
 ydZXTwPKA0J/PZqTAOIreRMCs0BTwgNVxJnGz/o=
X-Google-Smtp-Source: APXvYqyA3GCfXTOVhCVwlVpc2ljyFhIZxTm7UWi4+moq4Nie2yQYgoXdaPZ+E21o18wZOsmO3H8xPQYn0n9Y3AdZjxg=
X-Received: by 2002:ad4:4e6b:: with SMTP id ec11mr4603362qvb.121.1574281265380; 
 Wed, 20 Nov 2019 12:21:05 -0800 (PST)
Date: Wed, 20 Nov 2019 15:20:59 -0500
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
Message-Id: <20191120202102.249121-2-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 1/4] staging: vchiq: Fix block comment format in
 vchiq_dump()
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

This fixes a checkpatch warning.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 319e7aa0e0e0..6328abcaeeeb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
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
2.24.0.432.g9d3f5f5b63-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
