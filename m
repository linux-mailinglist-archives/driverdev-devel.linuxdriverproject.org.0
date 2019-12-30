Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CBE12D19C
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Dec 2019 16:55:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B7B6857C1;
	Mon, 30 Dec 2019 15:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a7LzLmroyDkv; Mon, 30 Dec 2019 15:55:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E02A285792;
	Mon, 30 Dec 2019 15:55:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 585F71BF361
 for <devel@linuxdriverproject.org>; Mon, 30 Dec 2019 15:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 546A887152
 for <devel@linuxdriverproject.org>; Mon, 30 Dec 2019 15:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ak0xtIBZd7ek for <devel@linuxdriverproject.org>;
 Mon, 30 Dec 2019 15:55:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B743387134
 for <devel@driverdev.osuosl.org>; Mon, 30 Dec 2019 15:55:27 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id a124so14237329ybg.2
 for <devel@driverdev.osuosl.org>; Mon, 30 Dec 2019 07:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=58VefUNI1Hj0F9zlhiCoQzCFKomrgTvZEEVdE1v+Dik=;
 b=QvQsPTvFPAHEl8kd1fAlobXt7Yynz7ZVbroAE0f67rZRUxnllntgsohzrRVExGbpqB
 FeK+cfAAPwJkyP8TF2x3VNv27DQ+mpYpCe/BvCtLb/8uz1+3oZWc2dvTNs1jNli9qTjs
 okxHr8Boi6PmgUawTXoNacswcwGNos68qHRqQwMHs6FuSo4Nei7TeiWq9xT6s4z7Pr9S
 FaGDW7f9yzkwQK8hZIt277cdlADpt8fQ53Ag2feILHT10cGI7h7/ZXS6MZiaa28Uz+0J
 xa1f0on8LtbvPpzmrEizFHe8sBiEK7CcWeJkSrVYgEPfOPse0VlLTVUMBIEq208O3m/5
 aS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=58VefUNI1Hj0F9zlhiCoQzCFKomrgTvZEEVdE1v+Dik=;
 b=LfjFjVr6lRkmxV+2QQXEy/f29K4+tyB5kX2A7SwF3nKR6dteqjAF1nx3aN/ufwAovl
 bP+ukHuPCbIia9kChlIKwoA1Z3e+4piURLUFU6jEL0dodCqK1Ijc5m+1fjDb2Zg+1ZLE
 BNPh1QtGSwrAEolpQW+bpI8kjW3EuAMhRnrbsNLaec3GJnbRa9FoYJvniGETsERWpvTK
 utru1JGq9kPTePIJ5qMfsfc9/Z1x3HFH1V4NAClwBvWIxn27PNIQjhGw8mLyNn8y+5iM
 0V6Ni0FCmUY5TTuTYQe2yu0Mvxw8RWlTtiVBCOo1+uAvdLMd5tyK1j6knvn/T046i+Fx
 +Rbw==
X-Gm-Message-State: APjAAAUprf335v0JeFI53lBFBdLF7tO9f7jJI2saydgzP3t64P9gHy/r
 GHBzY2+5+VWLfuZA+lBLjYE=
X-Google-Smtp-Source: APXvYqz7Wfq8q5/eX3xpAkHdK9OcfDn258qbUVwjItfx3qwK0uhs/97g2chZpHq8xEWL2dCVATtg5Q==
X-Received: by 2002:a25:bfca:: with SMTP id q10mr46486462ybm.223.1577721326827; 
 Mon, 30 Dec 2019 07:55:26 -0800 (PST)
Received: from user-ThinkPad-X230 ([2601:cd:4005:d680:598a:ed33:1bb1:b28a])
 by smtp.gmail.com with ESMTPSA id m30sm18008899ywh.12.2019.12.30.07.55.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Dec 2019 07:55:26 -0800 (PST)
Date: Mon, 30 Dec 2019 10:55:20 -0500
From: Amir Mahdi Ghorbanian <indigoomega021@gmail.com>
To: "forest@alittletooquiet.net>" <gregkh@linuxfoundation.org>,
 quentin.deslandes@itdev.co.uk, indigoomega021@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6656: remove unnecessary parenthesis
Message-ID: <20191230155520.GA27072@user-ThinkPad-X230>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary parenthesis to abide by kernel
coding-style.

Signed-off-by: Amir Mahdi Ghorbanian <indigoomega021@gmail.com>
---
 drivers/staging/vt6656/baseband.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 8d19ae71e7cc..25fb19fadc57 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -381,8 +381,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 
 	dev_dbg(&priv->usb->dev, "RF Type %d\n", priv->rf_type);
 
-	if ((priv->rf_type == RF_AL2230) ||
-	    (priv->rf_type == RF_AL2230S)) {
+	if (priv->rf_type == RF_AL2230 ||
+	    priv->rf_type == RF_AL2230S) {
 		priv->bb_rx_conf = vnt_vt3184_al2230[10];
 		length = sizeof(vnt_vt3184_al2230);
 		addr = vnt_vt3184_al2230;
@@ -461,8 +461,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 	if (ret)
 		goto end;
 
-	if ((priv->rf_type == RF_VT3226) ||
-	    (priv->rf_type == RF_VT3342A0)) {
+	if (priv->rf_type == RF_VT3226 ||
+	    priv->rf_type == RF_VT3342A0) {
 		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
 					 MAC_REG_ITRTMSET, 0x23);
 		if (ret)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
