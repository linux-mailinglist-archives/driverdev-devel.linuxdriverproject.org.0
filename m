Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BE633CEDE
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 08:53:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5949D83A89;
	Tue, 16 Mar 2021 07:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKQ6n2dQrhyp; Tue, 16 Mar 2021 07:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E8D883440;
	Tue, 16 Mar 2021 07:53:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3502A1BF387
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 07:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 312C46F60D
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 07:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHm2A7nlViTm for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 07:53:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2069.outbound.protection.outlook.com [40.107.220.69])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E7EE6F5E7
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 07:53:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aWo/ySoSQYYyiTUFr+xh9pnfTfFVbTF2mhM1Jqh38TIzj/cXMXwMLDWZurPOjyre1B5vDgWQCdLcniHUOwNAaJpCLmmzCbX+F88wnzwR6UEETbHL2gPDrzU8E6d6t5b/ddyhzdUfeRfhq/u9oiRTAx6VTJr2fHEM/F67QKwk+XWwEjTYiCzKuLbM0v0Wa8clNAGXJDKBk6Z0wM+nQ/1MwyvK1J6kX+fZHiuNEXDhYbvleWC839+vFoNWgwgC6W7/fQS9nRP8Sp//37kLvDeiJtNXwmgvXCYEcRmJHayV2uwyoDHZw8z/m4Yfns5oxsDannQnY+daaewcKSLToitu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T35YpkXQjOMQcLi6jG9c7OWw7aIys4x91+uIu6u3qpo=;
 b=YEDPxf+7WwBALMlC7AYotl9fNx2bs84Aqg9NdKw2Keovt11HaVVVbddijKIk7kCZx0qttCc4mLW4Zl9KwXcE/bt5nispZBhK/w23/0h/kfS0QXf5iElW8kxQ4XKTL2yS48whxMIKsz2O5lpTUrggKxpgW3i5L5QHDlKEoMJfqwGG4vqgjhMKd+HLk6KDzTzj/DbOOL6Rvt9S3g6GWMbe/T4cO2mFXGCLKP75xV1xOvSy73zOmcfoSp3GyGb9uzA3yfTm1Jujb7BfhJoeuKxLIoRrpEMwSAEpC6DaEe4V4t3BoZ1IRFIN5KUbqfp51J4FdvMxoQ41Wg+4rl4E2CeFfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T35YpkXQjOMQcLi6jG9c7OWw7aIys4x91+uIu6u3qpo=;
 b=JDo5cCS/tXD6yMvKNKumISv2JaTvm7i5Z1NO7dv7DTzjsQ3mXog5HA2JXWDNKi5iV+UqaRx1+6q+zqZyP5sEpVNSqwqLdpx6lLdTIeEHhooOYqjN7IrYvqosAxa9pBjXXnj+yuZ/oFxg8B63K8cz1+Kf40uZYrD2ojUGjH4NjqA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Tue, 16 Mar
 2021 07:53:10 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701%7]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 07:53:10 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] wfx: fix irqf_oneshot.cocci warnings
