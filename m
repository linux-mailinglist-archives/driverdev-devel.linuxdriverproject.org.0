Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAA81CBE5D
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 09:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99B3187160;
	Sat,  9 May 2020 07:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHCridf26Rkt; Sat,  9 May 2020 07:21:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76D108714E;
	Sat,  9 May 2020 07:21:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0D681BF38B
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 07:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD8AF87FEF
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 07:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0zkiOaES5iz for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 07:20:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253041.outbound.protection.outlook.com [40.92.253.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F64D878C1
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 07:20:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=foqMI+e/LhhIr7uwptJtoE3AkynC5IEpGyUt3ywulAxGx037CDD1fDVbg6j15yIzjIzypVpiQTw8+c/ME04opj4O/QTiNLs5TnpZoUUIhVv1N2+Uh+Ba5mf8N+KejZspRisJAf140oi31S3uoyImGR/9SSPxH8McJRhRJXcVqmwpIWPxWa7K0npFJHVE/SiC67GH3JVmmp9dPZ29lR0JO0LtCrFNjR7nCExlVZnBMpVI1zMlFDX2Ko53EYPnPharok+0wARCemB4paiKlwHwe2vYfDPwcPr6JbIoJrk7qtTsGO71eUquW6VXtcNWkKXdOPsMdo+A0yLpLow5PYd2cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FItLmI0PGb3ZXSvF7IaX1oIwJne6vk52WnNwzrucQgU=;
 b=H1KANdKrxOI/o5oKXOJX9fJUIV4tsY+r8CMfNoqregYBZOaO+4j0Y7Z1MxSVxsIkPwoOtH+LhQdKcPkRaMvclM9diVK/+SkQMhXo6ZkNQ1Ijbstprn5cGb+UYufEb2KxFPjdf/1YNBdlU9q3r5EFMQ62VM+ZUI6FXOMkwXNPyLllwMCbB9/qqQdull0kfwJKilG4xIb9tY6ZolfvhnPcLZomeX+UG9pvonnflRioZoJP7e+3Rm22E4b/9D0vWhefvX9LxdKJFJTa5+2x+4jKjOHxTakIdhypxL9d8WLlTZaxBg005wVuyVXZsG1TtprbPolEd/Dm6qy823i7lOFcRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FItLmI0PGb3ZXSvF7IaX1oIwJne6vk52WnNwzrucQgU=;
 b=R79Somhl3J+WXkfXtx/XVDWhbBNcSgdmiW3v9qdZYf/qnmS4Lchz68EVkLbmBOKBsyZZkR18avyCc9yxf0Lb79TO9q1K2R85I69ynaGrHUotRk/nletNAduaAKeWMHayNdlkE4pnVWCu94K7JkPndNzFzWfs5LMKeBFq4v1oODd/8KW3sAy3NSeqvIK6m7ppfkAnf0ZDz+8qzYA0uNaJUNmsCSiTHRB4W7GbfmKUK9pWaW+35AL2e8NcKZavncrYXpk9jqy9rCuzIgy8dqbPZ4NJBfWVueZa7f9FyDeM1no+JDXbknw1wzpinjyh+7y/pKtR/ZDbWPUMDXbDNMf2MA==
Received: from SG2APC01FT015.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::53) by
 SG2APC01HT225.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::361)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Sat, 9 May
 2020 07:20:52 +0000
