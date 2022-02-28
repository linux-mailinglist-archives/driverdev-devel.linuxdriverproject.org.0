Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDF04C712B
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Feb 2022 17:01:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C70A981B36;
	Mon, 28 Feb 2022 16:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dHSuIBYn4Ppp; Mon, 28 Feb 2022 16:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A96B81B10;
	Mon, 28 Feb 2022 16:01:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26DD61BF315
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 16:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2390B60C0E
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 16:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ND8HPaMkheZZ for <devel@linuxdriverproject.org>;
 Mon, 28 Feb 2022 16:01:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2048.outbound.protection.outlook.com [40.107.236.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71B7F607DE
 for <devel@driverdev.osuosl.org>; Mon, 28 Feb 2022 16:01:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOoQqNynOi+wVlY2cbnzwvQRxkkLkwD2MX+Fmi/FuL/ki6MYygZ/G9N+dLq1uHYkO660SJ8hEAzEAiUXn62dsSQiErKtWkYa1rOTwGSD1UZNHTWMiHBW9QTtGlwV09Nml2OHKpj3ejkK/8xKBqRzKRfjM5URX9KimNdHdLy4/mT0VOqnBa7oTvXu7Xf5gMC/9uJQMtRfLu5mMJYKaTdMUSzilK067B+cZWCXJNUUwMSFJ5fAkZGW4R1Q9gyO02u2J/uoKY5hHeLwBgFyBLSoBQEQV/8P/8HZJ5sdncenA+6muAQDt8SsLW5oaPQP5zdL/1lT8F528zHt8dbpu2wKCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=On+cS0T2PinrEw6y056thEjUgb5OfGmzMJqtRs85ZlE=;
 b=dxzj6oDl5gf792rNQcwSPCAMAb4lQyUqdR5mbYCpksphfrN1FUkCbAjG2IFGElIYcigYqKP2IttvQSrXgJ3m+9aa+lRcgsOQ509zOhANzRMZo6P83O2q6Vs2cFIFhopROpMqNpqQIOVmt0ZZQl9w3gkIneHkKJZToFEhjh2WI8BzSvUk1TrozyGCaiomHBdc+z9uvF18s/LoWfNKsZ3VjJr7ccA3ZUbfTw1AgVcW97B5R87Yr4enBckI2D6rbQOnut+PUGj4MdiDgsGni0zzN3g0QcOXSZbmtrnVak8TYfoU6slyMUWG404t4e8YG7J/RtBOnK53N4GQF1SVNALPwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=On+cS0T2PinrEw6y056thEjUgb5OfGmzMJqtRs85ZlE=;
 b=l8Tq/SS2vJ2wNtGIWHMMxCjyKDM+O0k6SV/chlR3YxzVNU1E5TMvPN7Om7lzsmDhdALb0NQkZVSef9y9y1PSo81NdpeM2NRVLfdfmItoDRXWXrX0mHYsisik7GV216d++lpOhCWIW9epauQ1fPfKdf/v4jmHd2CqM9CtQEIOIzg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by BN9PR11MB5481.namprd11.prod.outlook.com (2603:10b6:408:102::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Mon, 28 Feb
 2022 16:01:05 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66%5]) with mapi id 15.20.5017.027; Mon, 28 Feb 2022
 16:01:05 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Date: Mon, 28 Feb 2022 17:00:56 +0100
