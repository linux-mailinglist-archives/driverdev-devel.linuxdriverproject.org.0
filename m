Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD7C213D07
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jul 2020 17:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4D8788DB2;
	Fri,  3 Jul 2020 15:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Y6Hqs9kLCME; Fri,  3 Jul 2020 15:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78C7188D8B;
	Fri,  3 Jul 2020 15:55:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FDC71BF29F
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 15:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 985C1896EB
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 15:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Okrtu2gcRa2c for <devel@linuxdriverproject.org>;
 Fri,  3 Jul 2020 15:55:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2052.outbound.protection.outlook.com [40.107.237.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B938C8955E
 for <devel@driverdev.osuosl.org>; Fri,  3 Jul 2020 15:55:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aX6Sl4VB37MHN3wSrlhAvp5DbpT2muK432FmpsEB/W3dMgEb4tqEWs4brsxzzZMaVFlFr/BUNt36tCyX8bHcDGHjEmr1OAQVUa9ucE6wwvx2ycAGpyjZg7uABnmTsHEkrgnI5w5QWdwumx2gCCpbLRxKF2VyZ+YNPOhyPDq//3YhhpVABNILXwNa8Ic1GqZX+JwpbzOyZ/qigEAS2Fg1Y/T6bVGB1GDxLih2mYXn/CKxXdTIyzjTpJAs5S+BGSUlGq2wCoXnUfes5PzbXgwm6HecMBzb53G6GGbHrlREHdwK2YvHWmKQtGh97V8STvNEGQHCSqZ5IPiwUR6YBFU9qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIupekAVmx3qoYqzC0aFQB9KTVQwukbAtbm6FYnXOz8=;
 b=GjxhY7mn+fCpVMUDb2//dlcvoNF6XnV7cv65+Oxx2gubAMIb/mI025/KMt1B0PS4Er7OXxF5UI+ZbzIY1CaLYes40jTxXi2bNFVF/nSK2WPf3cJioW5ICLmItYEKWYnvja9cd6hn7beD+coMsrtazfhQsbptjv4X6yXtHFHT0l0ZmDgWLtFmsx1skHIx0zpL6Hbk2jGNtlXY0cJ/MkfpUR7L+GoKIDH4/d9rnv+Ho1i+uuC8Y4XBEGwezRCvsZlPZwTCRV4x99WN/jUKoJz/910+31D/S/yPRCSKDSbg66F9vadWIaWDN7cjmIHu3xiUF+LcyE9ZTOOM1FncYeyZbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIupekAVmx3qoYqzC0aFQB9KTVQwukbAtbm6FYnXOz8=;
 b=px0q5hjZlA1WHjpif1affZOXF6yaztlJcpuHpejQ0BGceSu8HecIpyXp9kdwLdeF4S/M0e/Nal564fIkLwOhRYDsqI0DIbb/fpzWXjBjHz8Ct2hkFKQ7L8oOdlGgcFkVLvhdxqdG8nBLlnCCs1ROuiOqK4q4f79sn89o2d2x1ds=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from DM6PR11MB2714.namprd11.prod.outlook.com (2603:10b6:5:ce::14) by
 DM6PR11MB3593.namprd11.prod.outlook.com (2603:10b6:5:138::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.21; Fri, 3 Jul 2020 15:55:08 +0000
Received: from DM6PR11MB2714.namprd11.prod.outlook.com
 ([fe80::74de:8045:1490:e3c4]) by DM6PR11MB2714.namprd11.prod.outlook.com
 ([fe80::74de:8045:1490:e3c4%6]) with mapi id 15.20.3153.028; Fri, 3 Jul 2020
 15:55:08 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: gregkh@linuxfoundation.org, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v5] staging: wfx: Get descriptors for GPIOs
Date: Fri, 03 Jul 2020 17:55:01 +0200
Message-ID: <1812259.WCzghhjOz1@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200703130756.514868-1-linus.walleij@linaro.org>
References: <20200703130756.514868-1-linus.walleij@linaro.org>
X-ClientProxiedBy: PR0P264CA0269.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::17) To DM6PR11MB2714.namprd11.prod.outlook.com
 (2603:10b6:5:ce::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (37.71.187.125) by
 PR0P264CA0269.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.22 via Frontend Transport; Fri, 3 Jul 2020 15:55:07 +0000
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86069323-9b11-4592-e720-08d81f6975a8
X-MS-TrafficTypeDiagnostic: DM6PR11MB3593:
X-Microsoft-Antispam-PRVS: <DM6PR11MB3593D26E0CCF38880C8655DD936A0@DM6PR11MB3593.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 045315E1EE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LR+7ohCC99Snb+eEBlyNrarZGlBl101fpPw0BjCgDkjIZEIzp0hNzQP1r8lJrsNxCi/I6SKezUyxgI7mrqRzLYgfNpxtjVJPS2NmPPHkbLUvruBrCYe1zu1F5VXurPCK90wra1FO9rlXGgNaL8Z5Z0je8Tas9OuVGx9jpaRGgAEd7VDfzb3pA45i2kX9jm8lPv+C3hTPd4xnucBUdyLVJhMXWbuOd2hvNydrj0tR3W4lTvgxuc878u8fgSt4TJZWdI4TaJr3mlYnfMISm7EiY1JHMiDYlB8dldLtxdXNi9+IBipql6tglol1vYh8VbgvE29t0Xo4s+idEvnySfFx2jhFXI+yOyTcyS3R1KTQOsO2ICp1vXab7mZvuGTlQotM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2714.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(346002)(39860400002)(376002)(956004)(33716001)(4326008)(66574015)(36916002)(6506007)(83380400001)(6916009)(478600001)(52116002)(66476007)(16526019)(186003)(5660300002)(316002)(9686003)(6512007)(6666004)(66946007)(8676002)(66556008)(86362001)(8936002)(26005)(2906002)(6486002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: URWZDdv8Lw5/AjmyALMiEckI4GH9oJDcezeHBF34zK0nqkYxGagf64/ehtV+rUphTk0mHSWzVOhEqGeKTXAyhKCcFatJMZLKR8R3rlns1zlIyXkwKaSwUkknjt064Rj2oNpbBupmd8UT1Hs+ZXVCfJE4MUASYRsL4EHdKMjBSRoN0TZsXqp11x0Q6MloELDp+UrbFtof2Chn4gqyT4z+YGE5HLEpi6+Q7y1aWdjepF9JvrheNOgLAWEkOp21WpKWgiCb2rIJDiMsZ29Z/KP4GUp6lAO0Zv0TseObBmAEzPCFJWahS+7gkcagMXDXlLxuZSNiNSFM8W+cj4wUCjdNAXbYr6SONm2N7fHu9TugYCcN6FZNn0x2ldtVX9etUt+8kz3vOtNMro4mwF5XmHdJcQwyEwesqanEq102XqVGQTGJ23Nz3QkSkbFo2iMv6pw7OnLK+cw4j1LiZahCuJkUezA/21/eQsVBdRnURiIzHqI=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86069323-9b11-4592-e720-08d81f6975a8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2714.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2020 15:55:08.0784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z/21fSVTi7luOfzs2Yockqu1FmsZWE99E6XSVwH5ulufdX5euC5kSIg9K6etFAHUisL+zEIgOQvssQ8RTyK+Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3593
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 3 July 2020 15:07:56 CEST Linus Walleij wrote:
> =

> The code has the functionality to insert the GPIO lines using
> the global GPIO numbers through module parameters.
> =

> As we are clearly deprecating the use of global GPIO numbers
> look up the GPIO descriptors from the device instead. This
> usually falls back to device hardware descriptions using e.g.
> device tree or ACPI. This device clearly supports device
> tree when used over SPI for example.
> =

> For example, this can be supplied in the device tree like so:
> =

>   wfx@0x01 {
>       compatible =3D "silabs,wf200";
>       reset-gpios =3D <&gpio0 1>;
>       wakeup-gpios =3D <&gpio0 2>;
>   };
> =

> Cc: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v4->v5:
> - Make the wakeup GPIO optional.
> ChangeLog v3->v4:
> - Finally figured out how to compile this by selecting SPI
>   host and deselecting MMC host.
> - Initialize the reset GPIO as OUT_LOW
> - Initialize the wakeup GPIO as OUT_LOW
> - Drop one more desc_to_gpio()
> - Update the warning if GPIO is not found.
> ChangeLog v2->v3:
> - ERR_CAST not PTR_CAST
> ChangeLog v1->v2:
> - Fixed a cast and a variable name.
> - I still don't know how to compile this but hey the zeroday
>   robot does.
> ---
>  drivers/staging/wfx/bus_spi.c | 14 +++++------
>  drivers/staging/wfx/main.c    | 47 ++++++-----------------------------
>  drivers/staging/wfx/main.h    |  2 --
>  3 files changed, 14 insertions(+), 49 deletions(-)

I have not yet tested, but it looks correct.

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
