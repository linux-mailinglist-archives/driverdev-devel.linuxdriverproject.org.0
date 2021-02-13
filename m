Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E8131AD12
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 17:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26AEB8623E;
	Sat, 13 Feb 2021 16:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYoqcCoeXesO; Sat, 13 Feb 2021 16:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEB1985E43;
	Sat, 13 Feb 2021 16:23:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF3B71BF405
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 16:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CBC4A85E47
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 16:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZTIf7yp8EA7B for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 16:23:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-oln040092254013.outbound.protection.outlook.com [40.92.254.13])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B51185E43
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 16:23:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkFhV+/HZi974THXDt48c/evZOh/sxkcTVzMQUCkp2ndHkWPZrM0kynNH2FM67LzNfYZYP1XeizsCi/RCBaOcoy7NGKGj+RhC9CD5Przr6hXf8wGHvVqtpiRaxuON344Z1BwdVf551EStxrIVv45n/dO0wHckDoZe7eDRFWAQkVLDDAEK8oFI3JxTPWuZ+Z2wuR8YRWiBi8BPXP2/9uXhtD1+/QleP+40iMd/mBx7zdSH3X7mpbjtQDDxPRiqFlRmFt8Q1/d4yp7SEplpVsqer+7xPvdAmDtuE7CKJBJmpD32/GDqFzUcuXgUCGW6/CbXNMLG7TvDRgwxzVxIR91dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BVPFH98Z495Jq2I7NQzRt5MPZ/iU3qNL3a3nZW9+11E=;
 b=coUgBNX5RMXiy5r3A46f0Sc2n7giRaJrwY8PLWfe9u1ukCmr7sGNxfxRMdT2vFtRmo/L0d5QSUr0i2grA+j7o+VLzV+zJKjabOaPLlIg9mULl18qOlVFCQEqMT8KXiLITEV4k/DcZW8VyoQ7R7LRFcpE7iMs2i4QH41aqZEnAFZcqqI0QzBUwDQ4qE1CwDezn4ZHrqxyDY+/WQ5gbJsOP4TuX5be+u8CGB0hBu4avv90mzk6FWV20ImD39uQoJIFwIIH5iBJzGzwf/FfphoaS2sB/8ENtgQ388RGaZcdCR6dnCE5uxnPLK/CQ9MkX0ZUlgWHZVxJKPLjwJXF5nseBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BVPFH98Z495Jq2I7NQzRt5MPZ/iU3qNL3a3nZW9+11E=;
 b=DS8FJXaqJYtVkT9V73WXe8Iizmdbr48iEjXApQTMxuZEdyvw1PFRSwwqziSZdi8GqcCGfaNqO5fxn9Dc9BZaJD9TTBtsdTw3OFDbN06YhSyEeIP7DKV6FTA1ddH68rZ4SVWXz0p1IBl+igX7vK4iU+r5/o1+Z7pAiw5kBLY5W1SUr0LtLkOm7+sLN6tlLkrKDxMdgp2NHaihxQeswIF3vFtu5nhEnvO9IRz61Cc4JF0lxvqG0GRm4VekuNTZj1OSr4ACQ9PVw3e/BQiRjZIX3HyqhSeWmREAe9dxw5gdZWoQR9BSXnjkCmrAv2GYuwsiy9xpUg+f0PMBF/tEcCH13w==
Received: from HK2APC01FT054.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::44) by
 HK2APC01HT240.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::261)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Sat, 13 Feb
 2021 16:23:47 +0000
Received: from ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM (2a01:111:e400:7ebc::47)
 by HK2APC01FT054.mail.protection.outlook.com
 (2a01:111:e400:7ebc::284) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend
 Transport; Sat, 13 Feb 2021 16:23:47 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:6E6B0AE1FB99351FC6162A763B732D97ACF69DE0832CF5B19BE68B63F395524A;
 UpperCasedChecksum:096662DE0B87B02E3AA6C7140DE0DA5E92AD3BA7CDA175238E753D0074B9440A;
 SizeAsReceived:8448; Count:44