Message-ID: <2138665.7GXtrRnAus@pc-42>
Organization: Silicon Labs
In-Reply-To: <871qzpucyi.fsf@kernel.org>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <871qzpucyi.fsf@kernel.org>
X-ClientProxiedBy: PR3P189CA0016.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::21) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf1bbf31-9997-47da-3eaf-08d9fad38651
X-MS-TrafficTypeDiagnostic: BN9PR11MB5481:EE_
X-Microsoft-Antispam-PRVS: <BN9PR11MB5481A7EA8B346E055777DDDB93019@BN9PR11MB5481.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fzcf+hGNs4cXS7IbYA8HlbA0HedOUcFMkQHhPBUJJM1MF3tffkABr3pZ7NARd/s3A++M2N3XhBuyhb1A3V6um6L7hPZFpA8SV7rt/tZ344Ez4kW2gjvAWRk7JUtC+Q9Qfyp/PoEWFAVVho41bBL1bbv/mhN7ZX9xrp9hGN6Im1k73Y3TMWXRjmOh6Qsmb9hNuPU3oWpm4scpC9KhuTg/j0wCrChBhbH/aKPA4HkHs4dxTykzUcH3MpblHLZfdMYQ4t+kqc5JziOrQZkIlRm4FvVw7k1Xg1O/gI9JeEENPRoArW4XsSQUqpEaNmetk3W613GSAtIgh1+WYYtUUB+xPBytyioKwgshJh3XLgP6JYfm8+7evGKe2icSFbOpqL+ToWxRK9bwCCSjY4tVSVNuSu/4XJjvCFOlMaAXPnox1qJ7ALZIS4RGuBmRWGRoHBWpsGbDCepYhCiv7kWYlHyJ4chO9KhO/FO6u6lKectCTPT5f0b5VJFBhqBuHc3zqHOdDzMRSz/ieO1i6gA8o7AA3FnFmyqU0gQuFVk54HtMKemWhqGfa7IK0UUWujQjjfjAlI9MptU2DM7zQYNzmghf4FuWj1H59EKdUx49H8p/kVyVOj6At0d0waGw6SAWPrJzGp+ALSHML82JMB/VX1eYJNWM55hADN81p4HhCykHyH8o49LMbVxonpVq0M7GCRmg1hFMxiDVMozZNhPoJRyymz84CY9TsJIyJdegX3uubnC5DocHHJMic0AE6ietHvf/BqkhiwoeiFFLl0ixoof06a/U5hzifkFOFOSVUg6X5HgueFhneeju46OZac+vT+UD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(316002)(2906002)(8936002)(38350700002)(38100700002)(7416002)(5660300002)(508600001)(6486002)(966005)(4326008)(8676002)(186003)(33716001)(66556008)(26005)(6666004)(86362001)(6506007)(9686003)(6512007)(52116002)(6916009)(54906003)(66946007)(36916002)(66476007)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?mCO7c4Ygu7ArFqCKwu4uoHIKYgOwzRT56ScJ7okelkJFNZVRnpLdGyOmkn?=
 =?iso-8859-1?Q?SQ7+AgAI+bTE3uHjZtyMBF4dJUu1TFHmsr4kiiUcBP3y+eJp7bmBP86NqB?=
 =?iso-8859-1?Q?IV7xK8L8tvXdUbRcB/8ibBzHYn8TS/JRybeN0RAl4CDS1xusn0jIFK33TK?=
 =?iso-8859-1?Q?YaGNKmBOY3W6tKlXaUcguN1s4sFF9XDKJgUOk3WRv19eZB4tAXLJC5ROBO?=
 =?iso-8859-1?Q?2+Z/sFgS3drs+o+vvHuTykzYNqeor1czBIifiCU1RhANs1x2CKljEmCojj?=
 =?iso-8859-1?Q?nGuTTKfWvq7i3DF0axBDnfuXCKRR/+Qw/X68/VHWxXsV7Q5OF6xom4n5aF?=
 =?iso-8859-1?Q?gkiAzvaAsvq9GuBgezyyrkyvFAdaRBLpJGaU1h8M2zatDMEsgM9w0muTq7?=
 =?iso-8859-1?Q?NWES8qjbKkIbc29pu1mm//ZKJwgHR2nw62pBxvsyEzwO57coeDuNzqCrZw?=
 =?iso-8859-1?Q?RGI97YHxtCD7YXn6hUaJDd/z+EzlqCo2/IAjqPhpD8be6jTHKT27MFkutu?=
 =?iso-8859-1?Q?XOz4tAP06PHM3v8zXL+lhrMKCtFvBsnLVA/1cv1lbMiQkX3wtDXcvkjbG3?=
 =?iso-8859-1?Q?O71KZKFuRMUoAFm5LNHbcnvdZ9qQ5r/d8vsrzRE1Tt2Q7X5HzEEfHGB1rE?=
 =?iso-8859-1?Q?b6u4ydv2/feUguqdZ4z2D6Rqx7LZbv7dNfwtCirSj2tRLGwu5CZxWmAJb5?=
 =?iso-8859-1?Q?Fl2tOjee9MvsT3bZuX2woyQcgA417cZR7H0IokgB8CPLCoP+7ClZ2OVBDN?=
 =?iso-8859-1?Q?CRJ37VLEFR9MLBMuebFojcAFKYx9NPWptyI+VA2u2DzWiC30Uin/OcBQCW?=
 =?iso-8859-1?Q?CKWybAVNnB/B8Lho5vOy+1H8BZZn70KDhIglMBqSLq+jAawBP9cqQ2JO9I?=
 =?iso-8859-1?Q?IJou7S0FBiu9SSAvXlzWW1wMSa3uTosw4eo/zDPl7rxV9+RbM/aNAjndgJ?=
 =?iso-8859-1?Q?eOUN1hq0c9MU1tmgz/4JZyZyxi6jeWEex6PtW3ZPJMZZ8WS5ufVp0mf4oD?=
 =?iso-8859-1?Q?Lep48Ncyilq8toZfbJhP3Gw68/B545Z9kMgAukTlqBAYMcVWYnAIPC9ygz?=
 =?iso-8859-1?Q?5cqZ2MUqGlWQbDtRI85bRddjyiaVvqZfOFZ4tMSNQK6MrfrEDX+SpBBkix?=
 =?iso-8859-1?Q?e/9qMwC8dkrowbm3Dap7H4FGql2gLwq9wV00al/Fddv4X52qvwd/fP4ccH?=
 =?iso-8859-1?Q?vjp3eXTyUI0TMp85AEJxrOPqFRCCcpA7Mcx0aPO/Ote4pbQeBJXgVIhQ+e?=
 =?iso-8859-1?Q?99OLkjGF9Rd3oBCqteh47wPOv2f0XyxUAjOpNJhyzmbcs149Xje3L54rfu?=
 =?iso-8859-1?Q?095GkLoqmKZJEiITam2K093s/n2c+0bcrYsAzoeeGixg8SsmgKmg3uMgXH?=
 =?iso-8859-1?Q?OjNmsjhtScxdPpH1UQXQ/VnA3YuynB7eY5h4q8F2VBBwpN/TZRCrJMFbij?=
 =?iso-8859-1?Q?llyelWccHd4krFblNTIx/Aa6o/BFPqUD04dBbzw2TJQrQk50jqi459jGT0?=
 =?iso-8859-1?Q?cxf4FYgKzWvTcYMhr10+p1hTO/3S39hDfCXbdLIycB/GiqPUgK3YNwuybH?=
 =?iso-8859-1?Q?VS6uSFawj4zfqz+VHbEl5MsuYwo6a7LY7+bHe9TFbpNpYNqGACNzQ6Ci90?=
 =?iso-8859-1?Q?IasYWqFz+EnCQh/ZVZwJDywFF2pFEIv26BKMczxU1cSKjr2YhLRLhRFBjS?=
 =?iso-8859-1?Q?HXcPooVTUSryPVIkcno=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf1bbf31-9997-47da-3eaf-08d9fad38651
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 16:01:05.2837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xMMEOQnoLY4Blq09z5mX6sMHrza3m7JS5TtZTOHlNSj4EspURoK5U8QiIRG1cbc7m3qJyRohPDp7xNGMl2fVjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5481
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
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+ Rob
+ devicetree

