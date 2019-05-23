Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 161ED28B83
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 22:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C172318C9;
	Thu, 23 May 2019 20:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euWA2LiDcxvS; Thu, 23 May 2019 20:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBF18318C8;
	Thu, 23 May 2019 20:30:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69E571BF338
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 665CC86CE2
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7bMkASXvzvb7 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 20:30:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
 [209.85.166.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3328586CB8
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:30:05 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id g23so9178189iti.1
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 13:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bj8ppQxP85B58Zim1uSrGIafGs36jGGfVhzakkkoJL0=;
 b=MgyMP5yTi70qv6L9VuJ/IqB2z5GtK651k+ch3j89jfiehUtxLq+Hfh1ecDFhePBaCp
 pkntcUHEJPF44HxV1Hd4DMSjJALUHcqTrwO6DzmaBTNl6feAgXrwpEpXJCAi1xZJInBB
 uRH/ftjIXdrORSzY6I8wCi7rRr3m29b1VfEHKQvxhJ/420bSgk1kFI8I4acSmXpZcz3r
 o/EVa3Fis/FU+i69IJKUMn6rpX7oqrarNjj7IJoAufs4DJdmATKMDnI+to9cxYJocGko
 8aRMHC6B2aBWTnMbVCPDrCf6rivW2ow6TSa0QYBrXZEW4bheKdIWl+c59bYBaK32AmDE
 6GFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bj8ppQxP85B58Zim1uSrGIafGs36jGGfVhzakkkoJL0=;
 b=kQDRXvs9msYnibj/52d1PSASlS6Trsc4rS28yx7gMOFhbHXL6n4eXYMD4sDtkXBdep
 SH5JuKyAwdUXCYoVCzlomaUm/Bg2/1nJvsNYkSAykfuNxvnletLBxAV4fDh4y7g7fylS
 oCcB7NFYg6JWn4qWJg34Qnx613d6aRk0xAcgGu8sdPuY0+wnZuZ+YmPNMNtDyHr/F7uN
 wyUJa3294Cx8M2OlfKV67V4iFG98yWizAq2bjmKU6pI7bkr7ek46FGKKfdjRkS9fkoYs
 OzY5x/Cl6unrgGw5sEBprcqBOy7U+Vv/NaiULEvAshVVYfAC0LBxqblipWiU+AwSAknb
 cjgQ==
X-Gm-Message-State: APjAAAWDiNYP2xGlzSL4AaezyzDuDVueI9LNwYaj/tHxx3TruHoPcehe
 m0LxqY1xgpcZjlpPePQuypg=
X-Google-Smtp-Source: APXvYqwvbihKVmQ8+K0FulJCkH8g3QIqOgHcJOQGzLZBouc8mWMwT2mytbqz7T6r8z+/P1htwpl9qg==
X-Received: by 2002:a24:61d7:: with SMTP id
 s206mr14577422itc.133.1558643404344; 
 Thu, 23 May 2019 13:30:04 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id w189sm217903itf.39.2019.05.23.13.30.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 13:30:03 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] MAINTAINERS: Add entry for fieldbus subsystem
Date: Thu, 23 May 2019 16:29:59 -0400
Message-Id: <20190523203000.32306-1-TheSven73@gmail.com>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add myself as the maintainer of the fieldbus subsystem.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..50e164041e94 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14905,6 +14905,12 @@ L:	linux-erofs@lists.ozlabs.org
 S:	Maintained
 F:	drivers/staging/erofs/
 
+STAGING - FIELDBUS SUBSYSTEM
+M:	Sven Van Asbroeck <TheSven73@gmail.com>
+S:	Maintained
+F:	drivers/staging/fieldbus/*
+F:	drivers/staging/fieldbus/Documentation/
+
 STAGING - INDUSTRIAL IO
 M:	Jonathan Cameron <jic23@kernel.org>
 L:	linux-iio@vger.kernel.org
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
