Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FD133B478
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 14:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A3984310D;
	Mon, 15 Mar 2021 13:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A91odR24LYSx; Mon, 15 Mar 2021 13:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E3B9430ED;
	Mon, 15 Mar 2021 13:30:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C82B91BF31D
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 13:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C545F835A6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 13:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nmgMiO8aFNtW for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 13:26:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2057.outbound.protection.outlook.com [40.107.220.57])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0CAE834B6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 13:26:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FUEzhnuXxFSSJzsEoGwBtpRMZpycEOou9SfrHt8YdmHDcumYZmC7Gh2vD/822SL0jhC/HVp4sIoVBsQe9jUa2AShvNkm1g/A8uZZrs0uODLhzftc8w8V0cUKVPKmL64IbuWCntHjOi/+WiqJNWJnByAkFFbj7v7+xugL5nXA97SRDuUPvsdLHc/OgwKk/XA2imT4RQEILD+skO6LU5HPi2vziMZOLQOs6j0G/qpBx6GkyRaB86nRt6YOQqxgTOyAHppAWPqb7q1t+gdCoWwkRncLvmD1x+C6b74rY2pgOpRMN8r2+t6txNXtGLlfOadOZ67o3j6QltDZqEIB8h8PQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QD30PBEaCfToNdF/rcIx3GRQcMqKaHt7d3BH8KwE7TQ=;
 b=NYM49yeYpZkozT8ne2XQiUzSCNl1RQ3QqOgXdUOPEDclSs9czoNtMkOtYl4mLluX49vs2G1T+KBtiPorq9jDD+XvQHrKvO4V/FrIEwnExv6NiJos/rUJ2aVZ9Rc9Q1ocSg2TejEDMI9L9zOd7qXNj6kiaRP9FO7xYUUjWhwo5aGd7R+wGa03xmTTjfDOzn9vpkbPc+nu89QMZSA2qFkDpVaBBL1ltfLWrfuLOs4rwDb6P0vOnXzQHANtjE3pzN4J1HbNkmvq8PYuWqBNByRBTDHSeAv93AhCOQFzr7eq1Ux5SNO3H10DccArn5UKD82pxT/gZWNY3CNHvuOv6fsn+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QD30PBEaCfToNdF/rcIx3GRQcMqKaHt7d3BH8KwE7TQ=;
 b=Mftbntpp3vZDuGGPHD5lT1/8JlPKslgkaJMsbI1QjDCChd5CJUSHuqG629oyAAVYXH6yceaOvCNQFKT/tA3n/Q5fZd6oXkKDPVAqWHKQKVBYsCp/4gz1+GhNoiTx1XvMohv1KX+ZvEFzE5yxW+oAn6+09+Bf+9x2bZropZUCJew=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3216.namprd11.prod.outlook.com (2603:10b6:805:c1::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 13:26:29 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701%7]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 13:26:29 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v5 24/24] wfx: get out from the staging area
