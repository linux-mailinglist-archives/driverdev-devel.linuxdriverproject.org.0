Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E77AE31AE28
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 22:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CF0D86208;
	Sat, 13 Feb 2021 21:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jVenr60mqIUh; Sat, 13 Feb 2021 21:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5046D86193;
	Sat, 13 Feb 2021 21:40:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2751BF327
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 21:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1C9960034
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 21:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZ4NSlhAReoY for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 21:40:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 362306F478; Sat, 13 Feb 2021 21:40:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-oln040092254085.outbound.protection.outlook.com [40.92.254.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CA3A60034
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 21:40:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLd6tsckuSbZOVBry9QdUa7xZsXkkQakHhje1dHKvO7G19x5Dp2/NNBw+D+XDQkaPmbQPTHF3GzeZUTp3JXSpySTEJF2q4BEIA+YLCWbP/pGfQpmbOVkXskCnSiHT4TeM7jWNXMwwldPE2wXCtwoCQh5GiMvv0CElcHdv2itUI9/lmR+BMErTxm9ELf+ldOolQtq6bt/eFTJQm4dhT1XqfnTj1txRYFu75V+2f/v1EI6WVd3rZ0PCNWeQ90nn4W8w9jQqhA8am7yPlLJULq9R4ACxro+A2p1A2pd1SRnrbxcHqOWLbcyFbTpECG6WhirfpT8fCxVllFd0kdGVVGdCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UF9MrMQPamAxJP37GIWwZy9Jxss5iocA2E+wNxnM2Ds=;
 b=IAclWEMv77StgelzDsEdztsYWtgbX57hAAyqwuya+HtkfJgp0pjXafXn/pryQybftN8l9itHqQ31C6k8M14vvHsEHr2kR1Er0BzL+oa5wnOPNEPHWpgkM6+NC/E79bPIuY80X9EfSler8tym+vBdosjWqvdYPm9/VCvvNUY021/Rsu+XuPWQy2fmCCp40LMfrLgnj75UxLBcGR9HSts+67XPpXCiFFI6XzFmko4UE/kVYilfBtCXGTNaO13h8C9x3kNHPT3/3m0UpVik4ed/+Dogv65GgeIEpGgfN+u60oDvq25Kp/mlzPPye3L0iKE5s8Ctuyj/upmppo4y19ydog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UF9MrMQPamAxJP37GIWwZy9Jxss5iocA2E+wNxnM2Ds=;
 b=pXrwHhj6Z/8KeKmg5EwQF2RITY9PN7R3FIJk+veTegyW6pqv3dN9j1pMmx8k9S9I4TqurcasNvKObxgK6WNOw+2H0lDvlFkM1oXyxYZOk9TtZKY+Z2tkuAfKEBTeZZWwPsJP8dWdGgMsfY4pNMscdhOeaplQvJlCSj7w8Kq9onnCZzPnIvz1/EZ+E4vTS/A0EUtO04KgZZR6zeEdIgRumE+PO96NFjo/eaxuasZ9g/HHt8b6eyphYwr8MGazbdRI+HyhCeoI4mM59bu8Ibqmk09GMEn45LwID94z2JYezXuRcceK4Fgr1yfq5rsrh2kDM+XAF/Z2f4x5qYHzxdmoLA==
Received: from PU1APC01FT013.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::44) by
 PU1APC01HT213.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::428)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Sat, 13 Feb
 2021 21:40:38 +0000
Received: from ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM (2a01:111:e400:7ebe::4c)
 by PU1APC01FT013.mail.protection.outlook.com
 (2a01:111:e400:7ebe::78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend
 Transport; Sat, 13 Feb 2021 21:40:38 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:01AB514B6A2D13D16F517B8FA4D700CA2E6ADB2C192A43B30FAB6E2436B8E9CB;
 UpperCasedChecksum:02B40F549C2F6F93ED8C49CB194B4E9D4247C467B93B304E9AE2F14D61733698;
 SizeAsReceived:8553; Count:44
Received: from ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e47e:4c81:d07b:847f]) by ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e47e:4c81:d07b:847f%9]) with mapi id 15.20.3846.038; Sat, 13 Feb 2021
 21:40:38 +0000
Message-ID: <ME4P282MB080872A776B92CCC33A4B1EFF98A9@ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM>
Subject: [PATCH] staging: wfx: logical continuations should be on the
 previous line
From: zhuo1angt@outlook.com
To: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>,  Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Date: Sun, 14 Feb 2021 05:40:54 +0800
User-Agent: Evolution 3.38.4 
X-TMN: [lyk7W881BFg3Gp9NS0XGn/eCWm1eHykQ]
X-ClientProxiedBy: HK2PR02CA0160.apcprd02.prod.outlook.com
 (2603:1096:201:1f::20) To ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 (2603:10c6:220:98::11)
X-Microsoft-Original-Message-ID: <8039de4d5b14e19776748fd20c2b4bd6cf88b72b.camel@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.31.144] (114.254.90.40) by
 HK2PR02CA0160.apcprd02.prod.outlook.com (2603:1096:201:1f::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.26 via Frontend Transport; Sat, 13 Feb 2021 21:40:36 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 44
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 2cf2dc22-1eee-44a0-d1b2-08d8d06800af
X-MS-TrafficTypeDiagnostic: PU1APC01HT213:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ia8xxlk7NSzPL+riuKYwuk+0aWW+22SN/sm0X26K/YH0W96Vrx34fmuadWCkV4W95lotX+bg1yEd9D/hdmGmLpWQ5h307ggYhhNllX1Nfw/ToW4T3sak1fOnqIuogbkHb7MBW4HBEs7oiL72KLg4cKPOw4khDuUoCWLvRyXL3F5RE8LEFX9lOxQNpzwg0eez3JmcHCMwftnLCZAehj0btflqA6WHQaNsFCEghGlE62INb9Mk8tm1Gi+xmBNJMf20PxDX1QnCwEwt6JRLzIAS3lHrn0Fy8gbG5+zAyZDQH2eR3wIbTZhFOX8IBW79XHivVnaR63Qc0LzdPXDifOTK3HrhwWkpJnCi+kBnu/oTBRE4SrnlPBxBpRLLn3kY5JCdMX7IfqZ3jRjn714VPK2Ksw==
X-MS-Exchange-AntiSpam-MessageData: G72OZuP9BCkvWQA9bqA1hNWLKziHl/n/dmGmC2Hg9HNiTakYeXC3Je+5YZh94Ak4ifvTOxtQDXZvrUlOpnK7VaBR9NZnmQdbKuTfyg+eCQLAd6JlhtNzG9FmSRqO8taWSH9p/pFHfQlqACnT6IMUKQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf2dc22-1eee-44a0-d1b2-08d8d06800af
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2021 21:40:38.1684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT013.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT213
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

Move logical and operator to previous line to comply with
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
