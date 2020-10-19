Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4E32924C8
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 11:43:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20C88868BD;
	Mon, 19 Oct 2020 09:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cmeB+y25qxB; Mon, 19 Oct 2020 09:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EF22868A8;
	Mon, 19 Oct 2020 09:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24BC71BF3E6
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 09:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D7EB023730
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 09:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4mOCLoG-CWxS for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 09:43:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2080.outbound.protection.outlook.com [40.107.220.80])
 by silver.osuosl.org (Postfix) with ESMTPS id 05F17236B5
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 09:43:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TpZe40zONMx47V4YfOw0eaGR8kdoPjZIYbhGu5XyLRXCBOtTY4KWo5ogy0EEMYdqidRQURNKf33ihS37BZqtUM2enz5bKsGcSgm2pe3Zgxqj9GZCXbIOJNTu/eN7ATNxB96vOCzWXckCeq6cOpVxVAgsk89vxjyYZD3COT0jci1jFcNo3PYW9zhwqVW0fJiKm3ALAFE6BHrzYT7AKFxK1E0uym+kKRl3elSbkgEwO7erm4owRNFVYpmq2DpHw5SWsDBtT2luD5mgjlHAiXEyiHhKwlq2cUa8qD6SQnjiwuWGZSMeK7VUbooD4oGbCqu8/t6VwnXCkbDlJZSyegur4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HPahd8L0Jqokkf8q0pmpDWKgtUnbB5q73dgibn9D2dU=;
 b=IyCRx4ID2MA+eIgKFsauff7MEbufp2HSDCo/Mi2QCRoX74NqAjL0U2IzuiuJSTjPDIuADPS7V/QKFVmdoSsmu407NuMHhjdQ817pROGODLyJuDuPMrQrTTzY7pBLC51p7szhbWeWO+4NPWrx4Rc2AKqbnw7qB3FJTx2ZLRIVAFxKej07fW1r44Qm0aS3KFfFUB3KBvke8vcVmAndrACjA7z+WI0cK105mih5XZILKrcCI3ENNV2YncoRqQHKhrj4ZGcyXu4sx9CNjzs9akepv0X3KwmTDoduFyA8/SGFH7pFRjpKrtxOPvNSzZNR6mSZt7RlDyb0nGOvFOEKwo1sTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HPahd8L0Jqokkf8q0pmpDWKgtUnbB5q73dgibn9D2dU=;
 b=g2S41lidu4NjOQPH55xFhb2DMaWsyH+zeM2WADML1qM9zxQoM/hcDr4aTqx1dZg99i/uREJGI/dVae7ILh235Jvep4mbEpuXyjUsc2FfHfaOajeeh172+DuXpzDFhdy3q3ciUBluAB65h9jFZiWnw4PSUfwq5KcfgurCgc2hZfg=
Authentication-Results: perches.com; dkim=none (message not signed)
 header.d=none;perches.com; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3040.namprd11.prod.outlook.com (2603:10b6:805:db::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.28; Mon, 19 Oct
 2020 09:43:43 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3477.028; Mon, 19 Oct 2020
 09:43:43 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: 'Joe Perches' <joe@perches.com>, Colin King <colin.king@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH] staging: wfx: make a const array static,
 makes object smaller
Date: Mon, 19 Oct 2020 11:43:36 +0200
Message-ID: <1800171.ETUgnxhFMb@pc-42>
Organization: Silicon Labs
In-Reply-To: <048fded745634e369fa2646f87a05ec4@AcuMS.aculab.com>
References: <20201016223303.687278-1-colin.king@canonical.com>
 <09cd7e609324d460afdf14829baf3c2f1a9cb9cd.camel@perches.com>
 <048fded745634e369fa2646f87a05ec4@AcuMS.aculab.com>
X-Originating-IP: [37.71.187.125]
X-ClientProxiedBy: PR0P264CA0137.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::29) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (37.71.187.125) by
 PR0P264CA0137.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.21 via Frontend Transport; Mon, 19 Oct 2020 09:43:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce29d0c8-ff23-461a-7516-08d874137743
