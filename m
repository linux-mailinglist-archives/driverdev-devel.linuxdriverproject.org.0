Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D57E7E26
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 02:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0575985604;
	Tue, 29 Oct 2019 01:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5z_upB4reOe7; Tue, 29 Oct 2019 01:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91FAD85535;
	Tue, 29 Oct 2019 01:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0481D1BF3BE
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0003F85534
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jnUUuIFk21l0 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 01:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71EDE85533
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 01:43:40 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id t26so7736454qtr.5
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 18:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
 b=YTKQ5eL3jNc2ylypKneapURZFnFOC7if9/ntbG+5qwp8Rc8G83PNiMQjG2qeGkKWIE
 WROILV8irXpeXLAzcVzVegChTLAxwfB0Rh0WWVjW2SPrq1fZ4vrNWRzt2zL0NgN8mvpp
 FUFTBShNt+Z3UmEWhl/WVLJOBlNNV07Vv4vESyc5K0g25MA6fRQ41jPPI8H3L8Qx6Hve
 CLkYAe+439/eKzHHDIDz1Yu7MPb3DgANyvJrpd+83ud+MPjNTP2ZRiCP1f8elguyxtTV
 /vmO2RTy01PqhsbmG4mb5XHGS950hQIEBNWf2x7CKhvDhnFwzZclfIu3hgehAG/o6nx1
 pEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
 b=hJYx+Glm+3aVKDVu8EGOYBdve4NO3PcTB3upAKdRLSLsSk9Y56rf1+tre791Rz+tKg
 mikepviXj7k5ODiE+DGMpXi0o27DSzTFLN3IS9LoJvOjC+Mzm4jHXYY3Ic9Wni652Ynb
 G31X5+MkUT81aR2jT0TJlLrC8zvaih8YQeiSYMLgw5YFtSEHwa57402KExAA+ZRJ4rli
 P6Y9k/Gk650jrxkw+FAI5XHcV/IN2vR0AB2OzGuoszq/vjN5Th2Bu9KkQOvWW5MbJGcn
 2Xz2EYZjphHTT3sNhYQ8HtV/l6kex3wS2BufTepEzo0KNwgtT2/jVfL6EpHgKu2uKUMP
 UJ5Q==
X-Gm-Message-State: APjAAAWfTbDjX6DhBh2o+ddPqikYpvDPQ6YUgnZ4Hb4qjiUajy1EhIpG
 yWimpb+zCajozPMmmkSZ0oo=
X-Google-Smtp-Source: APXvYqzZzThiov5OFoGD+8O8B/45mrFpAsO02vijv25JLzLZ5cAJ9CHt0/q3V7pq3tkhuxB7MupspQ==
X-Received: by 2002:a0c:94d7:: with SMTP id k23mr19000528qvk.200.1572313419369; 
 Mon, 28 Oct 2019 18:43:39 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 197sm6698394qkh.80.2019.10.28.18.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:43:38 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 5/5] staging: rts5208: Eliminate the use of Camel Case in file
 sd.h
Date: Mon, 28 Oct 2019 22:43:16 -0300
Message-Id: <20191029014316.6452-6-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
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
