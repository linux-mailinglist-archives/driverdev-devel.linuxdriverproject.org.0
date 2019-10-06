Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FABCD8F5
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4C4285C1D;
	Sun,  6 Oct 2019 19:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQbEpkijSwNj; Sun,  6 Oct 2019 19:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDB9585778;
	Sun,  6 Oct 2019 19:40:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA511BF23C
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41AE885965
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZncijKWSjCmZ for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 889E081D61
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:40:40 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id u184so10684786qkd.4
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 12:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tAvJBPPuJlaqIzmhwS7DOMxS9kFELAL1Kh1UTZJWTvw=;
 b=aWuTmuNt/cwf8xULZEND+TalnK7/OAylSM+8h2yu5z428rgEIM0BsJ/0eOvXo9/aC/
 M7DGMXrK4yEVfLKfU3hMTawTOOpcqTok4rAViUDfa8ewzwkasBzShe7RK45nkfX58ixX
 4ZjRcqUV1UL9iOzVAhmB3Iqj+awIcRUD3Zoj1DnJGTyUNoMV6/qoBh9QdrT8itbitH7V
 +eTadj6u6bakQ2ntNHEJ6+9KfyTupIgrihmqvAnhbrfOfaMixsqwCkVoYZ5q2uR4N/c2
 Y/oelBZyYzlyBcLZroa0C7210RDoO0RVQh4LZMKX/AlKSBGjUliIDLLCl8ufRFK8qoFM
 25vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tAvJBPPuJlaqIzmhwS7DOMxS9kFELAL1Kh1UTZJWTvw=;
 b=AjSYEoIC+H1TwrKEhtv4yQ4vHk5xgn4yvFDcQNcvqVZo3V4pwjx/esORjgIt0YmeuE
 nKnQGWyM0HckxLqKnCF97uHIh05jqzvPOQvjb1aYPUA2T8WY8PXQstouHGaxd05Yk6RZ
 jwrg6raUnQdy+DXDHReB7FVmQFAMBAgfYfe8hn5qfFVrIjM1mKzeD4V66rp7nIkjijRr
 rakv3fuQWiH6kdahEzdVR4Zg05eAbRxQIt/nZwI2lNQWghqdQBEiF3gnRAZoai2vDZ9j
 i3b6gXyKsvcgELwHAySnFq+L20uTwCmc2ecpgOnNPZyWLrfvyqk6Q528AfjOJE9fhrRy
 h/Sw==
X-Gm-Message-State: APjAAAX9TtWjWAXdUK14eqe3hzzmrtt6LvEC2pBCXCuIjUCQZpFi0aOC
 DdmUeJPWe/4x0ob+VoL4TdI=
X-Google-Smtp-Source: APXvYqx7YXHPZO3/zImxSPgAk8ZTVWllN8562XHrz12UHwRmTN7W5vgwTmg93hSbrawEuiEtxzFs0g==
X-Received: by 2002:a37:4ecb:: with SMTP id
 c194mr19976895qkb.126.1570390839361; 
 Sun, 06 Oct 2019 12:40:39 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id l48sm7912450qtb.50.2019.10.06.12.40.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 12:40:38 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, trivial@kernel.org
Subject: [PATCH] staging: vt6656: reorganize characters so the lines are under
 80 ch
Date: Sun,  6 Oct 2019 16:40:30 -0300
Message-Id: <20191006194030.8854-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up warnings of "line over 80 characters"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index c7522841c8cf..922872b62994 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -112,11 +112,11 @@ static u32 vnt_get_rsvtime(struct vnt_private *priv, u8 pkt_type,
 				       frame_length, rate);
 
 	if (pkt_type == PK_TYPE_11B)
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, (u16)priv->top_cck_basic_rate);
+		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type, 14,
+					      (u16)priv->top_cck_basic_rate);
 	else
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, (u16)priv->top_ofdm_basic_rate);
+		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type, 14,
+					      (u16)priv->top_ofdm_basic_rate);
 
 	if (need_ack)
 		return data_time + priv->sifs + ack_time;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
