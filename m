Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB74BB7DA
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Feb 2022 12:12:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B17DD83E1B;
	Fri, 18 Feb 2022 11:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYlricRfkMdO; Fri, 18 Feb 2022 11:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55A4183E63;
	Fri, 18 Feb 2022 11:12:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA5F1C116E
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 11:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A17F83E1B
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 11:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLZeaxZbB_4a for <devel@linuxdriverproject.org>;
 Fri, 18 Feb 2022 11:12:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2075.outbound.protection.outlook.com [40.107.93.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18F5883E06
 for <devel@driverdev.osuosl.org>; Fri, 18 Feb 2022 11:11:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GvFjw5AFOQ9t9oUSNpOGgglNXgi1gte5Y7goNUu1w4fVnTeZqhxNW+iT3qfvw3KETSv6hTFpBxKmvdbZS+feDq6Uz7s6ZU/MXuxRlNuLyClZhFy5zTtgUsLL1PodToPa70w4BLz1vAfbnIlNK+nWLapaEg8NuBwO1e+MiU8Tis1zhm+cEpXpAXua1klxdtu1uIqmuuV193849MCOnnOzeWUFP9ggAPw1S+k0s717d278tagvyN3iNm/cw7GynsF/O5Po8AXO//imaVS/6Et+pP+nangt5976i4CNGMoQGxlPlJfUaV1qE4mmPJUjCpMNRphjR7EDQIfCN4NU8PoqVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xic7duHbOsHEMOZbtVahfJtVUUbg1kj+BSLbOnRGfkw=;
 b=ThCppT6DEW85bq/HGrV+SaqkPkxcyonN3cIhpcSMgMzraSXPUqUuRrlmj9RIBV0W5GbOdYsYLH/ZNTB85eCzpqk+P1HtW2xNmYJMr9gYlOoZ3fZB3s2/nyTBtxrSgoOq4d78KIaBzIeGgN+4XJrF6dAHMWIQmp7IA5Of5i0a+RaLmlHpoAbYySU/anzBqc67fp71d8SQteQPV99XbqRclxPB7UW1+lYYdD7uhFUqkG7HUj8m2v2oyikEyHdWXYmetfa/pvi41Wfre7La2qd7KvuBqd2w9n1+ud8as63EIQKpUlhstRFmVZYuL6gpbTpIrxcTIcnnS6dOj8kx85ZgVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xic7duHbOsHEMOZbtVahfJtVUUbg1kj+BSLbOnRGfkw=;
 b=So2voWS3ONi6jrAykdWTlh4/pFbCIc54cye9vVbgE7zbpEaoS2iJ/+5rsAKWXdVd+lt8QQMj9qJDBPFiZC6giWhigWA6BP/0Gmd05o7QIS9es1aeAsfnn2iDm0QMb+fxXehe4iZMz6HbS+IhwdgCv0fVSJo9j8Zk837mAJumeBE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by MWHPR1101MB2317.namprd11.prod.outlook.com (2603:10b6:301:5b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.15; Fri, 18 Feb
 2022 11:11:56 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::1b3:e483:7396:1f98]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::1b3:e483:7396:1f98%3]) with mapi id 15.20.4995.024; Fri, 18 Feb 2022
 11:11:55 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wfx: fix scan with WFM200 and WW regulation
Date: Fri, 18 Feb 2022 12:11:48 +0100
Message-ID: <3527203.aO2mCyqpp7@pc-42>
Organization: Silicon Labs
In-Reply-To: <Yg98Zjikg0ncQv8b@kroah.com>
References: <20220218105358.283769-1-Jerome.Pouiller@silabs.com>
 <2535719.D4RZWD7AcY@pc-42> <Yg98Zjikg0ncQv8b@kroah.com>
