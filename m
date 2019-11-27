Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C374410B557
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 19:13:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9910876D8;
	Wed, 27 Nov 2019 18:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z4qUQw+FP3RU; Wed, 27 Nov 2019 18:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1E208767B;
	Wed, 27 Nov 2019 18:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C79E31BF5F8
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 18:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C36DC204CF
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 18:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJVFXMU93P-n for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 18:13:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52])
 by silver.osuosl.org (Postfix) with ESMTPS id DC94720487
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 18:13:41 +0000 (UTC)
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id B4C3DA3AB4;
 Wed, 27 Nov 2019 13:13:41 -0500 (EST)
 (envelope-from tdavies@darkphysics.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:message-id:mime-version:content-type; s=sasl; bh=HnS
 it2iAGrkpb/0lh8GfuGsud64=; b=OJchBEV6wTsNHNpy7HpC7G/Ykj8hPSmc2iU
 ZNyHUf/fy7HejdoHYF3plA4CGLSKo3UdjpuPMKv0eNmDfi7ysYPoUAsam1k4G4Rh
 JSUoN6qGExnYBlwH/326J6V3kp0bV9Kr28BXpCgBH8cxWaFdbH+Zb1j+bgFwsuYE
 oLNeP8ic=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id AE10CA3AB3;
 Wed, 27 Nov 2019 13:13:41 -0500 (EST)
 (envelope-from tdavies@darkphysics.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=darkphysics.net;
 h=date:from:to:cc:subject:message-id:mime-version:content-type;
 s=2019-09.pbsmtp; bh=Gqtd4QHY8nTTSygAMreNmVhoqCMBhmX03by6Vmi1kJg=;
 b=FFtJ3wlsI9Uuh2UwdQBzLcdaZElv24AnStLIS3w9Bw8MDUtq9Rr+AqIbz5xH+Ji4G9XbmHqD62qA8/7Bw+Gbgi2z8P+2yeCIRjsbtcUoLzxjFSrp3Cas31GvWhKUTXojBP/pfKW9qPZleBKEQXO6Pmvdri4al1ctVexluOy5wg8=
Received: from Cheese (unknown [24.19.107.226])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id F4210A3AB2;
 Wed, 27 Nov 2019 13:13:38 -0500 (EST)
 (envelope-from tdavies@darkphysics.net)
Date: Wed, 27 Nov 2019 10:13:31 -0800
From: Travis Davies <tdavies@darkphysics.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>, YueHaibing <yuehaibing@huawei.com>
Subject: [PATCH v1 1/1] staging: rtl8192e: rename camelcase variable
 'ShortData'
Message-ID: <20191127181331.GA27000@Cheese>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Pobox-Relay-ID: A2D5C114-1141-11EA-B6B5-B0405B776F7B-64344220!pb-smtp20.pobox.com
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch renames camelcase variable 'ShortData' to 'short_data' 
Fixes checkpatch message 'CHECK: Avoid CamelCase: <ShortData>

Signed-off-by: Travis Davies <tdavies@darkphysics.net>

---
 drivers/staging/rtl8192e/rtl819x_BA.h     | 2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 8b6e4c26f0fb..34d66b8f5155 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -20,7 +20,7 @@
 #define	DELBA_REASON_UNKNOWN_BA	38
 #define	DELBA_REASON_TIMEOUT			39
 union sequence_control {
-	u16 ShortData;
+	u16 short_data;
 	struct {
 		u16	FragNum:4;
 		u16	SeqNum:12;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 816d31c1d5c7..4d3dac55e189 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -61,7 +61,7 @@ void ResetBaEntry(struct ba_record *pBA)
 	pBA->BaParamSet.shortData	= 0;
 	pBA->BaTimeoutValue		= 0;
 	pBA->DialogToken		= 0;
-	pBA->BaStartSeqCtrl.ShortData	= 0;
+	pBA->BaStartSeqCtrl.short_data	= 0;
 }
 static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 				    struct ba_record *pBA,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
