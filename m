Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2177B24C32E
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 18:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB02D879B6;
	Thu, 20 Aug 2020 16:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hq-uFntggZ-z; Thu, 20 Aug 2020 16:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39369876DA;
	Thu, 20 Aug 2020 16:14:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8DE41BF2A9
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 16:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CADD122660
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 16:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T67nzmFlw3kO for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 16:14:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2057.outbound.protection.outlook.com [40.107.93.57])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D5FE2273B
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 16:14:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxrL4hgL45qbgvs9EOLMyPncQtu6VCIJdMv5pqYKGZfyLLF3W0z9o0wPYYKFBdT8jaKYwRVulFnaDlZVnFgmqdSLOVGwcLtN0t+N8VeCBitPsyXSVfK3//i4yQUViH+rN+CESWS0ZuQE2DxoAf9e0uUU8MW/mjRIUEWfdKpVYU/7ihhyR9eTbDp7UYSnTXzhmRj/633RZXh/+sTkCyCOvzqhsh6Dxj7cofW7q0+BUct3POqKDGKumXjScFKAXexNl63a9YA5GGKaloUC1/EKhcMPGaHKL+TbE/LI94uCNoApCDqcbi5bmBoaBSC2wIqP6ftSGDXPywBOfBZYnSlkvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OeIL0It1fFIeWFpLR4Qcd4WkB9/MzX2laSvSJn+wd8A=;
 b=G0cmcUAGP4G9peWf9Yt0dgeAqYXQauAH9EtJO6he56iM/klsuGtHwpllWXYGL84Ot1U3EYQdJGCEWdZPDleqEAJt8JvSRz5XVPMbc5NT95knQILDPJJC2262JUrlcnhGFWzSl3YDCTXh0v30gJVR5qLMHJQz5i1Mb5uG+wf35JdIc9o/AiXNHW0F49ZIyUIvXlMgR25ei90ohjwRaWJrumevmrKVmhzSCFTf1NqrB8LJRqhcfsoDdvCuMLpd/9a2SJUYtX1Z958LXwP7IbAqV7If+Xfs073+76PUc33RuSbPXnjdynCadzJd+yMpbcDZ1e7WooSxSxSmw81yRnrIYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OeIL0It1fFIeWFpLR4Qcd4WkB9/MzX2laSvSJn+wd8A=;
 b=ZoG5qIRyUvuqPBNJ48PNtxQrj4/61t5O6lllsb0at0QBo4AuWF5p1Os1U4ZIOYNQjBgIEWHQPBa4OsWusEahPFvjL6BAaO1Bxx29AKqaWZq87IR8emLtYzXwMIceTUULiFGWaEbpZRVDQYpt29UAV45BeEeeS/o7yI271vXXSJQ=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4541.namprd11.prod.outlook.com (2603:10b6:806:94::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 20 Aug
 2020 15:59:35 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3305.026; Thu, 20 Aug 2020
 15:59:35 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 08/12] staging: wfx: fix potential use before init
Date: Thu, 20 Aug 2020 17:58:54 +0200
Message-Id: <20200820155858.351292-8-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
References: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::14) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by
 PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 15:59:33 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01a56d60-64f4-45e6-aa07-08d8452208a6