On Saturday 26 February 2022 11:41:41 CET Kalle Valo wrote:
> + jakub
> =

> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> =

> > The firmware and the PDS files (=3D antenna configurations) are now a p=
art of
> > the linux-firmware repository.
> >
> > All the issues have been fixed in staging tree. I think we are ready to=
 get
> > out from the staging tree for the kernel 5.18.
> =

> [...]
> =

> >  rename Documentation/devicetree/bindings/{staging =3D> }/net/wireless/=
silabs,wfx.yaml (98%)
> =

> I lost track, is this file acked by the DT maintainers now?

Indeed, it seems Greg applied this patch[1] before Rob acked it.
However, the is DT now included in "make dt_binding_check" (because
it is now located in Documentation/devicetree/bindings/) and Rob
haven't raised any red flag.

[1]: https://lore.kernel.org/netdev/20220217103248.183770-1-Jerome.Pouiller=
@silabs.com/t/

> What I suggest is that we queue this for v5.19. After v5.18-rc1 is
> released I could create an immutable branch containing this one commit.
> Then I would merge the branch to wireless-next and Greg could merge it
> to the staging tree, that way we would minimise the chance of conflicts
> between trees.

Right.

> Greg, what do you think? Would this work for you? IIRC we did the same
> with wilc1000 back in 2020 and I recall it went without hiccups.


-- =

J=E9r=F4me Pouiller



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
