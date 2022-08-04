Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3690589BC2
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Aug 2022 14:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98E5D4159F;
	Thu,  4 Aug 2022 12:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98E5D4159F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IydS0ezT8ozh; Thu,  4 Aug 2022 12:39:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 169E9410A1;
	Thu,  4 Aug 2022 12:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 169E9410A1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7478F1BF9CB
 for <devel@linuxdriverproject.org>; Thu,  4 Aug 2022 12:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F49560E37
 for <devel@linuxdriverproject.org>; Thu,  4 Aug 2022 12:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F49560E37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVPpmfkBNt7h for <devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 12:39:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B571460ACD
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01rlhn2166.outbound.protection.outlook.com [40.95.53.166])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B571460ACD
 for <devel@driverdev.osuosl.org>; Thu,  4 Aug 2022 12:39:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9SGYorOCJ5YWU4YGGErIrInnc3M5PTAxXC2TysEb2yLrM84B0oa/1w/kjdat1M0n+iaxOht5slBcq0oYQAwtwehb6quASjxi5iq2BT+w98CbMhyG2M4pahQp8W1oIkmSuscvgR837ku4ZZIy6a6tPAYOKHsvomb20urDQT9S/DNJxPW8m5du3unoQErZahgWlcsO1FkZHqRYVCqYwXtM4JU9j2e6DvnrX+VMPk8snoe9ust8AnOkw0ng2iV0ZSO/kRLXQiHZVI4XIPvNu5hZaog7rUg4Ejrf+Xe4XHZjbl+Ay723PGoHFjRn6YYMqn7LGSgvUT6UGLFEniEnru1kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9x+p64WL12qyDT97YwME7jx+tA7W5EpkiWzaBlXTvk=;
 b=ZlBZmg2v+bm7ZNL3kQZr6/TIcF3Ech6bamqLfVwBRoQ5lUTnHXF20roAiSNFjQpd3AnPnv0eiBTaiBcdf4xXg4FNRLnw7D4+YQs6K1wx0KmWvfjpe7bp33emy5xv1o9tr8IW8yu9QcVDb4nHTAfqSqA7kT1VtAg8AzkcNgnxb/lXRk1q8mvxdMWeDUneOt5h73qRC8qP2ukKaFBCcHIUHyjTUHupJG7wf1mbr0o8ScSNOjejYiXKHhxOcaJB1QZ71DanANYvfvvRl/WXxj4R+Z5LyrOzvYWsY4fKDSvTvUHu7PN65Q6jnqZNVHCb4BfuHohhWNzuL6Cw63jVh2ZuGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 20.222.87.207) smtp.rcpttodomain=acpica.org smtp.mailfrom=daum.net;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=daum.net;
 dkim=none (message not signed); arc=none (0)
Received: from SG2PR02CA0045.apcprd02.prod.outlook.com (2603:1096:3:18::33) by
 PS1PR04MB2904.apcprd04.prod.outlook.com (2603:1096:803:46::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.14; Thu, 4 Aug 2022 12:39:11 +0000
Received: from SG2APC01FT0040.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:18:cafe::b7) by SG2PR02CA0045.outlook.office365.com
 (2603:1096:3:18::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15 via Frontend
 Transport; Thu, 4 Aug 2022 12:39:11 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 20.222.87.207) smtp.mailfrom=daum.net; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=daum.net;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 daum.net discourages use of 20.222.87.207 as permitted sender)