X-MS-TrafficTypeDiagnostic: SA0PR11MB4541:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB45414A3BBCF7CD73FF34A216935A0@SA0PR11MB4541.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l4KfWxHZhMzVfoMdnLF67OIXFZXOlWlaY3uY0PmN+Y5H+l6jPC6F2OS7kEuDy32b6+2qRcz0aMAerh8IWgx3gzWu/+bIrgtMGZxr7ykes++ZJS8DJyvkL5xEvC/gXsREuDkRknGRKpwButbMrA2YA6xF6Hy1pbg7VU8xoQsruR2HOOuQcmwyoXNb5p9pwSUeB9FufdhoVAoRQdYg2iB6yf9qq7cgP/RG52zmdXx1L+WmvTRC4j0DNjEVOcnLbUfH2GG/oGqd3yKOQ+eZLWU6C0NJ54EehBeu1em7edeOm0mkKM9XSq8LDoWbqCcUb89r8CR38W5n105x75Fxboml4rbKeHk3x6FaFmW+jkyL59GGU0P6HD+2uAt7bPRSUHZj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39850400004)(366004)(346002)(136003)(186003)(6666004)(2906002)(8676002)(316002)(16576012)(54906003)(956004)(26005)(66574015)(8936002)(2616005)(110011004)(52116002)(83380400001)(107886003)(1076003)(5660300002)(478600001)(36756003)(4326008)(66476007)(66556008)(66946007)(86362001)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: mz39n78xERVLVUrtAOzIwduDGFIRCXLE3Bm1K/u4odlbWq9V1BgE+birwAo3OCmJypwX1NNjriHlBLK7+37BNgNq2uniQM0AFFiNDKlt+v4jBifzwfB3RYqmuzkjdipbjBMk/OPKO4W3+GMFeg5zd+ZYG1sjP37yEuz0mOgXVKlAnDcie7Xt0N205bgw4CUVnByo1lxzlYn49BT+34M3biRrDnXSGznAkqcQ3r7bufVs3o94+Inp1fY1dazSegg9c6yPftcH2skfg1rFh9nyrogwdQRjnHqbBbWrqWXCTM+7GGLayNxQNmTJXTN9tM1EE6Cncnk0aV+kaYsE5/wplDsMD45HS90Ny1uYzZEHwPkIEGyuaNNbaCGINkGG2ZN9d9/nDwGA9Pyf5I19kpJBdMYP3FHuJHNWyFV+tS8kZrjx02Yg+xhXlyRC+i3lLhkV57cKYDvyN+PbRrxC+TqrcETj/lJJ8MopMBYxrnJQEsaasiqt7xSuTT0HlnAQz0lCbbrpyP6P4As4hj7N1b5azLTbkBjNANRK5fMFFGUnVKGclLgYUOOuUQPBw/lHqgKrU5mF+bZ0dgKeoQAzOfRpotFRv0m5rJH5ZIaff+p5XvJ0CvhQb5TqGVJ7Fad/wgvnsZ1+bv58GXoCqLTI6H1fng==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01a56d60-64f4-45e6-aa07-08d8452208a6
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 15:59:35.0999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sNmOKkbCdE+ra+q3ugRWFNYmZvc25LlKXzxgXLpezZsAwq7h/vj6Fh9d3HorKSEIxR6ptuOg2m58XJmaRcGM4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4541
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHRyYWNlIGJlbG93IGNhbiBhcHBlYXI6CgogICAgWzgzNjEzLjgzMjIwMF0gSU5GTzogdHJ5aW5n
IHRvIHJlZ2lzdGVyIG5vbi1zdGF0aWMga2V5LgogICAgWzgzNjEzLjgzNzI0OF0gdGhlIGNvZGUg
aXMgZmluZSBidXQgbmVlZHMgbG9ja2RlcCBhbm5vdGF0aW9uLgogICAgWzgzNjEzLjg0MjgwOF0g
dHVybmluZyBvZmYgdGhlIGxvY2tpbmcgY29ycmVjdG5lc3MgdmFsaWRhdG9yLgogICAgWzgzNjEz
Ljg0ODM3NV0gQ1BVOiAzIFBJRDogMTQxIENvbW06IGt3b3JrZXIvMzoySCBUYWludGVkOiBHICAg
ICAgICAgICBPICAgICAgNS42LjEzLXNpbGFiczE1ICMyCiAgICBbODM2MTMuODU3MDE5XSBIYXJk
d2FyZSBuYW1lOiBCQ00yODM1CiAgICBbODM2MTMuODYwNjA1XSBXb3JrcXVldWU6IGV2ZW50c19o
aWdocHJpIGJoX3dvcmsgW3dmeF0KICAgIFs4MzYxMy44NjU1NTJdIEJhY2t0cmFjZToKICAgIFs4
MzYxMy44NjgwNDFdIFs8YzAxMGYyY2M+XSAoZHVtcF9iYWNrdHJhY2UpIGZyb20gWzxjMDEwZjdi
OD5dIChzaG93X3N0YWNrKzB4MjAvMHgyNCkKICAgIFs4MzYxMy44ODE0NjNdIFs8YzAxMGY3OTg+
XSAoc2hvd19zdGFjaykgZnJvbSBbPGMwZDgyMTM4Pl0gKGR1bXBfc3RhY2srMHhlOC8weDExNCkK
ICAgIFs4MzYxMy44ODg4ODJdIFs8YzBkODIwNTA+XSAoZHVtcF9zdGFjaykgZnJvbSBbPGMwMWEw
MmVjPl0gKHJlZ2lzdGVyX2xvY2tfY2xhc3MrMHg3NDgvMHg3NjgpCiAgICBbODM2MTMuOTA1MDM1
XSBbPGMwMTlmYmE0Pl0gKHJlZ2lzdGVyX2xvY2tfY2xhc3MpIGZyb20gWzxjMDE5ZGEwND5dIChf
X2xvY2tfYWNxdWlyZSsweDg4LzB4MTNkYykKICAgIFs4MzYxMy45MjQxOTJdIFs8YzAxOWQ5N2M+
XSAoX19sb2NrX2FjcXVpcmUpIGZyb20gWzxjMDE5ZjZhND5dIChsb2NrX2FjcXVpcmUrMHhlOC8w
eDI3NCkKICAgIFs4MzYxMy45NDI2NDRdIFs8YzAxOWY1YmM+XSAobG9ja19hY3F1aXJlKSBmcm9t
IFs8YzBkYWE1ZGM+XSAoX3Jhd19zcGluX2xvY2tfaXJxc2F2ZSsweDU4LzB4NmMpCiAgICBbODM2
MTMuOTYxNzE0XSBbPGMwZGFhNTg0Pl0gKF9yYXdfc3Bpbl9sb2NrX2lycXNhdmUpIGZyb20gWzxj
MGFiMzI0OD5dIChza2JfZGVxdWV1ZSsweDI0LzB4NzgpCiAgICBbODM2MTMuOTc0OTY3XSBbPGMw
YWIzMjI0Pl0gKHNrYl9kZXF1ZXVlKSBmcm9tIFs8YmYzMzBkYjA+XSAod2Z4X3R4X3F1ZXVlc19n
ZXQrMHg5NmMvMHgxMjk0IFt3ZnhdKQogICAgWzgzNjEzLjk4OTcyOF0gWzxiZjMzMDQ0ND5dICh3
ZnhfdHhfcXVldWVzX2dldCBbd2Z4XSkgZnJvbSBbPGJmMzIwNDU0Pl0gKGJoX3dvcmsrMHg0NTQv
MHgyNmQ4IFt3ZnhdKQogICAgWzgzNjE0LjAwOTMzN10gWzxiZjMyMDAwMD5dIChiaF93b3JrIFt3
ZnhdKSBmcm9tIFs8YzAxNGM5MjA+XSAocHJvY2Vzc19vbmVfd29yaysweDIzYy8weDdlYykKICAg
IFs4MzYxNC4wMjgxNDFdIFs8YzAxNGM2ZTQ+XSAocHJvY2Vzc19vbmVfd29yaykgZnJvbSBbPGMw
MTRjZjFjPl0gKHdvcmtlcl90aHJlYWQrMHg0Yy8weDU1YykKICAgIFs4MzYxNC4wNDY4NjFdIFs8
YzAxNGNlZDA+XSAod29ya2VyX3RocmVhZCkgZnJvbSBbPGMwMTU0YzA0Pl0gKGt0aHJlYWQrMHgx
MzgvMHgxNjgpCiAgICBbODM2MTQuMDY0ODc2XSBbPGMwMTU0YWNjPl0gKGt0aHJlYWQpIGZyb20g
WzxjMDEwMTBiND5dIChyZXRfZnJvbV9mb3JrKzB4MTQvMHgyMCkKICAgIFs4MzYxNC4wNzIyMDBd
IEV4Y2VwdGlvbiBzdGFjaygweGVjYWQzZmIwIHRvIDB4ZWNhZDNmZjgpCiAgICBbODM2MTQuMDc3
MzIzXSAzZmEwOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAogICAgWzgzNjE0LjA4NTYyMF0gM2ZjMDogMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAKICAgIFs4MzYxNC4wOTM5MTRdIDNmZTA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDEzIDAwMDAwMDAwCgpJbmRlZWQsIHRoZSBjb2RlIG9mIHdmeF9h
ZGRfaW50ZXJmYWNlKCkgc2hvd3MgdGhhdCB0aGUgaW50ZXJmYWNlIGlzCmVuYWJsZWQgdG8gZWFy
bHkuIFNvLCB0aGUgc3BpbmxvY2sgYXNzb2NpYXRlZCB3aXRoIHNvbWUgc2tiX3F1ZXVlIG1heQpu
b3QgeWV0IGluaXRpYWxpemVkIHdoZW4gd2Z4X3R4X3F1ZXVlc19nZXQoKSBpcyBjYWxsZWQuCgpT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyB8IDMwICsrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDE1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L3N0YS5jCmluZGV4IGIxOGEwYjYxYjdjMC4uOWI3NjBmYjU3NGY4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmMKQEAgLTc1MywxNyArNzUzLDYgQEAgaW50IHdmeF9hZGRfaW50ZXJmYWNlKHN0cnVj
dCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQogCQlyZXR1cm4g
LUVPUE5PVFNVUFA7CiAJfQogCi0JZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUod2Rldi0+dmlm
KTsgaSsrKSB7Ci0JCWlmICghd2Rldi0+dmlmW2ldKSB7Ci0JCQl3ZGV2LT52aWZbaV0gPSB2aWY7
Ci0JCQl3dmlmLT5pZCA9IGk7Ci0JCQlicmVhazsKLQkJfQotCX0KLQlpZiAoaSA9PSBBUlJBWV9T
SVpFKHdkZXYtPnZpZikpIHsKLQkJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5jb25mX211dGV4KTsKLQkJ
cmV0dXJuIC1FT1BOT1RTVVBQOwotCX0KIAkvLyBGSVhNRTogcHJlZmVyIHVzZSBvZiBjb250YWlu
ZXJfb2YoKSB0byBnZXQgdmlmCiAJd3ZpZi0+dmlmID0gdmlmOwogCXd2aWYtPndkZXYgPSB3ZGV2
OwpAQCAtNzgwLDEyICs3NjksMjIgQEAgaW50IHdmeF9hZGRfaW50ZXJmYWNlKHN0cnVjdCBpZWVl
ODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQogCWluaXRfY29tcGxldGlv
bigmd3ZpZi0+c2Nhbl9jb21wbGV0ZSk7CiAJSU5JVF9XT1JLKCZ3dmlmLT5zY2FuX3dvcmssIHdm
eF9od19zY2FuX3dvcmspOwogCi0JbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5jb25mX211dGV4KTsKLQot
CWhpZl9zZXRfbWFjYWRkcih3dmlmLCB2aWYtPmFkZHIpOwotCiAJd2Z4X3R4X3F1ZXVlc19pbml0
KHd2aWYpOwogCXdmeF90eF9wb2xpY3lfaW5pdCh3dmlmKTsKKworCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKHdkZXYtPnZpZik7IGkrKykgeworCQlpZiAoIXdkZXYtPnZpZltpXSkgeworCQkJ
d2Rldi0+dmlmW2ldID0gdmlmOworCQkJd3ZpZi0+aWQgPSBpOworCQkJYnJlYWs7CisJCX0KKwl9
CisJV0FSTihpID09IEFSUkFZX1NJWkUod2Rldi0+dmlmKSwgInRyeSB0byBpbnN0YW50aWF0ZSBt
b3JlIHZpZiB0aGFuIHN1cHBvcnRlZCIpOworCisJaGlmX3NldF9tYWNhZGRyKHd2aWYsIHZpZi0+
YWRkcik7CisKKwltdXRleF91bmxvY2soJndkZXYtPmNvbmZfbXV0ZXgpOworCiAJd3ZpZiA9IE5V
TEw7CiAJd2hpbGUgKCh3dmlmID0gd3ZpZl9pdGVyYXRlKHdkZXYsIHd2aWYpKSAhPSBOVUxMKSB7
CiAJCS8vIENvbWJvIG1vZGUgZG9lcyBub3Qgc3VwcG9ydCBCbG9jayBBY2tzLiBXZSBjYW4gcmUt
ZW5hYmxlIHRoZW0KQEAgLTgxNyw2ICs4MTYsNyBAQCB2b2lkIHdmeF9yZW1vdmVfaW50ZXJmYWNl
KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQogCXd2
aWYtPnZpZiA9IE5VTEw7CiAKIAltdXRleF91bmxvY2soJndkZXYtPmNvbmZfbXV0ZXgpOworCiAJ
d3ZpZiA9IE5VTEw7CiAJd2hpbGUgKCh3dmlmID0gd3ZpZl9pdGVyYXRlKHdkZXYsIHd2aWYpKSAh
PSBOVUxMKSB7CiAJCS8vIENvbWJvIG1vZGUgZG9lcyBub3Qgc3VwcG9ydCBCbG9jayBBY2tzLiBX
ZSBjYW4gcmUtZW5hYmxlIHRoZW0KLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