Received: from ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e47e:4c81:d07b:847f]) by ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e47e:4c81:d07b:847f%9]) with mapi id 15.20.3846.038; Sat, 13 Feb 2021
 16:23:46 +0000
Message-ID: <ME4P282MB0808D827E83D8DCB58313565F98A9@ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM>
Subject: [PATCH] staging: wfx: logical continuations should be on the
 previous line
From: zhuo1angt@outlook.com
To: "<jerome.pouiller@silabs.com>  <gregkh@linuxfoundation.org>"
 <devel@driverdev.osuosl.org>
Date: Sun, 14 Feb 2021 00:23:57 +0800
User-Agent: Evolution 3.38.4 
X-TMN: [YePIuwgP3GogM6BzlAa4yxQYcNRFw1RM]
X-ClientProxiedBy: TYCPR01CA0073.jpnprd01.prod.outlook.com
 (2603:1096:405:3::13) To ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 (2603:10c6:220:98::11)
X-Microsoft-Original-Message-ID: <d319b4b35a9f1f3850dcbcff24f30ca233448284.camel@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [127.0.0.1] (104.238.148.79) by
 TYCPR01CA0073.jpnprd01.prod.outlook.com (2603:1096:405:3::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.25 via Frontend Transport; Sat, 13 Feb 2021 16:23:44 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 44
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f0926284-11b0-4357-886a-08d8d03bbcae
X-MS-TrafficTypeDiagnostic: HK2APC01HT240:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +ou8foZg8b86UIsuXHazr0nj/wrVMSEoF6YzwlPnOA95KSozSoU63bDW0zmyiGvDxRz5y3v+7wNqmbB6c5Clty7iYFZChYrl0QJ1zK9QQ7/E0gYHs0FztDAlDwHFkCy+MXVjzlWSsMVTPnWiCdRtT9e6eHJ9zV881++EikB+kaIUc4lhTVM/8m5oDQQQmjz37K260Lp5K0US4oo9CQj6vDK84V1c/G47TMH0SZILtfPuSjOC+VDYUHS8WwnqjfU/dNAAfGHMZgAOK8eZ2Zg07DLaiGbhgNrbDHX3DLxe9chyOqgD9Ss8G14ZEhR3yhjasMO3A+2+xekzuZFbpI6E4L2d9ynD6Dbcp0F8dX6e8GFnLsWa048ym6XgLvKqAmcA9sM0RLt0S9gcGqEs3+IQ8A==
X-MS-Exchange-AntiSpam-MessageData: IUmOJrMz1gp4rs0lIBoc/LCXNZNnNAyqLPnQabZPWBWsZhiBpZf+eoxukBAMQiOdkd7J3NC6Xj4SxaCmp6Eb+zzn3bPcA9bnIiYdgcomYLqfdUQPxrF93ku2f8SKrRb9ySlAa9THIwfHi0KkDx1TUA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0926284-11b0-4357-886a-08d8d03bbcae
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2021 16:23:46.1710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT054.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT240
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

Move logical or operator to previous line to comply with
the standard kernel coding style.

Signed-off-by: Zhuoran He <zhuo1angt@outlook.com>
---
 drivers/staging/wfx/hif_rx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/hif_rx.c b/drivers/staging/wfx/hif_rx.c
index 56a5f8914..9fca7f263 100644
--- a/drivers/staging/wfx/hif_rx.c
+++ b/drivers/staging/wfx/hif_rx.c
@@ -391,9 +391,9 @@ void wfx_handle_rx(struct wfx_dev *wdev, struct sk_buff *skb)
 	}
 	// Note: mutex_is_lock cause an implicit memory barrier that protect
 	// buf_send
-	if (mutex_is_locked(&wdev->hif_cmd.lock)
-	    && wdev->hif_cmd.buf_send
-	    && wdev->hif_cmd.buf_send->id == hif_id) {
+	if (mutex_is_locked(&wdev->hif_cmd.lock) &&
+	    wdev->hif_cmd.buf_send &&
+	    wdev->hif_cmd.buf_send->id == hif_id) {
 		hif_generic_confirm(wdev, hif, hif->body);
 		goto free;
 	}
--
2.30.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
