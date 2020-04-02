Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB2819C2E6
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 15:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 39BE720764;
	Thu,  2 Apr 2020 13:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bw6e9nprHyZN; Thu,  2 Apr 2020 13:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5443204A4;
	Thu,  2 Apr 2020 13:45:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8861BF23F
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 952AF87E84
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqfkVpFewEW9 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 13:44:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2850086786
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 13:44:55 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id h9so4266226wrc.8
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 06:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Wp4L7uJK5SurqL9J1O4zZL/b4dks4+Z+A5rqEGo9+BU=;
 b=HjHIpmnrao09l+sfHu46xNdLDNeGracVhuSu3Bxb2smX2xFpT68A2qYf+WYwCZZqIr
 6AaTP3S4uTaqxaRrjP5kFgUISkWBXx7TIOX9Y3U8QYk2bReuI+pDMjyz6gMj17o61TQp
 AGJOel4TRgYeZnfsGUMEYFlhuWJ2H63sE48ENdbJS8pBOA3hdXkLmB6NuYOQSKICxCFp
 /WiVmEykh3+imqDewXa2uWG+kAON7bUjCdYvEs4YjbWEov+cWJChs/GenaMb0i6SQn4X
 D/2s7JAfYc7jCJv1HEFaxnu4uoUSqEgaZwgob0gjLpro6J3+Rxh+dlJENgdq/OzAhQq9
 RHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Wp4L7uJK5SurqL9J1O4zZL/b4dks4+Z+A5rqEGo9+BU=;
 b=ruKgw4sGTSWfM+NlKmFa0s874migQNDl3gvbLfr9IsN9T8Zr/nMpkzu49F5Puepj1g
 FLnYLIZ1nmk+VwjVE741MfM+5FjBZ1AYF0+S81WYhBAukhkxDNqozMEPr9N/YJUppQB0
 Z/QqKnuTev27MUVtKSzBJMNX/Zw8tsLjNcluUb1KLW224ZF1I3cEKwRmnuszUsm2CfHe
 vM03MMJMTE48xd4ipE3crLVx/ALa9RBS/cTsH1RvaginN+uW2ep9I/mjrlIETf3tMQ+4
 hiem8/47V7tWg/IRNkF8f5QuV5GTYF6wkdk7b0R23TtSvkIdUe9jrBbjuvkdL2n2qs8F
 FG1Q==
X-Gm-Message-State: AGi0PuY/iSL6pH9Z9V/DPjEP86W7EoQ6UsW6Dw2aAnBkR2B+xRjTTZtH
 nVIdWyf6OSaxSgScCqDwkQ0=
X-Google-Smtp-Source: APiQypJAkXoXv8XH9rRAeegKGeeGARwZr8RvuFQd+0dRo6g6SDHMo65n53RH/d6DZXqkxEwurO4jiw==
X-Received: by 2002:a05:6000:10c8:: with SMTP id
 b8mr3446059wrx.138.1585835093520; 
 Thu, 02 Apr 2020 06:44:53 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2db9:4c00:958a:939d:c15f:43cb])
 by smtp.gmail.com with ESMTPSA id j11sm7568469wrt.14.2020.04.02.06.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 06:44:53 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] MAINTAINERS: remove entry after hp100 driver removal
Date: Thu,  2 Apr 2020 15:44:42 +0200
Message-Id: <20200402134442.4709-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit a10079c66290 ("staging: remove hp100 driver") removed all files
from ./drivers/staging/hp/, but missed to adjust MAINTAINERS.

Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches F: drivers/staging/hp/hp100.*

So, drop HP100 Driver entry in MAINTAINERS now.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Greg, here is a minor non-urgent patch for staging.

 MAINTAINERS | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index be43f1e37902..1c1abe8229af 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7721,11 +7721,6 @@ L:	platform-driver-x86@vger.kernel.org
 S:	Orphan
 F:	drivers/platform/x86/tc1100-wmi.c
 
-HP100:	Driver for HP 10/100 Mbit/s Voice Grade Network Adapter Series
-M:	Jaroslav Kysela <perex@perex.cz>
-S:	Obsolete
-F:	drivers/staging/hp/hp100.*
-
 HPET:	High Precision Event Timers driver
 M:	Clemens Ladisch <clemens@ladisch.de>
 S:	Maintained
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
