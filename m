Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F07811CC62
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 18:02:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79FFF86C37;
	Tue, 14 May 2019 16:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3YpGWKDJHIvQ; Tue, 14 May 2019 16:02:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BBA584DDD;
	Tue, 14 May 2019 16:02:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30F9A1BF3F9
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 16:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DF0287B8E
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 16:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nus4N1ruSNf5 for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 16:02:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93C9287B6A
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 16:02:14 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id i8so15710975oth.10
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 09:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fSlgTFf8KtNta0rz8mLnXIN4jROdf8xysWOhaMNIqEU=;
 b=L9fBlpGqioNOmCkpRrttVJlWrp0wN+k9YLzpMu3TCyxWwKwuMOSUIxOcQoirY8iWBn
 viwTYQJ/CEYk91rd87TzX91kvczkZ/gVat7F1NLQdS7yC9JLlHMb4g15VavvKWeRzTiU
 aPPZc/OQtewTBuA4NmxgyV8U45sViu1PJD6egI+K1mOD77SlGApQ14wz3se/bbBZtvxT
 GTLp+pc1O1mcvhyqRhtSBUzjkJ1RUGl/5nKLRflIpGfRvMqVNmh1n3wd4BVU0COJyw1l
 R2f7JjTS2SRmbMrQmE3YINq/uKjmt3odgA2Sh9JCE+T/Qa2zF/TOczLow0J1feB2aMjq
 5/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fSlgTFf8KtNta0rz8mLnXIN4jROdf8xysWOhaMNIqEU=;
 b=D49dv45X5bfu0Z9xzULH7fBLIFJwIrnirbrzqyx7OOi2m2jHnVY3yGMvYgXNqKcpjb
 NTZS/AJpczT0RLKk7H+Hnw0L5eiaDgiMT5hpNk9BYE1wrjQAX+ocdJ+mYLijmPqHZXT2
 2s/Gh+M3YtR1ZpSKFf9JkFnSVwxoetVL0ijS3y4cFi3yX3mkM5QcDN7fvYESB4VqA3XF
 cHENSHfdrteT1j8QcrefDDOBn9dpb5hoa2Z3g9NTIDIKL2Q0vRJU6aGe8qt4an3BgdIb
 Dhz3hTT6pmH8P9E78gZEOCrqGWddF8ap/J2kBwkZnmrdgs6RYPnupzyYMDxextA1XqiJ
 MHPw==
X-Gm-Message-State: APjAAAUxq+/AVMVy8mzgKCRWq2JfF+gieXxbAWEWVa3vW2DM9gIpwqWe
 k9wXghnFAuR5vFTI91+rSB4=
X-Google-Smtp-Source: APXvYqwss0BQEuHxOP2EKdRXu7b8gJYo7DvkW8SNjwnJuhVOSUneVcogIiRmPHKex4Qqqzc22fHN7A==
X-Received: by 2002:a05:6830:1097:: with SMTP id
 y23mr188736oto.108.1557849733699; 
 Tue, 14 May 2019 09:02:13 -0700 (PDT)
Received: from madhuleo ([2605:6000:1023:606d:fc47:9acf:eddd:8a77])
 by smtp.gmail.com with ESMTPSA id m20sm6498783otq.30.2019.05.14.09.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 09:02:12 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: vc04_services: Fix kernel type 'u32' over 'uint32_t'
Date: Tue, 14 May 2019 11:02:07 -0500
Message-Id: <20190514160207.11573-1-madhumithabiw@gmail.com>
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
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the warning issued by checkpatch
Prefer kernel type 'u32' over 'uint32_t'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index d1c57edbe2b8..90793c9f9a0f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -309,7 +309,7 @@ struct mmal_msg_port_parameter_set {
 	u32 port_handle;      /* port */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 struct mmal_msg_port_parameter_set_reply {
@@ -331,7 +331,7 @@ struct mmal_msg_port_parameter_get_reply {
 	u32 status;           /* Status of mmal_port_parameter_get call */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 /* event messages */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
