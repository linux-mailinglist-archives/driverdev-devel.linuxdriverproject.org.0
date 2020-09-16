Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5594C26C2A8
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 14:22:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 352FF86F8E;
	Wed, 16 Sep 2020 12:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uNcohNLFATkh; Wed, 16 Sep 2020 12:22:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A41D986F89;
	Wed, 16 Sep 2020 12:22:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A05BD1BF57C
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 12:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 80C3727236
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 12:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8MxdSQvv4gz for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 12:22:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2062.outbound.protection.outlook.com [40.107.92.62])
 by silver.osuosl.org (Postfix) with ESMTPS id F4055207A2
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 12:22:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxLZvgTmE1E1RLaMQwAprpwOdCOqUoKEH5NLQzJ6JibMCsATbtXiarYTKU2HqjOZ1mPjv1rRDF+YwAAHmaRHgrqmuj0xGadvEoh2ovCvpHa8OEux4QCmEEzFPur9Htjp0OPaEMA9s2s4sDikyWw8XkLyxBGeSHFYlDBzN1FAd+MKZ4Rt5ABWKD65s5FC1HGOMriq0zRXd0iRT0nCNpiBq0wwI6g+YHEo25U9cdGtDjX6sNaNNEjLef/PRBYCq09aF36FLg/FcFJAIpebhrM6mQtvu+S5YxIsZUCMTPJ+eGXRcToO1Ri83hjkErqlSb7OawzwCSL4h+z6SE0idjpmOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JmH9Wz8imxjwzf1kaGZypWoqt4KooDDmfKzPFbbxp6I=;
 b=KtyggLE1LDiWm6ZbxSRZpYY4ZsL+UtO4Tr6G5F0FOBJZi+b7NmVy2sO4IZtqaGdua4KTiAv+aHbj+2h5rmEVWzSNgYDkmSrKDLzm9xWU7yMlnhfMyESVLQ5Dpho0JkQd/8l6qtKi/V4El1N1CGeAnjtzDAQcAjOColDUTrfPo+LJ3Olw1feubSCCZGgAsclx3x/w/XO7M8XC3p8/v3UokT/4Ed71D4R5RrJ8m7CCEN824TYGi1tK3PPuvX/Klyi5v6nOu3NMWci6nUo7Yo/+f51nCNEdsJ7lbQJcv7DJlELluLCBTxZL3cQkTdmeMvxPzdueMo3ASCCMLm0DJo3OLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JmH9Wz8imxjwzf1kaGZypWoqt4KooDDmfKzPFbbxp6I=;
 b=P1khrP8ifSlhn0cSGrWR4wLapWSKGqUaV/LRgapnHEmMA+MTwOcpv9S8Tk0iGuijgNeNaKC2aCVgX5+mT+SmGmGja3PZgRR/uj3+czTOecTf0rMMI3cPsRkrmXYGcfIjEfgiLYP35o80VpYYJ0jK7yNKlsXxz2jLzVpHEflZevQ=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3359.namprd11.prod.outlook.com (2603:10b6:805:c5::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Wed, 16 Sep
 2020 12:22:10 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3370.019; Wed, 16 Sep 2020
 12:22:10 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: trix@redhat.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wfx: simplify virt_addr_valid call
Date: Wed, 16 Sep 2020 14:22:06 +0200
Message-ID: <3114902.a6trr6AKoC@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200916111159.GA923212@kroah.com>
References: <20200912144719.13929-1-trix@redhat.com>
 <20200916111159.GA923212@kroah.com>
X-ClientProxiedBy: SN1PR12CA0105.namprd12.prod.outlook.com
 (2603:10b6:802:21::40) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 SN1PR12CA0105.namprd12.prod.outlook.com (2603:10b6:802:21::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.14 via Frontend Transport; Wed, 16 Sep 2020 12:22:09 +0000
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3881a9ef-69b7-43ca-76df-08d85a3b22ac
X-MS-TrafficTypeDiagnostic: SN6PR11MB3359:
X-Microsoft-Antispam-PRVS: <SN6PR11MB335924B20ACD9356288A16A193210@SN6PR11MB3359.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:785;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TDAvPZZBEAUyAgVnDRzGpZflONqFqTIbvReOElDU/2qs7NwMBbIyGZVThF+5iHpx6iXxd+IIto+yd4etLJvj++gMeqbFEiTEIUicMVJH8ISztWnTpsNMtjJHm8u1g97S/o6VcT4FBLCH1lgXSG/6j86PUE3o87Pe8Sv1px/s62SdhLyEi/T7z+XZmbMTsH6teldFMNonRvnnaEAoSSndceO/Eq0+nImC0f89ZTPky3P0ymtBH1qfGP7N86pcA7ZH8oTnbs/DMghqbpmTaAmNA0dTZGr4IK3+SgLrwFA1KHw3avMTF+asTyscExq8vuIx+A+Rsdnu21CSVjuWzJ7os1SRQuEIsl0xZ+MaM1euheMaM6pcbnujDRvXWab+06Ljs2oxPg+bWtNvghAnPpVM3s/+4eFCXg3ARuH9YCnA0yw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(376002)(346002)(136003)(39850400004)(186003)(4326008)(16526019)(66476007)(66946007)(478600001)(6486002)(8936002)(86362001)(316002)(52116002)(6512007)(36916002)(9686003)(66574015)(66556008)(83380400001)(6916009)(8676002)(5660300002)(6506007)(6666004)(2906002)(33716001)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wSZl/4H69ZNUogUswu01mJIRGXUS8031eERVkJknC6IORlWlb6x7Iz0wLK/zuPT3ApSq5qYbAgKBuLemFGNLQ3NcjRbMyWm2c3NfWOhbU5+E0+DWkT0RzIAStmkcSU0pKKKrSBS9twgYGN1AZClLMMS6v9hw31GWDWGplTtnAzqtOx6DqQNadWvJq6IcBlNKDfeZRnUZl396dF5FB9ovEzlNNhnQOk/lldlJmF0jwrOkQmykiG3I7tsnD7+u/7m4PyoA14xVPSX+HiPHwfeeNftZzLSTGlbX0cIucIzZY/FrBQVsMFKd041QUyjKSgnpsPBnOnGq5ZqNR0utpuBCfjAVP6c+0ubFqoYK82SDRxvV+D19XB99TXpZGvleW9f8rD0WOZyGFdKx1nap75iOeX9VPx08MeR9er7oTBcN4L7R8HjRjb3CWQAOR3+blkWrp65PgpUemSjI0r4XKgfHv8FhiVMpIMYFB8vMY/LYb1EXUMao36imusMrSGjqLtbyTdvMwbBknfG/UzteJ2cG6s/sCzsPKRPQSQHsdrOPQ3ZxkQS4fE9IkH3YCr45HpTcUwsevd1hW+4ZSc67faDeWYbHbtVed7q1zOAw6jViQQFnAvbuWW/cldUC+KdeDS+7WxHEXWBtbDr+afDvJH7h6trA+9Pzz+LsbubOz2JRNc6UHFBBLS0qXPRgnaEeS1Fui82WhH39wfAzKwArsjiAPw==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3881a9ef-69b7-43ca-76df-08d85a3b22ac
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2020 12:22:10.7091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nzdVv5YOKFtpiMkcsWRBpv3GYyk5krMsI4vji59FvX2XIKuhewRBcI34x867QW01Q0vTZdCcShQAOngpv/m8Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3359
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 16 September 2020 13:11:59 CEST Greg KH wrote:
> On Sat, Sep 12, 2020 at 07:47:19AM -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> >
> > Reviewing sram_write_dma_safe(), there are two
> > identical calls to virt_addr_valid().  The second
> > call can be simplified by a comparison of variables
> > set from the first call.
> >
> > Signed-off-by: Tom Rix <trix@redhat.com>
> > ---
> >  drivers/staging/wfx/fwio.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
> > index 22d3b684f04f..c99adb0c99f1 100644
> > --- a/drivers/staging/wfx/fwio.c
> > +++ b/drivers/staging/wfx/fwio.c
> > @@ -94,7 +94,7 @@ static int sram_write_dma_safe(struct wfx_dev *wdev, =
u32 addr, const u8 *buf,
> >               tmp =3D buf;
> >       }
> >       ret =3D sram_buf_write(wdev, addr, tmp, len);
> > -     if (!virt_addr_valid(buf))
> > +     if (tmp !=3D buf)
> >               kfree(tmp);
> >       return ret;
> >  }
> =

> Jerome, any thoughts?

Looks correct.

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
