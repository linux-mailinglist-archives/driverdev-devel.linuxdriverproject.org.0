Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F82831F634
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9D8087032;
	Fri, 19 Feb 2021 09:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rf9UqMg78mj0; Fri, 19 Feb 2021 09:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0292786C0F;
	Fri, 19 Feb 2021 09:05:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6711BF853
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13555606BD
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HzdDKCqIRHf0 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 09:05:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 45739606CC; Fri, 19 Feb 2021 09:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE9D06069A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 09:05:08 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id c8so16348229ljd.12
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 01:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fyxcM3rL+yuYfyz4s20NYKPrfQit00unbZSmdl/USKk=;
 b=qTDs9BEtnbTIKhBniKg4uDJE7XQ1FRMhxT+4YV2Y5O1WWruy96cHF0FobQDy6e7WXe
 fwgR2oyRtJmU14IK8+4E71hpTl3idYkZQYBKRlCqExagkYjdpYfv5SwLMNXM47H/GSvI
 0bl//9EcX371NIuXVdbALkly3NSCxYuy8lIVZMC/As/MoT8RLB/zVwBQxL8LN9iVVoa5
 zWOF+W0WOJXuTrEjm3jtf2aoJSczvDoOOOVKtbeycoS/LQlIQf65+sei+VYpP52JFgI4
 5JNO80TfABuJx6VNop+4gm/UUyxY/ZaxQ/PCf/0D9kv3tGDfRH6kBk0clu2qeTT+o+Jz
 MgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fyxcM3rL+yuYfyz4s20NYKPrfQit00unbZSmdl/USKk=;
 b=XB41hIDQ9DyYDpvfMj0UyZI4tPIA2kGnRHWBrHqUd+Xa7sbOMceUFXPqtJSFJFo2v5
 x9QuT2CuO7IvCrRoiL2MSBWmS6zVfiNumAM91p3AFxVqwQA6Og6offjuWPAAOVjhJGAd
 PhTKnBY4a7tkL1sgaly5tr5FRuCarYWOMDAerraMGs8fWWEyThtHt3uSzakpUSFPJ8HM
 d9FwQLvrqyfA827JD+CJokgZMzcl1Ov2bswwwy6CfadJBChu9PrcTP5rqZgylnHrDPjx
 xJudFaC8N1Ks0kZRWqs4OMv0KAxqf2xqoPOMVGS72yq3BS5Jvva2epgPFjnMYsxTV2SN
 uZ7g==
X-Gm-Message-State: AOAM530h3HG5pZAu91lh8NOUX7FhHp5gyZXAw02M2SJuiDlwLD5rVWIJ
 9gJrlUq2jvcoMhDyz0chu4Y=
X-Google-Smtp-Source: ABdhPJwLWxUr9VDEjc8T/+n7qWLkpjvYxRa3c/SJtcWv339/7Cw/XTpWMgnSRMnKnWobSBhXcfen6w==
X-Received: by 2002:a05:6512:2355:: with SMTP id
 p21mr5236374lfu.111.1613725506525; 
 Fri, 19 Feb 2021 01:05:06 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id 194sm861708lfo.263.2021.02.19.01.05.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 01:05:06 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org, adawesomeguy222@gmail.com,
 dinghao.liu@zju.edu.cn
Subject: [PATCH v2] staging: fwserial: match alignment with open parenthesis
Date: Fri, 19 Feb 2021 12:03:18 +0300
Message-Id: <20210219090318.20795-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YC9zX1aIgj/sVnQY@kroah.com>
References: <YC9zX1aIgj/sVnQY@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Alignment should match open parenthesis

in file fwserial.c

Additionally some style warnings remain valid here and could be fixed by
another patch.

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

v2: Edited changelog, as suggested by Greg KH <gregkh@linuxfoundation.org>

 drivers/staging/fwserial/fwserial.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index c368082aae1a..137e97c9406c 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
 	if (state == -1) {
 		set_bit(STOP_TX, &port->flags);
 		ret = wait_event_interruptible_timeout(port->wait_tx,
-					       !test_bit(IN_TX, &port->flags),
-					       10);
+						       !test_bit(IN_TX, &port->flags),
+						       10);
 		if (ret == 0 || ret == -ERESTARTSYS) {
 			clear_bit(STOP_TX, &port->flags);
 			fwtty_restart_tx(port);
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
