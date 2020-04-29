Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8068E1BE27D
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 17:23:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33C9387BF6;
	Wed, 29 Apr 2020 15:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JuLzRpwpFMT2; Wed, 29 Apr 2020 15:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DE3A856C8;
	Wed, 29 Apr 2020 15:23:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D31C1BF36C
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 15:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08D82203CC
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 15:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AkBLBG5jwvkp for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 15:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 180B620004
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 15:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588173810;
 bh=9xJxvPZShBiX5YUVDWZ45XfKd4uqcu8Vsjy9FyH64YU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=e3nWgTOf+HhmtONAWtIUrqfhWKz/6Qxpto7McGsZR+Sa80eKd7KY1piCDVpOyPVoq
 966KX17Zno94XdDrNQZKyifIF13PIXMNg6ARHcnovBY/Kjita9KpPVlIrDAFoVJbss
 +Z8otm/vsByZrH9jCwsCq6jDUtjCs2CFxxLXy+VY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MDywu-1jM9Zt32we-00A1Zo; Wed, 29 Apr 2020 17:23:29 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: vt6656: Check the return values in
 vnt_set_bss_mode function
Date: Wed, 29 Apr 2020 17:23:06 +0200
Message-Id: <20200429152307.5871-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429152307.5871-1-oscar.carter@gmx.com>
References: <20200429152307.5871-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:HdUsT6dvbq2UpXZVFJxcEXX2tRtTQpAhdm9OGUOACPwLWho2M+D
 WO5GbI+MNc5aJNQ1rPpwGjmgpIRgGvjl2uKIlJcGVsLq46viPX1HsOCv4JX/kPN41a9HLYm
 6CFaUExtFoTZnnPREq47DS2OtCJ3xpE2C4fGsrhtF5M/t2kxF1SSzBnJnI4pdXaQFLDy8t+
 MD104Mvmy7DFLNZ2ySuAw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LtSUTWmsIO8=:vKkpsHPS3gezVEYqCRLRec
 TYWiqx3NiC2UIYvF140Fet2LuOJ+wkexGpC2GDdotVLKYv3P3J4JuPj8w3kTmL4IuDzAGWrFJ
 8LxSDMjHcCOvI2kuszr01CCjIpcT0+yDhKGgE4j0UhywJ0cJKMdfftZ3k66MvYeoHyq2zE8ru
 xP/Xrz/U8RqGqP/RlU2I+bAcju4pii34Xh/kfXI49S5xHCXrUXiVw7ptzHg1Q1tgM+nq1FaNR
 B22Us+MxhmgzgxfKngoexww5coG/7rnMZ5ML+Pr0i2p/GXBGCWpkDtBhPOJGwDCUlZBwStqFS
 EpblQ3Fn5C67HStmQySBcLs78VbYKm2gKxBI5okiERQXtdQ9vFL0SsL9DRP6Ce9YR8Lfx0r8F
 yzYJaNNowtM6n0U9FKq3JI1NkRgZS7SmYD8glMjVkd5tWNjA8amTMpUqRl0+ohgrqxJMTJ4IL
 MulzUF/7fkFP+gPgy0cngSkyt5RJbgfLSjaoJgQDo3/iwA9gBfj0tOhk73JzwwpIEiCTg02Bb
 xKEiRccaS5dtl8+X35LZ15jkJcx2PY2t8yfLvPyifqGZLADqbCOE6HLNVT8emSqTi8a8drx6N
 CHKKtLbFa4qjLyEooibTLhzzNhANL/aqnCj5AwTMbtoiqowYT/syH4OWjz7MZUktyJdtTBPxF
 7gPqC+epyktPSOvtm8yA38RQtGAx1T2m4ich34fc0NaqpXbReyIPDdfC4y05Uq8ZMvv9MoKyQ
 9bEFdZ6YBSY/z3eu0sxsCkPwIzI6JyhEP+Qnf0cTTnzT6f304kJtEgZkWrZdpj7o5qr1bHRvB
 ruIjo23FeyQkpNM9DAP+MpbTeF1ka3FdB/V49n6mnWFK9r3woTFMF59euup5gCtBd8iWexv+u
 MGpEYAp75nAFqggbl+pbvusvQPjhROOhJaUk0QF/7vwNN+gHpUA6y3L14FEXXlUhmZ3P2xIQw
 YI8eJ6RWCneN5o+phiN9Fa5MH+ci1t3qC+kQ9H15zMWYNL5zfygbbxP44PGHxqm0nJs46ExWW
 XN1fale0HVfZmncpmXGPRQ3oByf81dSCubi+opx3AaftG7lu4HbxVb4jWGkosnu1+vmjDhPup
 KlC/v5PFeE/YWxfRhNiGPHQF9OQMHAWeWkzz0MLYKv/6vvMjMP7MJSL9EFh3G0VFcNWjZl28x
 aMytOfYJJ2R6a+a6DgOm6jbFNnNTGnlBuvLAv0rd6WSwBLCV8RNztzA+EHyUbKYEV4YqV6Qn8
 Uc+2aBV663RAmQOt4
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Check the return value of all the functions that return zero if
successful or a negative error code on failure inside the function
vnt_set_bss_mode.

Also, remove the unnecessary variable initialization as this variable is
set a few lines later.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 872717f9df49..0854b70cb89f 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -471,12 +471,15 @@ int vnt_radio_power_on(struct vnt_private *priv)

 int vnt_set_bss_mode(struct vnt_private *priv)
 {
-	int ret = 0;
+	int ret;

 	if (priv->rf_type == RF_AIROHA7230 && priv->bb_type == BB_TYPE_11A)
-		vnt_mac_set_bb_type(priv, BB_TYPE_11G);
+		ret = vnt_mac_set_bb_type(priv, BB_TYPE_11G);
 	else
-		vnt_mac_set_bb_type(priv, priv->bb_type);
+		ret = vnt_mac_set_bb_type(priv, priv->bb_type);
+
+	if (ret)
+		return ret;

 	priv->packet_type = vnt_get_pkt_type(priv);

@@ -492,8 +495,13 @@ int vnt_set_bss_mode(struct vnt_private *priv)
 	if (ret)
 		return ret;

-	vnt_update_ifs(priv);
-	vnt_set_rspinf(priv, (u8)priv->bb_type);
+	ret = vnt_update_ifs(priv);
+	if (ret)
+		return ret;
+
+	ret = vnt_set_rspinf(priv, (u8)priv->bb_type);
+	if (ret)
+		return ret;

 	if (priv->bb_type == BB_TYPE_11A) {
 		if (priv->rf_type == RF_AIROHA7230) {
@@ -521,6 +529,5 @@ int vnt_set_bss_mode(struct vnt_private *priv)
 		priv->bb_vga[3] = 0x0;
 	}

-	vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
-	return 0;
+	return vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