Received: from mail.prasarana.com.my (58.26.8.158) by
 SG2APC01FT0040.mail.protection.outlook.com (10.13.36.122) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5504.14 via Frontend Transport; Thu, 4 Aug 2022 12:39:10 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-01.prasarana.com.my (10.128.66.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 4 Aug 2022 20:39:10 +0800
Received: from User (20.222.87.207) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 4 Aug 2022 20:39:06 +0800
From: Reem <reem2018@daum.net>
Subject: Did you receive my last mail? I contacted you for an investment in
 your country.
Date: Thu, 4 Aug 2022 12:39:07 +0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <c671e592-20f3-4575-8f58-7ad61992f118@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[20.222.87.207];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[20.222.87.207];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25eb2693-6137-464d-058b-08da761654c0
X-MS-TrafficTypeDiagnostic: PS1PR04MB2904:EE_
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?hhU0CTvgDladhl6vKF5yBgzL9F1T8x/lpRpY0rnm73ITBAHTZeVdTOZr?=
 =?windows-1251?Q?ohjlgkDcW4raW7a4SIEsk/5+4rUP84tTsC9SlYTiqak1G0Ul2iqOoR/a?=
 =?windows-1251?Q?hu/g/POZBJWnyVmNofSFeOEHq2XavCBO2BKvf96wiSvLAQbZGFIDCvkS?=
 =?windows-1251?Q?Q8ytUYE91exKAJToldFGp5drUjsijiHSL2QelbqjEZlHCw+5gKTTxM2y?=
 =?windows-1251?Q?NVmAoV/Qh8muRCVvreTNqcuvnWxyRq3PbaHi/mtl6OiaEpu0Ogc+H6Pu?=
 =?windows-1251?Q?Iq5A9cbvUJNKzGSZcsyEZVWtzTCxBEhD0xjdzMtsEIbuKXTiWsN2Ua9l?=
 =?windows-1251?Q?wtuMSGtylif4X+nkuTxhgDtSAgGLyFveMgf5ChRLHpZw8gwp6mUKvX6W?=
 =?windows-1251?Q?zu8mkqzeLRudSeuq9/1QnvuwLzB1E9Q40SwrH4IxzNP6pBMVWUuOzy/g?=
 =?windows-1251?Q?A9rWUtvvvazPg2P83pv8175b2zJ3d+1Um6s8rbpRBU/nrFm/jLQfMCu7?=
 =?windows-1251?Q?9FWNJukUYq0GMZA2tsfbogS1KziuK+oZADQ46Gk69knlT3T86ifer3qT?=
 =?windows-1251?Q?nIvAEiPhGi+ul3ax4u9TJ24HbDH0heMjyskvltmuHZlF2btWnNiisTZD?=
 =?windows-1251?Q?rnwIqY9iGtM4tyM+E2XfUjVyoyMeCFY1fYxTEDCCC9LatP1dGjEy2Ktw?=
 =?windows-1251?Q?CggMnLVA4F9zWy7cPVbZ137LXu7w0vaaJuISosje/lKgTBzriCgNn4ij?=
 =?windows-1251?Q?sHtDiEiDnCAVFr3bfs5r7xfi8eqAK0/b/dN7yHFPjx5rbRu/+MZ/of3h?=
 =?windows-1251?Q?VJkK23PAKovo0FYxo+0jzez5ZOAOQEMAoZUstbuFARo4NYx9xYVycoGS?=
 =?windows-1251?Q?qhckXSqSBKYjHVelBm28G/Kc7W5P5oHkFBI6lRoiI8Ya9k9UOZO6n2Y2?=
 =?windows-1251?Q?O8C3C84TAbp3k4I/dvThX7AtFLfHq/HMFNus9248E2TRFF/YD2OpQ8VX?=
 =?windows-1251?Q?SwUyAv3VqnpASnXRH0wX9gzV1RFZOzybZAbK8lx5ftQP7C+cpHbfoYrj?=
 =?windows-1251?Q?Wy4k3VUZU+8PXIXBmYByDJqnuc8z6ekgqeQ+Gu1sXpt/vhGktIjm8qb2?=
 =?windows-1251?Q?4pK4qMpLin8jqdH0dTiyuPjgEC00taYIKuSeqbLrCC2WtBk8Q2WqBeyH?=
 =?windows-1251?Q?mEXU/PRzdauubhD7unaHw/uAJzUU6MC0qgBJNlMMRIEH39fNRtVYg0aZ?=
 =?windows-1251?Q?MLLiHgW+ROtbMu9GBi+S9jyCqUSEDQgK55mjcZVqqYnsefCDQqDR+xH9?=
 =?windows-1251?Q?fP2vFx6OpZUA6FLWSrm9wUB40s1ejCBAT4eUjvpOtDyNMo6EI7VD6gKR?=
 =?windows-1251?Q?Zs5pFr1IL0wTSj2ZUe1T95e9hzF9I1I+ZwRoZ4dVYECHJz5OWdPAe1jS?=
 =?windows-1251?Q?m5Oq1MclHv9XuWc02SxFWy5UH4QkdQ7sUg3M4E4+pkrvgh5sWa6bfQqy?=
 =?windows-1251?Q?W0N5FIeD?=
X-Forefront-Antispam-Report: CIP:58.26.8.158; CTRY:JP; LANG:en; SCL:9; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230016)(396003)(376002)(39860400002)(346002)(136003)(40470700004)(156005)(81166007)(316002)(32850700003)(35950700001)(41300700001)(2860700004)(40480700001)(2906002)(82310400005)(36906005)(32650700002)(40460700003)(8936002)(26005)(86362001)(956004)(9686003)(31696002)(8676002)(336012)(558084003)(7366002)(109986005)(70586007)(7406005)(31686004)(5660300002)(498600001)(82740400003)(7416002)(70206006)(2700400008);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 12:39:10.8637 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 25eb2693-6137-464d-058b-08da761654c0
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.158];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0040.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR04MB2904
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
Reply-To: reem.alhashimi@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reem B. Al Hashimi
PO Box 899
AbuDhabi, United Arab Emirates
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
