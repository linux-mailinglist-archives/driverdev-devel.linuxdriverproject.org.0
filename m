Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCDEA93C0
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 22:32:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 938DE869C0;
	Wed,  4 Sep 2019 20:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TuKSlyRms8q9; Wed,  4 Sep 2019 20:32:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 748B3869E1;
	Wed,  4 Sep 2019 20:32:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E92001BF3D1
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 20:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4AB387903
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 20:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjvcfoJgorvB for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 20:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3ECB5863DE
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 20:32:19 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id f10so21012796qkg.7
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 13:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rw3ZlxgGIlK+n0HAnKhsvEmsMU3R5cAn/CwZ2JWWhG4=;
 b=cuJDFXTTZEXFCqa+LyPIyYaxHaZLo4kLvB6vIAHbUwn9KUNFvDRAXFlUP8jIULhz1r
 lvu31AJaNcpgitNRyKB+rnkabl+AMGvOFQvq6sm81Q3UnXfAnrIvX9I+KZA7/C9DBHkK
 JpvhREtiDJXu1jxKiK1LfnP+N+mHxSQwqAHYs0233fBaPFAhz94YRuU6gxu3L7w/78pk
 o3qlv3Us5Ge10D+IVe4ZwRFP6Wt1XJs9jmXSLmlVqQCCiNIZNcAIkOn4FtcWnbLnYRCo
 GKpAWG5wkvpWcdAQ7u1Jut8QlZhQYLnAFjXjsp6NK82IY/Mi1rC2RDzUReUfIRd0iFyn
 h/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rw3ZlxgGIlK+n0HAnKhsvEmsMU3R5cAn/CwZ2JWWhG4=;
 b=tjOGyIpBkIY5Cl1BqZIfXdV8b2lCjHCvTiTqlgco0yKfxEl7UIZ+eoefK5811HqZeL
 Zm1z/PJGgV5SiNf7juecngBLFcIXVqxGSVORKvn0i7mylnURxwpp58fR0UuoenmFGgvp
 woK4Rt+xDJzN1nKLJ9DBVNN03/u5KesMAb1NucpN4PkL2Xv8iuwNh4pWFMRweE7iTfeQ
 q3WMY+GqbZaXqE8SW1leVTRxAtRvJKlNwMFi/wrUBWSZfbZkwYcGCJPITBW98nUZd9vY
 SvW+PSHauMdotOv7AYmlSroTBKPrQRusk3GzCtCcdSTxildYLcxaPOF0Sf0b8eqh1ziz
 Y9cw==
X-Gm-Message-State: APjAAAUpmI7a40O4I76XLfE2yOQI0g79tvJZggNLsa3Pp9rLzowPHF8B
 aE0HIpW5cnkJkimq/jm84dk=
X-Google-Smtp-Source: APXvYqzqLCpHOCjA/B41dTkGeqI8xn4qIc6C7vCcbLfRSxUJDQ3GEP1X23zoT22+OaG1es1zzOO5/w==
X-Received: by 2002:a05:620a:7cc:: with SMTP id
 12mr42022383qkb.64.1567629138024; 
 Wed, 04 Sep 2019 13:32:18 -0700 (PDT)
Received: from localhost.localdomain (179-193-232-238.user3g.veloxzone.com.br.
 [179.193.232.238])
 by smtp.gmail.com with ESMTPSA id 21sm54602qkj.11.2019.09.04.13.32.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:32:17 -0700 (PDT)
From: Julio Faracco <jcfaracco@gmail.com>
To: greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: Adding missing brackets into if..else block.
Date: Wed,  4 Sep 2019 20:32:09 +0000
Message-Id: <20190904203209.8669-1-jcfaracco@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: lkcamp@lists.libreplanetbr.org, elder@kernel.org, johan@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inside a block of if..else conditional, else structure does not contain
brackets. This is not following regular policies of good coding style.
All parts of this conditional blocks should respect brackets inclusion.

Signed-off-by: Julio Faracco <jcfaracco@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f2..d46721502 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -801,8 +801,9 @@ static void prepare_devices(struct loopback_test *t)
 			write_sysfs_val(t->devices[i].sysfs_entry,
 					"outstanding_operations_max",
 					t->async_outstanding_operations);
-		} else
+		} else {
 			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
+		}
 	}
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
