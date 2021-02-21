Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC10320A9C
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:41:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FFB66F4DC
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMwVDrup61Rf for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 13:41:32 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 0C5996F4E7; Sun, 21 Feb 2021 13:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02A646F4A0;
	Sun, 21 Feb 2021 13:41:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FBC41BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C57B85868
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHm0aYAonv4b for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:41:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE731848A5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:41:03 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id l18so7022557pji.3
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 05:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYPWdfQDErM49hDyDe8HZEC/S9QGDrMuKNGM0lXXWH8=;
 b=Lf0ILpNmVGQ1kwXwnOF64u30UufNZRlFj1c7loSM3+NAx2vUV1hdZGkYkl6M+pLWGN
 TJsp+xQPvjbCys+SN9kNQ21zLT/2kyKpwCgv7WfV1na4YjWzwKXJ1szywyHxXudlBXdo
 lf/iupzRWgWTU8p3DQHXhMNbC4V/CFhz0h7gNULQwT+/8e5iDcBYS42WV4bGZQkNumQ6
 c6Z/GQOs1joVicArF74k/QpX23chfxgqE3FR0um49GgaRM51IVW59lfG8VRdGLpig8Qe
 N5YDkAwazjsHLvMQH2yoRfkNc9F5zVELiDHe5QUNul0sOdU4AyfCZqdNxo43RX7bW7BZ
 8AgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYPWdfQDErM49hDyDe8HZEC/S9QGDrMuKNGM0lXXWH8=;
 b=ADnVp8oi4EFqNtaBeHTsGkJqr+Shfq08sA1hafnS2nSAt9543QbeqW2QbR7S6j+qdr
 fcrJyn+0NfuLYSwUHeF69DxcKsyJJ7gxhH8nZ9ySoyEFW1o7hE1KDdtoTUqI4G5nE2cN
 7ZLCte+zC0ld6N64UlGdVXL2e/N0GQzzujkPz6Nlaevg1xJhcszeP7rrC2+j2vXCv05K
 F3SaXeFGb+jChy79P1HiH07XvLlJtdZPY8BvISP7eUyIC/dhLWBet7U7fYq2mRrtVzve
 wRM2SU9rkXc+Txg1o1brum0+eFGOcysHwuVna0DG1FP47oPOm/Bi7AB3qbaxMX3OB4b3
 4I0Q==
X-Gm-Message-State: AOAM531Qa5SUHpjQTRWQa1Dh5CcYbbXx0t8soQFJ0XawUTK+puPwQ3r5
 5c777ldSYNSDBUPZ8esDK9Q=
X-Google-Smtp-Source: ABdhPJxhQWbxltNb93GnJoFZbBVPCzJSO/5yxELzBDYYwXvkAejsfhQPzZ2V8NK4l5aWLkMBF8BwQw==
X-Received: by 2002:a17:902:b941:b029:e3:1628:97b7 with SMTP id
 h1-20020a170902b941b02900e3162897b7mr17660892pls.60.1613914863197; 
 Sun, 21 Feb 2021 05:41:03 -0800 (PST)
Received: from localhost ([103.106.200.55])
 by smtp.gmail.com with ESMTPSA id w1sm14440356pjq.38.2021.02.21.05.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 05:41:02 -0800 (PST)
From: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org, kuba@kernel.org,
 johannes@sipsolutions.net, memxor@gmail.com, arnd@arndb.de
Subject: [PATCH v3] staging: wimax: i2400m: add space before open parenthesis
Date: Sun, 21 Feb 2021 05:39:51 -0800
Message-Id: <20210221133951.21234-1-sssraj.sssraj@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210220134652.16127-1-sssraj.sssraj@gmail.com>
References: <20210220134652.16127-1-sssraj.sssraj@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fixing ERROR: space required before the open parenthesis '('

Signed-off-by: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
---
Changes in v3:
	- Fixed commit message (removed filename).
Changes in v2:
	- Removed filename from commit message.

 drivers/staging/wimax/i2400m/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index cd06eaf75e8b..5b53e59084c8 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -523,7 +523,7 @@ void i2400m_net_erx(struct i2400m *i2400m, struct sk_buff *skb,
 
 	d_fnstart(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
 		  i2400m, skb, skb->len, cs);
-	switch(cs) {
+	switch (cs) {
 	case I2400M_CS_IPV4_0:
 	case I2400M_CS_IPV4:
 		i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
