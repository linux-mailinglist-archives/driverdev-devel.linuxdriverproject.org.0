Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A27932069D
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 19:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 120668376D
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 18:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhpREL4a16AQ for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 18:23:54 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id EA516836F1; Sat, 20 Feb 2021 18:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4367833CB;
	Sat, 20 Feb 2021 18:23:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 550BB1BF5AD
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 18:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51DE48702B
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 18:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id go2urhiWy00M for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 18:23:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4EFDB8702D
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 18:23:22 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id s23so2894475pji.1
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 10:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tx3C6MQ/2W0OcQUststq3v1GAaEyt4L8MEaJY+h3wHQ=;
 b=lLPKJyj6Ou0GVccjRnKQAz3zDe598q2HfszOEmJFoIv/ujcgtcdsLeOdU8m+El4XHc
 Ono1oJjJ//HiF4HcIkqzJQKHenjJ8W+HAeO2HzYZDMZ+6dCzBjhvzSwWZnS55/3UmbMd
 3Pbm5aanrbE8CCPzAla7LOXlqpuonctyAJFn+8d3oZbq3KBlYxEIw7U9OcVMtLZtcdFd
 eUTstAoVRCkSTYkUzVNVy00ppkdlD6JD6dX98MnDU69uMkmz9KHL7eJh98VcUCyBe+vX
 eJSSAlWuwxnP8VgCK3pDKrIC4SD/hC+ARVU0IsgfTRVAE7QQXCDZOwSxDsk28s4xQGwm
 jqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tx3C6MQ/2W0OcQUststq3v1GAaEyt4L8MEaJY+h3wHQ=;
 b=Csg7UQrlY38A8LzEGF5H/3mUr7zZNeqCYltbrEXVearVD1vF5nfk43F4m+qVshGzR9
 dHN1jE7xJPwmUA0fLhuwmWPZCCSkHcyL0nUWsq+bXxzj9HfTV8zZgUs34oK0iTuTLiW9
 Wsvsbe7ADy+NTgb3FrJXnoh6N0ZbQByziRfXpzTU178pKrIZhyGALhysEL/HkYYz4S9i
 ebUDgHPqEudhIn4xveyBdWN9aR+3gxLKQ6sgtj2Na/qCcFhaBbJJG27Eum6bGLUuaoqW
 qT2MC44pS4yzTvtj6q8LcCuI5RcMOOwNOy5bbTpFMElMissApqWoWtr2uwxCVLopio0H
 qJ6g==
X-Gm-Message-State: AOAM530r6OzjkhezhsuUCQmI8EdGq6w1iZHfFzgin10Y5xs4UwFAGUAu
 zvM0sxyFQ6XQq4t56bQ2CEc=
X-Google-Smtp-Source: ABdhPJxWNXG8AZGdp+stm8C69Cqhrqn+eIt7mtCrDyNWhNKqk1pe8rIm6rKYpskFeH6hH8x7f4yT+Q==
X-Received: by 2002:a17:90a:d148:: with SMTP id
 t8mr7278134pjw.73.1613845401976; 
 Sat, 20 Feb 2021 10:23:21 -0800 (PST)
Received: from localhost.localdomain ([106.200.44.186])
 by smtp.gmail.com with ESMTPSA id j34sm12461018pgi.62.2021.02.20.10.23.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 10:23:21 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8192e: Change state information from u16 to u8
Date: Sat, 20 Feb 2021 23:51:55 +0530
Message-Id: <20210220182154.9457-2-atulgopinathan@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210220182154.9457-1-atulgopinathan@gmail.com>
References: <20210220182154.9457-1-atulgopinathan@gmail.com>
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
Cc: tiwai@suse.de, devel@driverdev.osuosl.org,
 Atul Gopinathan <atulgopinathan@gmail.com>, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The "CcxRmState" field in struct "rtllib_network" is defined
as a u16 array of size 2 (so, 4 bytes in total).

But the operations performed on this array throughout the code
base (in rtl8192e/) are all in byte size 2 indicating that this
array's type was defined wrongly.

There are two situation were u16 type of this field could yield
incorrect behaviour:

1. In rtllib_rx.c:1970:
memcpy(network->CcxRmState, &info_element->data[4], 2);

Here last 2 bytes (index 4 and 5) from the info_element->data[]
array are meant to be copied into CcxRmState[].
Note that "data" array here is an array of type u8.

2. In function "update_network()" in staging/rtl8192e/rtllib_rx.c:
memcpy(dst->CcxRmState, src->CcxRmState, 2);

Here again, only 2 bytes are copied from the source state to
destination state.

There are no instances of "CcxRmState" requiring u16 data type.
Here is the output of "grep -IRn 'CcxRmState'" on the rtl8192e/
directory for reviewing:

rtllib_rx.c:1970:			memcpy(network->CcxRmState, &info_element->data[4], 2);
rtllib_rx.c:1971:			if (network->CcxRmState[0] != 0)
rtllib_rx.c:1975:			network->MBssidMask = network->CcxRmState[1] & 0x07;
rtllib_rx.c:2520:	memcpy(dst->CcxRmState, src->CcxRmState, 2);
rtllib.h:1108:	u8	CcxRmState[2];

//Note: The last line of output is my commit to this patch (u8 instead
of u16).

Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
---
 drivers/staging/rtl8192e/rtllib.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index b84f00b8d18b..4cabaf21c1ca 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -1101,15 +1101,15 @@ struct rtllib_network {
 	u8 hidden_ssid[IW_ESSID_MAX_SIZE + 1];
 	u8 hidden_ssid_len;
 	struct rtllib_qos_data qos_data;
 
 	bool	bWithAironetIE;
 	bool	bCkipSupported;
 	bool	bCcxRmEnable;
-	u16	CcxRmState[2];
+	u8	CcxRmState[2];
 	bool	bMBssidValid;
 	u8	MBssidMask;
 	u8	MBssid[ETH_ALEN];
 	bool	bWithCcxVerNum;
 	u8	BssCcxVerNumber;
 	/* These are network statistics */
 	struct rtllib_rx_stats stats;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