X-ClientProxiedBy: PAZP264CA0216.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:237::11) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 232d2249-c0f3-4e91-ba2e-08d9f2cf7939
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2317:EE_
X-Microsoft-Antispam-PRVS: <MWHPR1101MB23178C066B06C04D15A4CF9693379@MWHPR1101MB2317.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f7K0eXaXJVutBVtIIl9nwQv+CrMLqhDzQrUAr3KNArOgmLqwxCZOz81liSpRTVunCB1c8cauoSxZGYpdxQxy+6QOIuTpxknKYErt4jhzgnNXtOskMwH3sDlXGQocirMdTBoVGzxtmR1Bzo8cNbpCaZkrQyN9a/jrGc0Mb2/lV5CGA2+iz2xRAb677BUytHmPwpxMhtbbhcQhNQxqV6gKhlB2C9exTzNHT7QYxURVSBUKUmsKLaHlpXdkbPb9f+l13N0J0ZGof/sh3KN8NCDA8YE2pGaUeiwJQMv3lXvfU0aodopHUzj2QuHYdJGfM/oZGRXXB2WTdqrLTGcfylKnRcECRyVnxnOqSb6m4PzVkCcjNXsvLNdVOl6T6wLISAVNl4H/2mKA+iWNgAk4XMHlALn9NCRS5Zo5SaeTj1oFk72UO/QOTMnF4oEybv6HTUkPkM28rHRH1WqaO1soDhNv54kkOx6iaK9XnN2DeeNyTzH1uwDHoO/r3hWVnGXjX8QMiqAMW0CxQZJeFxmbTYDpB5MQ01r2eIy1dXNSHPQUwjcz0pk/1KFKS1p1mBfpf/8a2l2Yel5uvw5ZVDUgH03S7t+HGJY4yv7Ktv9DBpwq2M6kiUWFoo2ezLJ8o3+50Cdowvbj648VWrqTMYfmvP0kSAjC/7Zw7tZBBqWdXwMPorUP2KiZYc9IhjzCRlDqW+W7JOPlAoYLPGRkrpTiZrj6vpdyvTJcE89/plZmmCU0btmaoVFkC51/ZHgoNq/GiF5cYR1AaIc5ik17OR2ILcsepdWyYlduPsQOwHIsXiyiyb6cee4WkAQkOd3etQd8Ie/p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(86362001)(8936002)(2906002)(38350700002)(6486002)(38100700002)(6916009)(186003)(54906003)(9686003)(52116002)(6512007)(508600001)(316002)(26005)(33716001)(8676002)(66556008)(6666004)(5660300002)(6506007)(36916002)(66946007)(4326008)(66476007)(966005)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0HP+zZO1ej0yXMuybV3/EJU2+4BQchatTfr3edCErCFF1YbpralJ1ln50Y?=
 =?iso-8859-1?Q?kbPIZBHgJlVscELBDRwE7f4cMimAnrVxF45/Nut0DXznwAQMqiwKgFQZRx?=
 =?iso-8859-1?Q?TZqQbxB1Yx7QAeQE+pstouAyf440eL40c5U+u50DBADlwy8ZhYSpy9PqeV?=
 =?iso-8859-1?Q?WQFCE2lCquwTg4LMhvdcx313sd7d0vlJy72X4pq0yt2OFkSuiTV675KKfY?=
 =?iso-8859-1?Q?Oy6aR4J+8str4nuWevg7X+LSgVt+cY9vDI4zc5oJpbPZjxG+EvSfZ/6SJR?=
 =?iso-8859-1?Q?ZGV4BAyX8IA40weTECDjor2SNNooQfBnU6qJv1knN35lv+tq48Ec+roWJi?=
 =?iso-8859-1?Q?gmoyFL5fPscrZF0ka2IlGMYGxnsbuuVT/Uu/2+MWUOvgmbQowriDtiWlwd?=
 =?iso-8859-1?Q?S+b/9x069KVxuj8eiRNsjaYDQPqgFqoN8mHPyBFurbG0H75LzuJIm9TtkA?=
 =?iso-8859-1?Q?JSJ2cCEo04NgE+TOFEAwkSTl8FQqh9ZeAurG0etmNEXug/v+fAsVl9aT5g?=
 =?iso-8859-1?Q?1EPVP5P29OHS7O9VJXEkFsl0K++FAhn8CuKYanZv8RmBUIuqYZmNrtXxr8?=
 =?iso-8859-1?Q?1voHCMG/H34wshOadz6PV2KRR48EcwdLWXc1DwOY7vYUUNp3Ne4p8flQkg?=
 =?iso-8859-1?Q?s9w1qVoIvbT6tdElL8t9k70c2zg4I0WgTuVe/mecOJ2c2kYLw0Q96h9euu?=
 =?iso-8859-1?Q?XcMd+tzw1Qkvi0kX/kYnz56YmBayt0LZkAJZm+ghF1M19fC6G1CC6nLaf8?=
 =?iso-8859-1?Q?13xh6R727exYoyHBmg1Xrmj0DlaSGy+CFpPhJHSWbcu1Eu8Ah8nLFjTERM?=
 =?iso-8859-1?Q?+rFqWuHHL0qlNDGi92Ln/sNc9a9UvwQZbtvkfBlJV0H1hQeo9SSsYp42lg?=
 =?iso-8859-1?Q?BjvLNHHpml3/12r1K2I1tfO+/AhgfT4A2nPSc0x2W6gIFweKX8zxKL74FI?=
 =?iso-8859-1?Q?zLd9qwzlX1KJOw0V6TO96d7Qyu3w2HXhTUgIbFAaDAwaMBEz69rk2K1Q17?=
 =?iso-8859-1?Q?e0g4XMTcd15w976nUFbryzu9SGmI1mexFBtHQJ44E9lPhSxoo3ZgsQ817T?=
 =?iso-8859-1?Q?KaUlPhO7EAnOEUP1wyCLj8k9KxuZjcIq5Uk7z/1PHo4Nrji3q7nt5qki8N?=
 =?iso-8859-1?Q?2frBxc1I3DU3OBsZ5JKT0XTpSRdTUALVXx5umysU+1/OwDFasFLaWcjG6t?=
 =?iso-8859-1?Q?o4HJwVn/SH30MnGPGU4WL3Ao1jAtbWVW7toSy1IKyHXKj7qlKa2KKW5F5v?=
 =?iso-8859-1?Q?BAwrykbfW5+GMignMjJiQusfy5D4h781u1wDmdfhUWXjm+zzsOnrjRJuJY?=
 =?iso-8859-1?Q?q1TwNRSv4zWCgpgFthYbQoKpHKQ9b5i0s5UbQW232qV4n/0uYn3HDCg3iH?=
 =?iso-8859-1?Q?3QDAz0AXgzA1Q+fOlOOokYbsO2rb17FeNZYUzm2WoJeuXeou1DhsFUZ/Dr?=
 =?iso-8859-1?Q?twJJsT15QnqmAV67KSyrXmglwwbnlEJ3s44rdxRceuun1QVPYMhpL/cJuU?=
 =?iso-8859-1?Q?wzH7fda/KFmba7pz6x4gjfkBovvgYpCM1eNlzIGgj2TyytmDcwZuiBMmNL?=
 =?iso-8859-1?Q?uEaJBNAyxD8WaT5+PR6TgqHPYH6EOTO30N/2ZzC9qEgE7n8MVl4WOF50R1?=
 =?iso-8859-1?Q?qS7krf69El+/8kznitDENC8l852XVgEcViCYk9+vMDjzdToxkFV+96o7QK?=
 =?iso-8859-1?Q?6kspl8Bnk0e+4np6wxE=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 232d2249-c0f3-4e91-ba2e-08d9f2cf7939
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2022 11:11:55.6864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: myFbQenMCOM+cc9L0CxivolJfR4OJ3tW7bagiBYH+rA4kgfzP3j4pDQJ/SNQxbRtDi9g9A167uIa4ocoNRYpjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2317
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
Cc: devel@driverdev.osuosl.org, Riccardo Ferrazzo <rferrazzo@came.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 18 February 2022 12:00:54 CET Greg Kroah-Hartman wrote:
> On Fri, Feb 18, 2022 at 11:57:47AM +0100, J=E9r=F4me Pouiller wrote:
> > On Friday 18 February 2022 11:53:58 CET Jerome Pouiller wrote:
> > > From: Riccardo Ferrazzo <rferrazzo@came.com>
> > >
> > > Some variants of the WF200 disallow active scan on channel 12 and 13.
> > > For these parts, the channels 12 and 13 are marked IEEE80211_CHAN_NO_=
IR.
> > >
> > > However, the beacon hint procedure was removing the flag
> > > IEEE80211_CHAN_NO_IR from channels where a BSS is discovered. This was
> > > making subsequent scans to fail because the driver was trying active
> > > scans on prohibited channels.
> > >
> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >
> > I forgot to mention I have reviewed on this patch:
> >
> > Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Reviwed-by is implied with signed-off-by.
> =

> But what happened to the signed-off-by from the author of this change?

The author hasn't used format-patch to transmit this patch.

Riccardo, can you reply to this mail with the mention "Signed-off-by:
Your name <your-mail@dom.com>"? It certifies that you wrote it or
otherwise have the right to pass it on as an open-source patch[1].


[1] https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#s=
ign-your-work-the-developer-s-certificate-of-origin

Thank you,

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
