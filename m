Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A8FEA3C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 20:05:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B31CB87CCB;
	Wed, 30 Oct 2019 19:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F9rRkg9rsPLR; Wed, 30 Oct 2019 19:05:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA10C85BE4;
	Wed, 30 Oct 2019 19:05:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19DC81BF27C
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 19:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 079298695F
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 19:05:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5W3E-BAIM3Od for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 19:05:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 83C5886566
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 19:05:34 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id y39so4794113qty.0
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 12:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
 b=IzujxKXSgNjj59kmAYNbKT0SSfdChyjtPWZ2sJwrOEH51SwU2cBWkfZUWI0hQnZpKe
 jMpkMqc0zdX7q/KUwN1GRKfwJlmxUFBW2fA9sardmsm0vL5DHNFbd6aRdfVzruu6b1N6
 sQeznqjWOgdo1MTLAL7I0CtwP/ysHiK/KlFQt/FqtfCLdtbfT2dtPh8Q08rN9Wob/j4n
 5DuX85chQnsqjWBXRRCUnA/GNXE73s3aqhCySv3skHX6hNizAPFsV9YMQTWnYFmiNAAR
 Msg9PU5PS0uHWrmnOG26tF42Qr43REAvPp5mKug3f2cJvRXaQkixmtRtjSyRmPxC57qF
 p20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
 b=LLxcEFyUYdMAKnXGS8M/Nof1zirvlR6thZ+ez+AVn2V4/1DUq3mta/Bk17r/fH3BlD
 tnukgzADY4fQnf0c0g1o87xc5gwACTET9Ez5/y/d9xfZ9uiNoGiDWqOalj5cem+kR5Zt
 w1mpN4fEbVuUymzoh9AD9QI95fvr3I3sbPI65b+gtxtW1M1wPKUK+pBzMMMf08D4n47S
 3CVlNbOUnow9SO9VTqalhHCelC4iqYeD4xkbUdDiHnKm3tt8Qs53iRDRkxlwXo3pSHRe
 WigQkIy2a50PSYvQzsacyuLBMApT5mw4DgKTLeTY8EcKmK+QXnMLjLO+fGCsWzLv96gC
 apLw==
X-Gm-Message-State: APjAAAXdAglJEhZEZJ/6Q0W24jiy+6i7ioQkiNnO/md9AmRrqAhma3WU
 jDfGHaiWSYayupw4qUnbSJg=
X-Google-Smtp-Source: APXvYqwR+OhOFisMFYt9YqxA3G+Exbch5krdJua8Ux+40DWju9AX4MTFUgR8p6Bk392z8tMhMkFmfQ==
X-Received: by 2002:ac8:450b:: with SMTP id q11mr1670768qtn.7.1572462333540;
 Wed, 30 Oct 2019 12:05:33 -0700 (PDT)
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br.
 [177.220.85.136])
 by smtp.gmail.com with ESMTPSA id o28sm690544qtk.4.2019.10.30.12.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 12:05:32 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 nishkadg.linux@gmail.com, kim.jamie.bradley@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v3 3/3] staging: rts5208: Eliminate the use of Camel Case in
 file sd.h
Date: Wed, 30 Oct 2019 16:05:14 -0300
Message-Id: <20191030190514.10011-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in file sd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