Date: Tue, 16 Mar 2021 08:53:03 +0100
Message-ID: <3096745.nmkoU2l6Xm@pc-42>
Organization: Silicon Labs
In-Reply-To: <20210315210920.GA43634@d108da9836c5>
References: <20210315132501.441681-25-Jerome.Pouiller@silabs.com>
 <20210315210920.GA43634@d108da9836c5>
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-ClientProxiedBy: SN4PR0501CA0006.namprd05.prod.outlook.com
 (2603:10b6:803:40::19) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 SN4PR0501CA0006.namprd05.prod.outlook.com (2603:10b6:803:40::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.10 via Frontend
 Transport; Tue, 16 Mar 2021 07:53:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2967cf12-8278-4ea9-b65e-08d8e8508b2a
X-MS-TrafficTypeDiagnostic: SA0PR11MB4765:
X-Microsoft-Antispam-PRVS: <SA0PR11MB47654974B2E238EA0B34B619936B9@SA0PR11MB4765.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 48W1dkY0mDmgJse3zwf1ooUMM5IZzNJ5PvdUT1+qSOVjaRKQ3q+O+pegvbjIE8mCB50YjmQDRd6KBBbP6XJURAoc2FCSyNODEjtC3x6qXaYBMT5XNcTjNgWUuNJntKXb6Lkb2epBAT+19bdmdvYafRqFYDIgIQlVjxoiZRwrDcFuDP2BWxT09liv1jZjjRsTWUpAFQEJBeXk92uIoyjzJWRYfm+i5l6V72/5W/dbN+m3KrP4xixm8/cDrOGMnVs0ZKB4e1uyr8WWCGTR6NeRILVkjqLM97GCT0Ra768woPQmpRV1qe79pbida4FSifeBPMz4KIrcYSM7YCdVaBt9hhaW1K7y7APbUDyLq0DXDFxfqAVPrYOAmm4iPK5Eh2VhQdjafHJo23kBwkbt5ZjiYSJAa/G8gx1OI6MmpZ5cU7vlIlc7neMaZYqgcrEUfBT1GWGKBSKyqOQBWq5blkTRkpIUGCkgxofglcRH4PhyWZUO0cCJhQHXR693SqYMcGV+iHMYV4MpXe7f8X7t0WQb0eBtn4xWNxgU0IZ877MTaQZ+q7bF6WLFyLphkzEStunv04aLF4MYmgapMTX7A4ofiiPLrLSJ1r3QpdrhkSKZsqVA7fF3nhj8Cbi78T6uMY8+8hWrLVvqk4AKLd7jkf0gJsWhi3zpsA8/BH26v4NzomWVzdFjMY+jZj46OE9j4iep
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(366004)(39850400004)(396003)(346002)(6916009)(6666004)(8676002)(66476007)(186003)(54906003)(8936002)(316002)(7416002)(66556008)(4326008)(2906002)(5660300002)(66946007)(478600001)(6512007)(66574015)(9686003)(966005)(86362001)(52116002)(36916002)(6486002)(83380400001)(16526019)(33716001)(6506007)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?4V05MYE8IXWLHVdFYVfm9IoSebqwBIm/I+7bHZs+vFp/d7UuriiX07ckiN?=
 =?iso-8859-1?Q?b3JQeb+kJY00ZxQ7gGlx+s2V5uTdQ2d5nAQOwJDvwqEhsw3MyOr/cMeA2C?=
 =?iso-8859-1?Q?hC8GbR1NPzQCZCFUTB8Pby/nlwF6yrnkM3W6GVe37sWAeN2spTeZCt6uBW?=
 =?iso-8859-1?Q?S8hWe8kjJ4L+ekAbEXChmHEV6iazqv386PBiuqwuWLTD39TOebZ8ytkqw4?=
 =?iso-8859-1?Q?gSMNeBjV0hyfI5XBXou6ivkVlLYHO/iAzJRttTf2QZpPhK+UpbEG1YU69O?=
 =?iso-8859-1?Q?HeBwEiiLScFszr2l2NAnJ1CQrunrCZ6AAOp+mCFRcl5yWy4ANCY9IBoTMI?=
 =?iso-8859-1?Q?YG1ghEqZI+MX6aV2G+jWqd4a7CR9pRTZpdC+aIebcJMvKqQqyOHWDLJ1Gl?=
 =?iso-8859-1?Q?IxFtl7dUouq74z1zMyqY5ilS6hcZQaClf5/JXl8KN5OrAsotbJzCqfVGeO?=
 =?iso-8859-1?Q?yw5tLDwh72bg5O5BFymXHMQc3DJ2SQ3WhQElQnK6DTm7bOOqS+IGi5EQZX?=
 =?iso-8859-1?Q?ouBpDJFblCOQ2mziP43lkCUOtldCinpeJwZVTG0CcAwwb8j1RL6p/VYuqg?=
 =?iso-8859-1?Q?5uUdAHZ1jauqu8plqXG5Q7yIXYD9h3mX98yv4QxN4odTgzB4hEw4ioU/Be?=
 =?iso-8859-1?Q?joHhg2s8uxCpLbArLCO2ANw9swh0LGf5HpbB0x0EKO71TpmPPbRUutkE5v?=
 =?iso-8859-1?Q?KFHrQleRtKAIr8Cn1mf6ImAMTviaIYRzwQR3Au/Vu4GL5UDK9TIFPjIROr?=
 =?iso-8859-1?Q?8AwyTFcGLLpXTsAE7e0Du/TI0rtjlt6l72Z159HnJ/C4o95iwq83us0LgU?=
 =?iso-8859-1?Q?bbFbSypXnqMFTeeac68xGnYpwI5+ixHGcaz52FFo/AHDZgbyvbQ5y6k4BV?=
 =?iso-8859-1?Q?8NP1b2MA1WTI+ffg5yk2WFrNydE7DozCY4qiMj3pqUCM/gtz7pcKmFw2xQ?=
 =?iso-8859-1?Q?Lnj0LXcEhCZA+5tY5BAdHEwr7kslU9pD1Y+8LKoZNYRdrQa9S5fnf83vRB?=
 =?iso-8859-1?Q?Sjufx5YUATYeYbA2ahKgWJKX0wNgfIz3aNVi34EcLzLUqqTAJPxCheewl8?=
 =?iso-8859-1?Q?TZ6khPCI/R/0/Cl4pO3s7/7HL0/VeWtUwu9jszO3rRaWfTlbZtNdUArOBD?=
 =?iso-8859-1?Q?ZoDVli9+ezaJGUGQEf3LHM7DGyVmnW+vzENlgqeDxzeY3mDpqVyhicpF5/?=
 =?iso-8859-1?Q?lnAxYcO6ct7unTSaldiWcSsA27eVKyisa80vVV3tOXIkhQRjFoJ4SCocMg?=
 =?iso-8859-1?Q?HLqRJNERDvHxcgRrCgoHcVc7UfzLKhNs8lPFyvs/RexxdmUmX2LGM3aVbK?=
 =?iso-8859-1?Q?1DC30WarNMj64gCGJZ9Lg0mWE8yuTLBj2irwdJlbW6Y10Pfy9y3dCmWwEW?=
 =?iso-8859-1?Q?7skYnrpEZCAx/z5hfJPFpBaZjhgFWc21umiW/uJvWWdzfdrEF4wHR2fK1H?=
 =?iso-8859-1?Q?VyoQWgmqhEdvOWnH?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2967cf12-8278-4ea9-b65e-08d8e8508b2a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2021 07:53:10.4883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: flo4Xf1TFQ4/Q0w0LTL3lDbJUhZCoDwZ/Qp3AriFEBtr9q/Q/BJPWw7sgCFb97UFWSj6o6RhfeTdXksSvybsaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
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
 kbuild-all@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

On Monday 15 March 2021 22:09:20 CET kernel test robot wrote:
> =

> From: kernel test robot <lkp@intel.com>
> =

> drivers/net/wireless/silabs/wfx/bus_sdio.c:134:8-33: ERROR: Threaded IRQ =
with no primary handler requested without IRQF_ONESHOT
> =

>  Since commit 1c6c69525b40 ("genirq: Reject bogus threaded irq requests")
>  threaded IRQs without a primary handler need to be requested with
>  IRQF_ONESHOT, otherwise the request will fail.
> =

>  So pass the IRQF_ONESHOT flag in this case.
> =

> Generated by: scripts/coccinelle/misc/irqf_oneshot.cocci
> =

> CC: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: kernel test robot <lkp@intel.com>
> ---
> =

> url:    https://github.com/0day-ci/linux/commits/Jerome-Pouiller/wfx-get-=
out-from-the-staging-area/20210315-212855
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.gi=
t b828324bba8f575fde487a91fec07303789dda8a
> =

>  bus_sdio.c |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> --- a/drivers/net/wireless/silabs/wfx/bus_sdio.c
> +++ b/drivers/net/wireless/silabs/wfx/bus_sdio.c
> @@ -132,7 +132,8 @@ static int wfx_sdio_irq_subscribe(void *
>                 flags =3D IRQF_TRIGGER_HIGH;
>         flags |=3D IRQF_ONESHOT;
>         return devm_request_threaded_irq(&bus->func->dev, bus->of_irq, NU=
LL,
> -                                        wfx_sdio_irq_handler_ext, flags,
> +                                        wfx_sdio_irq_handler_ext,
> +                                        flags | IRQF_ONESHOT,
>                                          "wfx", bus);
>  }
> =

> =


Obviously, "flags" always contains IRQF_ONESHOT. So, it is a false positive.


-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