Date: Mon, 15 Mar 2021 14:25:01 +0100
Message-Id: <20210315132501.441681-25-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-ClientProxiedBy: SN4PR0801CA0014.namprd08.prod.outlook.com
 (2603:10b6:803:29::24) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 SN4PR0801CA0014.namprd08.prod.outlook.com (2603:10b6:803:29::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32 via Frontend
 Transport; Mon, 15 Mar 2021 13:26:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 845851c3-ac83-4745-1a2d-08d8e7b5f0fe
X-MS-TrafficTypeDiagnostic: SN6PR11MB3216:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3216A0893812172A4A41E520936C9@SN6PR11MB3216.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CMG9rrwpEuKCHqnmQJ9/NE84DMAMGU+MMtUpdt9ZiDinl9547gg5AsZ8S1CyjA2PbmCuwgqPgFpvZYVqYu6DCPqv55x0/SxdDoG+pKg5qIab+ub/YApKHBUIlQnU/td3AC1pUYcpyI/rYE82yGhFXBLJoPVFx60aksZB2P72YIPupwDVSKEGVoO0ssKHBrE5RzwOmC4ppLnyUmZoR8wuYqHxq1sEFh6bTYwjFM+b7LcyKcUim4EPT0kBJ5lReE1OpwpsX3kP7YTgITk8z3pZ2sApLa3/i600pQTTF/KnoN/02THCeXKGe0/VPZZV3rO5atgtgy7FgESw6xg8R0T6FF4gEIoe+YEIpXEy/GYxZFk5ufmMTkGChBeH/hxWBwo3niWOeEz7HG7ZhKzw1bqMDt0GX2wnZHXPtgP2tDS7gdaZLd8FaGDZ8OV8mW1J0xJPiC94FYGFcKM4oPGTa7xVcobHTJL/SehZJTxWY37dkc71Dmz4/oCSkZ9wvaInAQ63eHc3uvngiok4LwWJCzZxJLAviqmWj8lY9TfmWJgsu0JFdkrf8RmLEYbjq0yXSqn/+zLQ46JY0C4v3+oN2DMIbSSQD90TI6Xeh9gTOunhVEWqdIxF36EPHAbrbC4rzf8vZTCZ8Cqig2veF6yZ2zicuQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(366004)(39850400004)(136003)(86362001)(107886003)(2616005)(966005)(186003)(1076003)(4326008)(316002)(66556008)(478600001)(8676002)(66476007)(6486002)(7696005)(5660300002)(66946007)(2906002)(54906003)(83380400001)(6666004)(8936002)(36756003)(52116002)(7416002)(66574015)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?aDVjNjdDcTRuV2g1TWxFVk1HSUdOSTJRU3NMK0haNHVHVU9EQVh4OTdFRWRY?=
 =?utf-8?B?L2ZUODBXSXFtNldBYmdmTkQ4SjZoTHZXTWU3bUVTVWJYdWlidVpVbjl1Rms2?=
 =?utf-8?B?TDk3TkFkUVVTVnZiRlhnUFQ1bkVHSWpZTFNNYnpVTXBvMUlzdHVWSVZucEYz?=
 =?utf-8?B?SElpZzJ1akxjSjF4bDN4VlNCNEJxMXJ2d1drcG9HOHdqcnpVMGVsakZVRDFI?=
 =?utf-8?B?SmxFZTRTZXVnUTNadUcrMTVjYytkeVBGUzd2dWJFTjRYY2gxWXpzK3R1OFFC?=
 =?utf-8?B?elN2NHlEeXZDRk5kY1dCbkhMenB0TThBVkR6QnVzVjhlVVdPYW5HWUJzbC9k?=
 =?utf-8?B?QWxoK2xra2RFRlhtclo1bHY4ekNZTFg0Tkk0cDY5cDcvbFE1cHB0Vit4S0NN?=
 =?utf-8?B?ci96cVAydk12a09ZMVNGM3p1K3lXV3U5K09tck1EVWNHYWU5d256TFN6Rjls?=
 =?utf-8?B?RExkSUtqZW5nTUQxZmRGVHZiQXROMUpNZFBoZStPUXRpOXZDak9oRHBPT1V6?=
 =?utf-8?B?M1N1NTkySGpDWTJiQWNrYWFXamxHbHhDcDdLSGU4Tm9ndXR6cTljZWxFc3hJ?=
 =?utf-8?B?TGFHY0c1SEtDSUpnQjdHZXM1NXlWTmUxTmFVWjg3WTU0N0tRb0ZsK24xNXlv?=
 =?utf-8?B?OXRjak9ud1dhYjdBZHNJaWc0TnBzQWt4NTYvb1ZvS1pTS1lvdVRCL2l2VHhM?=
 =?utf-8?B?eS9aaURGT24xYjNaNzZKSXNaRHoyUmF1UDZHUlJpRWFEZkxFcTFYdWZ0bVNt?=
 =?utf-8?B?bjcrdW43N3VFUGt1L1dhbTBhSTlnQnl4Vy9mOFNDMWV1Z3lVZmRPUVJCZHNO?=
 =?utf-8?B?MzRtWGt1TWdKK2trazVlUXQrNlRqdGZzWk9tWGRmaGNmbmtoWmlkNEkvaTh6?=
 =?utf-8?B?MndtVHNOQU5kUDNtVGJvY25jVDlwVlhSOHd4TnFoa1g4dytjUjR4MGc1Y2Zu?=
 =?utf-8?B?aElXWEIva1pDN1ZYRzRucW11V2RUWUJCWFBhSi9MQnpiWXY3YUdIMlA4dFFM?=
 =?utf-8?B?U0p6aWZydDZucjAzMDZWb3V5U2V2MzZOWERES210QU12OVJEZHlPcmlWUWln?=
 =?utf-8?B?ZWlibm0zeDRpNFdTY01zQzdoYjc2b0E3M1V2VWZDRWs2QmdoNUdIVElUZG4v?=
 =?utf-8?B?SktYYi9RdFJydUl5ejJGN21yV3J4Y1JjWDRlUUpubzFxa2NJVHZ4U1NZa09r?=
 =?utf-8?B?cEd4Mm5oWEJUZWhqaVoybkNIV2YyNnVzTzdoMWlLbld2QTA2VmhudlZnYnFJ?=
 =?utf-8?B?N2RXMEk2WjZDd2dlZWxWd3VZZ1kwTXJNWnk4MTFNRWRnaGFiaTh5T0JiWTBZ?=
 =?utf-8?B?R21BQXAyT09BeVI2N0ZmOFNQajlrWXY2bGt3eUMrNWFDMDE1RzV5NEh2WVVI?=
 =?utf-8?B?RTROMzVYVFZvdTJDQmk4OG9JZGdQZWpCZ3hFTUNmcm9VbUNweTM1TTVnN1RC?=
 =?utf-8?B?MEtyekJoY1pIQ2V0THgvZldJWGVKTzg0SDBaKzQvbGJ3WkN2UFJkczJsQjBq?=
 =?utf-8?B?QW1SN1JHWWhKSC9KQVZ3K1pMYmtYZUpuSlJhWG1ObENHRzlheFpCLzlHSWRZ?=
 =?utf-8?B?MWNWL09mUTFrc0NleVM0UVU2NTg2N0xwQ3d6UDNvUkw2THFXdzk1WEdVVWpV?=
 =?utf-8?B?YkZTQ1ZEMzBxMDlVRHo0MksrYXZiaFV6dU9FNVEzKzhxM29DcU9ZZ3RWczVC?=
 =?utf-8?B?bEV6QmFHaU5VT01URmgzV0g0VUFjR2k5SWpBUGZSVE1KV00xQ0hPUDRidEt0?=
 =?utf-8?B?VVJPdXN6aHhGVVR3Q1JjNTJUeE5xajFIMm53RHdWTGNlcWlFK1NVNjRJamcz?=
 =?utf-8?B?czc5TEsxeVBpcEJqTXk3cUxZbGhpSnIxdVVDMEhuQXVTSEovQzFFVWNRR2lR?=
 =?utf-8?Q?ojRvwp4zkIPAl?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 845851c3-ac83-4745-1a2d-08d8e7b5f0fe
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2021 13:26:29.4204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EQY1ykcHz+CzCfZtZahvl4VJ9TBb/RcXCwJT/YLJpA22amNmOzB5iGyxK7WeLFkfOHzQu20s2SngS9MhOkMFKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3216
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHdmeCBkcml2ZXIgaXMgbm93IG1hdHVyZSBlbm91Z2ggdG8gbGVhdmUgdGhlIHN0YWdpbmcgYXJl
YS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4KLS0tCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyAr
Ky0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL0tjb25maWcgICAgICAgICB8ICAxICsKIGRyaXZlcnMv
bmV0L3dpcmVsZXNzL01ha2VmaWxlICAgICAgICB8ICAxICsKIGRyaXZlcnMvbmV0L3dpcmVsZXNz
L3NpbGFicy9LY29uZmlnICB8IDE4ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9uZXQvd2ly
ZWxlc3Mvc2lsYWJzL01ha2VmaWxlIHwgIDMgKysrCiBkcml2ZXJzL3N0YWdpbmcvS2NvbmZpZyAg
ICAgICAgICAgICAgfCAgMiAtLQogZHJpdmVycy9zdGFnaW5nL01ha2VmaWxlICAgICAgICAgICAg
IHwgIDEgLQogZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPICAgICAgICAgICAgIHwgIDYgLS0tLS0t
CiA4IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9LY29uZmlnCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL01ha2VmaWxlCiBkZWxl
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPCgpkaWZmIC0tZ2l0IGEvTUFJ
TlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCBhYTg0MTIxYzU2MTEuLjFkMGJlMGMwNDQ1NiAx
MDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTE2MzQ0LDcgKzE2
MzQ0LDggQEAgRjoJZHJpdmVycy9wbGF0Zm9ybS94ODYvdG91Y2hzY3JlZW5fZG1pLmMKIFNJTElD
T04gTEFCUyBXSVJFTEVTUyBEUklWRVJTIChmb3IgV0Z4eHggc2VyaWVzKQogTToJSsOpcsO0bWUg
UG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgogUzoJU3VwcG9ydGVkCi1GOglk
cml2ZXJzL3N0YWdpbmcvd2Z4LworRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC93aXJlbGVzcy9zaWxhYnMsd2Z4LnlhbWwKK0Y6CWRyaXZlcnMvbmV0L3dpcmVsZXNzL3Np
bGFicy93ZngvCiAKIFNJTElDT04gTU9USU9OIFNNNzEyIEZSQU1FIEJVRkZFUiBEUklWRVIKIE06
CVN1ZGlwIE11a2hlcmplZSA8c3VkaXBtLm11a2hlcmplZUBnbWFpbC5jb20+CmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9LY29uZmlnIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvS2Nv
bmZpZwppbmRleCA3YWRkMjAwMmZmNGMuLmU3OGZmN2FmNjUxNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvS2NvbmZpZworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9LY29uZmln
CkBAIC0zMSw2ICszMSw3IEBAIHNvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3MvbWljcm9jaGlw
L0tjb25maWciCiBzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9LY29uZmlnIgog
c291cmNlICJkcml2ZXJzL25ldC93aXJlbGVzcy9yZWFsdGVrL0tjb25maWciCiBzb3VyY2UgImRy
aXZlcnMvbmV0L3dpcmVsZXNzL3JzaS9LY29uZmlnIgorc291cmNlICJkcml2ZXJzL25ldC93aXJl
bGVzcy9zaWxhYnMvS2NvbmZpZyIKIHNvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3Mvc3QvS2Nv
bmZpZyIKIHNvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3MvdGkvS2NvbmZpZyIKIHNvdXJjZSAi
ZHJpdmVycy9uZXQvd2lyZWxlc3MvenlkYXMvS2NvbmZpZyIKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL01ha2VmaWxlIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvTWFrZWZpbGUKaW5k
ZXggODBiMzI0NDk5Nzg2Li43Njg4NWU1ZjBlYTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL01ha2VmaWxlCkBAIC0x
Niw2ICsxNiw3IEBAIG9iai0kKENPTkZJR19XTEFOX1ZFTkRPUl9NSUNST0NISVApICs9IG1pY3Jv
Y2hpcC8KIG9iai0kKENPTkZJR19XTEFOX1ZFTkRPUl9SQUxJTkspICs9IHJhbGluay8KIG9iai0k
KENPTkZJR19XTEFOX1ZFTkRPUl9SRUFMVEVLKSArPSByZWFsdGVrLwogb2JqLSQoQ09ORklHX1dM
QU5fVkVORE9SX1JTSSkgKz0gcnNpLworb2JqLSQoQ09ORklHX1dMQU5fVkVORE9SX1NJTEFCUykg
Kz0gc2lsYWJzLwogb2JqLSQoQ09ORklHX1dMQU5fVkVORE9SX1NUKSArPSBzdC8KIG9iai0kKENP
TkZJR19XTEFOX1ZFTkRPUl9USSkgKz0gdGkvCiBvYmotJChDT05GSUdfV0xBTl9WRU5ET1JfWllE
QVMpICs9IHp5ZGFzLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL0tj
b25maWcgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvS2NvbmZpZwpuZXcgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjYyNjJhNzk5YmYzNgotLS0gL2Rldi9udWxsCisr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9LY29uZmlnCkBAIC0wLDAgKzEsMTggQEAK
KyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKworY29uZmlnIFdMQU5fVkVORE9S
X1NJTEFCUworCWJvb2wgIlNpbGljb24gTGFib3JhdG9yaWVzIGRldmljZXMiCisJZGVmYXVsdCB5
CisJaGVscAorCSAgSWYgeW91IGhhdmUgYSB3aXJlbGVzcyBjYXJkIGJlbG9uZ2luZyB0byB0aGlz
IGNsYXNzLCBzYXkgWS4KKworCSAgTm90ZSB0aGF0IHRoZSBhbnN3ZXIgdG8gdGhpcyBxdWVzdGlv
biBkb2Vzbid0IGRpcmVjdGx5IGFmZmVjdCB0aGUKKwkgIGtlcm5lbDogc2F5aW5nIE4gd2lsbCBq
dXN0IGNhdXNlIHRoZSBjb25maWd1cmF0b3IgdG8gc2tpcCBhbGwgdGhlCisJICBxdWVzdGlvbnMg
YWJvdXQgdGhlc2UgY2FyZHMuIElmIHlvdSBzYXkgWSwgeW91IHdpbGwgYmUgYXNrZWQgZm9yCisJ
ICB5b3VyIHNwZWNpZmljIGNhcmQgaW4gdGhlIGZvbGxvd2luZyBxdWVzdGlvbnMuCisKK2lmIFdM
QU5fVkVORE9SX1NJTEFCUworCitzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93
ZngvS2NvbmZpZyIKKworZW5kaWYgIyBXTEFOX1ZFTkRPUl9TSUxBQlMKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9NYWtlZmlsZSBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L3NpbGFicy9NYWtlZmlsZQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAu
LmMyMjYzZWUyMTAwNgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3Np
bGFicy9NYWtlZmlsZQpAQCAtMCwwICsxLDMgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAKKworb2JqLSQoQ09ORklHX1dGWCkgICAgICArPSB3ZngvCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9LY29uZmlnCmluZGV4IGIy
MmY3M2Q3YmZjNC4uYjA3ZGUzOWI5ZjBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvS2Nv
bmZpZworKysgYi9kcml2ZXJzL3N0YWdpbmcvS2NvbmZpZwpAQCAtMTEwLDggKzExMCw2IEBAIHNv
dXJjZSAiZHJpdmVycy9zdGFnaW5nL3FsZ2UvS2NvbmZpZyIKIAogc291cmNlICJkcml2ZXJzL3N0
YWdpbmcvd2ltYXgvS2NvbmZpZyIKIAotc291cmNlICJkcml2ZXJzL3N0YWdpbmcvd2Z4L0tjb25m
aWciCi0KIHNvdXJjZSAiZHJpdmVycy9zdGFnaW5nL2hpa2V5OXh4L0tjb25maWciCiAKIGVuZGlm
ICMgU1RBR0lORwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL01ha2VmaWxlIGIvZHJpdmVy
cy9zdGFnaW5nL01ha2VmaWxlCmluZGV4IDIyNDUwNTllNjljNy4uYzZhOTkyZDFlZGQ1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9zdGFnaW5nL01h
a2VmaWxlCkBAIC00NSw1ICs0NSw0IEBAIG9iai0kKENPTkZJR19GSUVMREJVU19ERVYpICAgICAr
PSBmaWVsZGJ1cy8KIG9iai0kKENPTkZJR19LUEMyMDAwKQkJKz0ga3BjMjAwMC8KIG9iai0kKENP
TkZJR19RTEdFKQkJKz0gcWxnZS8KIG9iai0kKENPTkZJR19XSU1BWCkJCSs9IHdpbWF4Lwotb2Jq
LSQoQ09ORklHX1dGWCkJCSs9IHdmeC8KIG9iai15CQkJCSs9IGhpa2V5OXh4LwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPCmRl
bGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAxYjRiYzJhZjk0YjYuLjAwMDAwMDAwMDAwMAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L1RPRE8KKysrIC9kZXYvbnVsbApAQCAtMSw2ICswLDAg
QEAKLVRoaXMgaXMgYSBsaXN0IG9mIHRoaW5ncyB0aGF0IG5lZWQgdG8gYmUgZG9uZSB0byBnZXQg
dGhpcyBkcml2ZXIgb3V0IG9mIHRoZQotc3RhZ2luZyBkaXJlY3RvcnkuCi0KLSAgLSBBcyBzdWdn
ZXN0ZWQgYnkgRmVsaXgsIHJhdGUgY29udHJvbCBjb3VsZCBiZSBpbXByb3ZlZCBmb2xsb3dpbmcg
dGhpcyBpZGVhOgotICAgICAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzMwOTk1NTku
Z3YzUTc1S25OMUBwYy00Mi8KLQotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