X-MS-TrafficTypeDiagnostic: SN6PR11MB3040:
X-Microsoft-Antispam-PRVS: <SN6PR11MB304034B6A77B5BED1A47C185931E0@SN6PR11MB3040.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SCrlrP0vcMlTxQHZkXcrpDKx132acr6dXzXNB3FHxFPpiWeC48leHsNzhM9885r+dA1U+yqCGatjL5/FzZdaX51gBqIr2EKSarFKEjnXwMJG0NOkbMfYM17boJ2rkhRLzyZvjpKkflsgufHZ33uDiaMYVdWkOFNGN9uCv1Vo6NC1J7SuEl50jj/Yo18rtQrMx05P0TpZ27J+EpTqF6TV5eAYfgtn/rTNHY79hAu3wj8F/Cxbui+QNVs0nFMfcxsgLV2pm0WGxaBxdDz0c5Rb6Jrlam4kS0y9XJPHANmSy1FHzzcqYIR3rNDhsQn0aoiC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(396003)(376002)(39850400004)(5660300002)(8936002)(8676002)(36916002)(66556008)(66946007)(52116002)(66476007)(6666004)(6506007)(4001150100001)(9686003)(6512007)(956004)(83380400001)(316002)(54906003)(110136005)(478600001)(4326008)(26005)(6486002)(66574015)(2906002)(186003)(16526019)(33716001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6gsTNrAvMgL/lRhxMiSfy5DmlfbheoENvyqtsUutktSWM+2i8kFClVdR4QP3R9DXfKehGBYd5N01lpx1FzrV53twiZ2AI5rYZRlzckvg5eEgb8M4onEs0LectL4YB9e1YfAv0UGS1p37uMWhoFEMNBBtrKng8cz3w/NWSVGhy+a+t9ovbTCm9zUleYJga9rML4rlLZQdHHnpr9rV47OEXdGF5v82eLJa3kt4TLMeI+ShNA3LYMOuoryis3OB3SCP4FJ+IDevxTnsAnDHFN7BShQli0H2U14+0wY/KHgGLTaxQd2s01prEIiNxTFdUssyfP7Eg82ajpGGidkhexCwvXdGlGaCSqPcB/x3tc3iCiJc3/tEHSLSM00ICN4qqJm+clvtNNWXd6HoGSBJrpzsL2OR482KjxOLt7kxIcInLyg2rolVsncqP9FaIQJ+//yJOz96a5gl/gkvkVjogHLFV6x++kYYPEacTwa4evKEme0kwnMWu04KcawKwQ4kRJ26AckTzbj/sv32DrsH3+RM/csl7AMyPMloKzxNSV83HE2w+FvxbZ8oscDcAqvO9Y/FO+xFDySEB4WvUTlHT2BfWOeVYmV8AAgBW8PBfU3JDaLtc6MMf466vw8C1a/xHzwqNhSm6sMs3hBBCfpLTMKkbg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce29d0c8-ff23-461a-7516-08d874137743
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2020 09:43:42.9454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5tUAaWh30IY0+TtvgaImVcp3E4YiM4z/RqHK8KGQaNTHy2LFA51VPWmsAFMDgFCroHCcUMfFNhpxqKa/JlG8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3040
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Monday 19 October 2020 10:09:19 CEST David Laight wrote:
> From: Joe Perches
> > Sent: 17 October 2020 01:12
> >
> > On Fri, 2020-10-16 at 23:33 +0100, Colin King wrote:
> > > From: Colin Ian King <colin.king@canonical.com>
> > >
> > > Don't populate const array filter_ies on the stack but instead
> > > make it static. Makes the object code smaller by 261 bytes.
> > >
> > > Before:
> > >    text        data     bss     dec     hex filename
> > >   21674        3166     448   25288    62c8 drivers/staging/wfx/sta.o
> > >
> > > After:
> > >    text        data     bss     dec     hex filename
> > >   21349        3230     448   25027    61c3 drivers/staging/wfx/sta.o
> >
> > Thanks.
> >
> > It's odd to me it's so large a change as it's only
> > 24 bytes of initialization. (3 entries, each 8 bytes)
> =

> Perhaps the 'stack protector' crap?
> =

> Interestingly, loading the data from the 'readonly' section
> is probably a data cache miss.
> Which might end up being slower than the extra code to
> update the on-stack data.
> The extra code might get prefetched...

I had never realized the difference between "const" and "static const" in
this case.

With my gcc fro arm, the output of "objdump -h sta.o" gives:

Before:
  0 .text         000019fc  00000000  00000000  00000034  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  [...]
  7 .rodata       00000015  00000000  00000000  00001e78  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA

After:
  0 .text         00001974  00000000  00000000  00000034  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  [...]
  7 .rodata       0000002d  00000000  00000000  00001dd4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA

The difference of .rodata is exactly what is expected (24 bytes) and we
save 115 bytes of code.

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>


-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
