Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86C31AE18
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 22:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07FEB86C08;
	Sat, 13 Feb 2021 21:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FM45vZ-QTk3; Sat, 13 Feb 2021 21:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB59086BC3;
	Sat, 13 Feb 2021 21:19:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD4621BF327
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 21:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC23A6F510
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 21:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnd-J13TB6NJ for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 21:19:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id EE42E6F522; Sat, 13 Feb 2021 21:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-oln040092254070.outbound.protection.outlook.com [40.92.254.70])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A00E6F510
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 21:19:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXzWmXl0Q7s6/4KjYZ2DifpGyJG7r+hVtJ747ObtqKQ626aHEsSuORdURXWQvUNHxpThSBmQb6efBlwMoqK8yo5NnsQrEyj5loCqHm7GIMDap1xSJpcZjEO6Bfi5UDkMzZ2yQ9c5HMyFFCdolnqZQcTgxqYA6zbRD9ORGZzEtPFqxB6pHX03V6gZW4aOShGeJ5gDzmBVbFyjgxlcLPGl1ST71RqyQNEKDffrGorQVC8PULechApmikatzJZaceG22tLESyXeRyweMJ5jthLNDrwNszCMGpsPw9I/wkHsdtOTY4UUrsil5C+zUWwKSWOOsnl9eeTa01KGq6FVHDhpLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stu8cTjYf3P2Ni4fpYsk+/N0s+KZes4peQFc2/P2UF0=;
 b=inhaQMscnm3V3Gp7DXsbUidbNZov4C216hw+1VKHnIHaqiRrAW9y9kMUIH6CoWrf9OcSXin0zkffAXwFFgMxw9X7VYAE1iGD6WNOJKRCe1rvHgNdx2SbHY7ulgBvPGR/pvY5wcbq5r+9nPd2zAdYjwkAFddqaX/gGw1E+IwZ7ToL3pFq8t6Pvfh7m7D8Leq/lGq8r19TFRJjlnoibNqyDALE67nJmFS2pkeVhvSA4dP3YYmoYvFZTpb458WYm9aDFcQS5/lQe5hIwDX0AsG0rYmfh5x4WgFEHgzITxUt5TVJT/svFplyv5dJgoTM1LXDmsjH5Lhjzq1qk0vcxqciDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stu8cTjYf3P2Ni4fpYsk+/N0s+KZes4peQFc2/P2UF0=;
 b=laiDxIDzqeGm7siU9eIM1GiYMM3n0B4kDSec8Fex0dktJ7BHFwmLu1MrRxGEj1EnI1Aa4e1GUQ2cDFXrWigNOen840qRWXtm/q9Y9OhSufjLq24fDdXGbRYeKPdWCAw6pmHQYpTnWaxv2Aei67EXmIAndKPc8g9WPh6LPIdu8Y6kyz/9q0EQ4FdxOq541+xQilKP9thlp8wpzWIyGy74EWfZK9t2EC+9ecoziq8V2O5LdQ6bN/0rJR6LfNJKZ4TcgGbyLfO9p8MHomhiza4sz8nfXiAoMezzRMuj6fTCX6srub+16KK6ZP0dVHA97FCVG9oKKM6JrhzcXfVDU6pFFA==
Received: from SG2APC01FT063.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::43) by
 SG2APC01HT097.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::456)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Sat, 13 Feb
 2021 21:19:05 +0000
Received: from ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM (2a01:111:e400:7ebd::4c)
 by SG2APC01FT063.mail.protection.outlook.com
 (2a01:111:e400:7ebd::442) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend
 Transport; Sat, 13 Feb 2021 21:19:05 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:5106A465CCD158082E161208E08EB08884D34E39EBFD120A9027F1659E238FD0;
 UpperCasedChecksum:1BD210F199FD75C6202FE974B3EE3BA0FFBC9261A7614D434E9CC008F8A77E13;
 SizeAsReceived:7372; Count:43
Received: from ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e47e:4c81:d07b:847f]) by ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e47e:4c81:d07b:847f%9]) with mapi id 15.20.3846.038; Sat, 13 Feb 2021
 21:19:04 +0000
Date: Sun, 14 Feb 2021 05:16:41 +0800
From: zhuo1angt@outlook.com
Subject: [PATCH] staging: wfx: logical continuations should be on the previous
 line
To: =?iso-8859-1?b?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Message-ID: <ME4P282MB080801C23076AFA45F2445A8F98A9@ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM>
X-Mailer: geary/3.38.1
X-TMN: [/JMgMH3n6j8FS6m9xaZ1J0kxWLXr6As/]
X-ClientProxiedBy: HK0PR01CA0069.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::33) To ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM
 (2603:10c6:220:98::11)
X-Microsoft-Original-Message-ID: <TFKHOQ.OLELLI2SS6RB3@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.31.144] (114.254.90.40) by
 HK0PR01CA0069.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.26 via Frontend
 Transport; Sat, 13 Feb 2021 21:19:01 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 43
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 3020d762-6894-43f2-6fb7-08d8d064fd7a
X-MS-TrafficTypeDiagnostic: SG2APC01HT097:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YiVYCqVqbnL/4zgTe0pzPVGFN+6/JWMTSFKsI7l34W4hsgWHItqAGkNykpkhNvnKUHirjBIQJAUyhPbXe1bMnK7gTryAqkVtBD6qph+k+mau1FbKP+0Djja2ad0szaDg/XmIjY2Za/tT1JmdFxeAFJZOKvguDJliTsv5jmlXngalo0bYaHaWB7oTBTI7Dx/fvxhcTdb6a63HDaxPEOnISF8bCxYxfsXJNGt5WCeCzYTZV/+V8l49TehuqflTCaK9YZ0VPLJJzuQNnEAT8PimWuRq5E6I92T5vHLD5uPJQdivZtOL4Cgde5fe0THTUTU/kr3LrDZcVtI3ljeYaLA37WcMkGSxYt9Wpej7+C9fHIBSIgA+Pm/2M0lLb1JH6I5kmz6Ra97Asn0YP9OE6EwIwg==
X-MS-Exchange-AntiSpam-MessageData: P3gGB74AqGOqLM59eOzzB3Im030yjIKEDcYOMt+o4Hzgb8dN3kJO5Eq+pgR8lKlGa3pGwDc8BQ1WHAbJUvDABJAmHEskEOfHZCYqvxmH/IltUbDvG6pj2Xt9IyJ0+kZ9sfinnY7zqczjp0nkJAHHhQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3020d762-6894-43f2-6fb7-08d8d064fd7a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2021 21:19:04.4764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT063.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT097
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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
@@ -391,9 +391,9 @@ void wfx_handle_rx(struct wfx_dev *wdev, struct 
sk_buff *skb)
  }
  // Note: mutex_is_lock cause an implicit memory barrier that protect
  // buf_send
- if (mutex_is_locked(&wdev->hif_cmd.lock)
- && wdev->hif_cmd.buf_send
- && wdev->hif_cmd.buf_send->id == hif_id) {
+ if (mutex_is_locked(&wdev->hif_cmd.lock) &&
+ wdev->hif_cmd.buf_send &&
+ wdev->hif_cmd.buf_send->id == hif_id) {
   hif_generic_confirm(wdev, hif, hif->body);
   goto free;
  }
--
2.30.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