Received: from HK0PR01MB2868.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebd::4a) by SG2APC01FT015.mail.protection.outlook.com
 (2a01:111:e400:7ebd::181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27 via Frontend
 Transport; Sat, 9 May 2020 07:20:52 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C03B7F7FD56FD577C9A2290ADD5CFC91A257F2A13FA03CA5D90B4336179E60A0;
 UpperCasedChecksum:F946592E54879235A7A69DDD082C9A671BF773A73FF2776B06DC1087D76228C6;
 SizeAsReceived:7565; Count:48
Received: from HK0PR01MB2868.apcprd01.prod.exchangelabs.com
 ([fe80::dd12:4ba4:5b8b:ae11]) by HK0PR01MB2868.apcprd01.prod.exchangelabs.com
 ([fe80::dd12:4ba4:5b8b:ae11%5]) with mapi id 15.20.2979.033; Sat, 9 May 2020
 07:20:52 +0000
From: Qiuhao Li <Qiuhao.Li@outlook.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8188eu: use usleep_range() for ATIM window size
Date: Sat,  9 May 2020 15:19:31 +0800
Message-ID: <HK0PR01MB28684D4FFF457F5979ECFC27FCA30@HK0PR01MB2868.apcprd01.prod.exchangelabs.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To HK0PR01MB2868.apcprd01.prod.exchangelabs.com
 (2603:1096:203:97::13)
X-Microsoft-Original-Message-ID: <20200509071931.122255-1-Qiuhao.Li@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from XPS-13-9360 (123.165.55.119) by
 HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Sat, 9 May 2020 07:20:52 +0000
X-Mailer: git-send-email 2.25.1
X-Microsoft-Original-Message-ID: <20200509071931.122255-1-Qiuhao.Li@outlook.com>
X-TMN: [zRxB0h+2HFmrW3SMCfHKtI+gk+ESkwio]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 421ced07-b252-4007-76d8-08d7f3e98185
X-MS-Exchange-SLBlob-MailProps: S/btQ8cKWiQr1rwG6sv1IP5kIo/saZpzzaiWp274TMbCeV3lm3DBBOOX1Nz+mePHACXs1ly4ss1TT6Cy95x4j7TK1MjOffHWFCWZQ0TTGuN9jEz/2uSi8yem69EokKLVThQ+1PNgXWSf4tx128qa1dkJudZaQ6jqs4JCPlf6v7If8x6EuBL/WBbQ5hEjiphPwhwhWuSP5hP+k2Z2IaPtn2H/+rM142A9DHUctfQW2FMzO1XmuOPxug7AzG5fiKXloiUXG0AoQJjDyZ/nrWlmxwtv7KxTcj7s7Inm/PVq31+kAoVZmg3Z2pK1pu5qSd6MpnG2I/w7uEprmBva0dQqzb0Ikl2jiE/bD+AprikvjPzGxhV0hDMGnrh4pZuovlQwqGSRF6zWQbH1uHRMoeb9eELEKt5JYDLKNIl2M3jPW79QCQ4PyjY/rswE1tSUjJvGq316b2ATxNFiUAt+Gd2B3xak7zZoETlm0o/Slkx/LIg38niZPXQLKRQcoKh95hRPynFcLIK4IB/8INdNi2j2EwepSoEuU45X0o/qjEEB4526nJLrLF3h13jfmR3wjKDLQDdiuYJrtaX49PGB6Hn8ReCHN8x953ptaxwfbCI+izYVvKrgpl3VJ/2+XrKLYULUnBr/8aPhpf1fU2fykF2wQ3oltsD1ESfvMszPHgpMFnmJE5Smp2IbwTzPcI1uUdZf/wYYTPjlfdJaIZnucxgoE06t8uHjJ2X2N1K7V9Bd9BuG5ugboQBr3eCUkTXR1k0XvKQx7DUeLAQ=
X-MS-TrafficTypeDiagnostic: SG2APC01HT225:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OWrAGpWlxWHSWamDgWdhFG7wqOKVHolIMkFgB68Zztuu++8MS/qvyr75K7H/2TkksZYTXu8FTmFk2f+YcHKgWVPGhZm2kkpdJOkFB+w59Q1MdCZ9g9MRwvOzbqQmWASmp+BucsV+P1S3xczm1b1FoF3/5doCSEXTDJmyJ9Ra6kBe+c7K4Un+pbDgm4iG1K8pC3oFqhtRDjd9UV4T5M5Scg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR01MB2868.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: Vih6XFHFkrIXbQ3KMHXMzHpOpFevZUMeaOCbz3VDxYS2xk629BpaiI2htT3J5logqMv4yPfAdWHhxAJUJDR1RNv4lF26tjl7PoWL/FwrIaVWXHqtMI1vZuK9fF7AwVcHRTxJ6dbrIbjVWXE5vyMRbA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 421ced07-b252-4007-76d8-08d7f3e98185
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2020 07:20:52.4130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT225
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Qiuhao Li <Qiuhao.Li@outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to Documentation/timers/timers-howto.rst, sleeping for small
milliseconds should use usleep_range() instead of msleep().

Signed-off-by: Qiuhao Li <Qiuhao.Li@outlook.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8d035f67ef61..61fdd942c30a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5406,7 +5406,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 			return H2C_SUCCESS;
 
 		if ((pstapriv->tim_bitmap & BIT(0)) && (psta_bmc->sleepq_len > 0)) {
-			msleep(10);/*  10ms, ATIM(HIQ) Windows */
+			/* 10ms, ATIM(HIQ) Windows */
+			usleep_range(10000, 10001);
 			spin_lock_bh(&psta_bmc->sleep_q.lock);
 
 			xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
