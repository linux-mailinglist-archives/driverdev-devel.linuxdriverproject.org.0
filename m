Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6134B589D43
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Aug 2022 16:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD79F40BD0;
	Thu,  4 Aug 2022 14:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD79F40BD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uihrXRZ-drQr; Thu,  4 Aug 2022 14:13:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C52A40BC8;
	Thu,  4 Aug 2022 14:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C52A40BC8
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58D2D1BF32E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3386640BD0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3386640BD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyhM5WMggDOy
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:12:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22995401B7
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (mail-tyzapc01rlhn2181.outbound.protection.outlook.com [40.95.110.181])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22995401B7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:12:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=myS1P4AyVgVPMbr1jwbbHUTfLCBm/PeLqVrwU0riY17IY/TIaTdqREc8nUzRJC1APK6mMnfAUlsY64Bvi5zNxs7s5taMUJ0ttmrD7OdfCDBDQvQZ1kd3vuDTtkONSPMjoHUsnMQ86B2NAwQLYT0afExOrE6vaND2ACdlfwOncXmVH5FHR0EbYRI1uzaLATFa7k5TwVvqqMasMybHl/y6osLS4tAxUZd9513WphLRMlomf5VNdzCE5g7BADqCh4Ayt6WTph4nU6u1ypofRDnbpdLg2PZK7Rwe+P2wZJ135d/+CrfwDqJgjkzPPbtOuu81sRzdccB7nMQcw11du/HP1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9x+p64WL12qyDT97YwME7jx+tA7W5EpkiWzaBlXTvk=;
 b=L+93lXXK3erVqNNdgfShPSpUEB8avPSfiEaJfJO5GjbfK4vyXnEw7dnQ7oMeEHthtsN+mjICb8JW7tC0X1zDYa5MMQW/RVFpX+5VYMTW954yCGTsBPg8PZjzlKdcrYF23nHMD0MhoghHvBT/i0tBXgdcQeUd8Q2YQVzmsLN4NmT5vuzeirEEUPtzPeDumvmVmYHOZu9PHsUzSSNQ7xqfG1AFVUuujTYzoXt/BWhQRxFWPE1KWejDly8e2nZq3Lb37dGob1ZkwMWoCYms8d/UOqRdiABf+k7dfihd883+Jy1dvmcsWrfzsdYC5oNRJanGzgALQMhcdCn6OuWaOZbqMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 20.222.87.207) smtp.rcpttodomain=hotmail.com smtp.mailfrom=daum.net;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=daum.net;
 dkim=none (message not signed); arc=none (0)
Received: from SG2P153CA0028.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c7::15) by
 TYAPR04MB2429.apcprd04.prod.outlook.com (2603:1096:404:19::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Thu, 4 Aug 2022 14:12:52 +0000
Received: from SG2APC01FT0066.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:c7:cafe::59) by SG2P153CA0028.outlook.office365.com
 (2603:1096:4:c7::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.0 via Frontend
 Transport; Thu, 4 Aug 2022 14:12:52 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 20.222.87.207) smtp.mailfrom=daum.net; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=daum.net;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 daum.net discourages use of 20.222.87.207 as permitted sender)
Received: from mail.prasarana.com.my (58.26.8.159) by
 SG2APC01FT0066.mail.protection.outlook.com (10.13.36.173) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5504.14 via Frontend Transport; Thu, 4 Aug 2022 14:12:52 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-02.prasarana.com.my (10.128.66.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 4 Aug 2022 22:12:48 +0800
Received: from User (20.222.87.207) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 4 Aug 2022 22:12:44 +0800
From: Reem <reem2018@daum.net>
Subject: Did you receive my last mail? I contacted you for an investment in
 your country.
Date: Thu, 4 Aug 2022 14:12:45 +0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <63b1fff1-cdce-4165-ac04-82a13b47f18b@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[20.222.87.207];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[20.222.87.207];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21608b5f-4b23-4c98-bb87-08da76236b37
X-MS-TrafficTypeDiagnostic: TYAPR04MB2429:EE_
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?lJlFEZOjd7TmfMnT2bNrrWQhe0LWUrVlsWoMAPwX8WNGptpIZD8rQdKE?=
 =?windows-1251?Q?UTm4MyHwVAuTJPScQeLD8L2yHYiTN1W97t5Ts5OqDLOcwTREhg9oPtrB?=
 =?windows-1251?Q?a4U6fzS8fp4hzTMbxT82JhF/p50UINZQvuN9NQuZgHA+2JLtFL44amxP?=
 =?windows-1251?Q?VG4tnEbAQQCc0gnRTQ21633y9JUDzSMFBweBPn+ku7heyOucdhM1dRQ+?=
 =?windows-1251?Q?fDQkXhgmqlTybUBSrxIJpUHLKKVzMAfyrtZLZaVZu0Qep1T/Q1jiJ9hS?=
 =?windows-1251?Q?OylK6Ywfb1kAILcAnX3Zcyc8Oal4lpIBsnkuHYjHUPFxRwGylheHRmPP?=
 =?windows-1251?Q?pe0JFtV2b0m6CPA7tkrO5h3tHiuq+Dpe7u3A3713nVBmZoYAKWgTT2Tk?=
 =?windows-1251?Q?tOU7zcL2VOiBsxqafQ7ZwwhvNVw4iYBgbHEMnRAr63cVUj7VDsPWBC3k?=
 =?windows-1251?Q?zue/GrMIi/p43tVDBlg9Ba5hBjTLXkLVmc5PbMt0EivY3JO1rNSzt3D2?=
 =?windows-1251?Q?vPBYR7gTDTe+3QTKrhJBEqAMkbIy/J2EWN5AI3mIbOTHyQB9cZS7hdYL?=
 =?windows-1251?Q?PXYmqgMgd2qdjr5/tOO5JXBupSI8pVC5xkPjKG6Ar2uf9nmEISjFLAO3?=
 =?windows-1251?Q?iUcMzTKoP0C+vq5knxY8BQevdT8almANjwmHwbXSTdliVhf77pABA8l4?=
 =?windows-1251?Q?31qZKoxMS2DGECBZcvR151IsL6o5tsnGI9AorkxZV/2NQ+sNQrE7bs9i?=
 =?windows-1251?Q?mFX2W0/rMcJnvPqx37OJ84nxPo01aNU3t81ESZEeUVmyKI2gxtMV55Y6?=
 =?windows-1251?Q?tNfOZ/KoxyHjUEZWIMolDVCjhNMeHOYTGc6NhSz0Mt8XAqNQGOTRh/Zi?=
 =?windows-1251?Q?dDuJZ+po8/lM4Tt/vFkvpSvcmEgKGspp594GTv0A5fiIyb2Be1mVkZXj?=
 =?windows-1251?Q?+WYFnInwRf1jdIKkZNQdiWdvs+8lNjac3YwBUIO7tbzKZxRSihCwZS1s?=
 =?windows-1251?Q?//pnifHCiIstvBDgtqpLfjz815NZ9ngxYljyCuJSBd2iFWiZRxuf5x/S?=
 =?windows-1251?Q?0/Udn69E5+XHngP5HxWDayZ3wsrOFEp+lYUDOCI6AH2cA1FRZErQIGXJ?=
 =?windows-1251?Q?AebLhN5y90sM0pyues2fzW+m63nQ9Fioo+2BUJ1YAZ5NLohedTRM4U5r?=
 =?windows-1251?Q?qhjOx/+M9doJyqZ74Z/+J1aG56OTXz4PGRJoM4b+711gRpR03QOi9Gzv?=
 =?windows-1251?Q?86Cf2uyoNMoXkC/9ALnu5frEdLv4PQpgrdnn/NjM1KhyQgPjqJvT+7h9?=
 =?windows-1251?Q?WaTiSabXxXiMflXMsvpQByXnPzkul0Rf1ZRd2H4jhO3OrAMzIUaVuNK2?=
 =?windows-1251?Q?0LE5Jrtfs4licgq2jnEujS2PI4gGXNtbrBMwRJURFQ/qLJerR2L8x4B4?=
 =?windows-1251?Q?4s8p21fw2+f4XDAGvy9XtvQEIXpPP20NyLKTisc8tv/ye/atWKYPjd9p?=
 =?windows-1251?Q?kdiVk2GI?=
X-Forefront-Antispam-Report: CIP:58.26.8.159; CTRY:JP; LANG:en; SCL:9; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230016)(376002)(396003)(39860400002)(346002)(136003)(40470700004)(498600001)(40460700003)(81166007)(35950700001)(41300700001)(82310400005)(26005)(9686003)(82740400003)(8936002)(5660300002)(2906002)(7416002)(7366002)(7406005)(31686004)(86362001)(8676002)(40480700001)(109986005)(956004)(32850700003)(156005)(336012)(2860700004)(31696002)(70206006)(316002)(558084003)(32650700002)(36906005)(70586007)(2700400008);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 14:12:52.0156 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 21608b5f-4b23-4c98-bb87-08da76236b37
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.159];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0066.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR04MB2429
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
