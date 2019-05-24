Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DB129E21
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 20:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6697831945;
	Fri, 24 May 2019 18:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Hnq4VF6Z7vE; Fri, 24 May 2019 18:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7491831931;
	Fri, 24 May 2019 18:34:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5895F1BF429
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 18:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 536F731923
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 18:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fz3Hn5Wfssz6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 18:34:04 +0000 (UTC)
X-Greylist: delayed 01:00:06 by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710066.outbound.protection.outlook.com [40.107.71.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E4DE2206D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 18:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/bu8J47Gr3ub7N66sutP8ZrFi1w9RVFUDmfCVzh9Cw=;
 b=jJPGBJ70eSxe2T/EkxVIk1mJYXeDP5ds1a7NMDSskayh4qiwvTZs0Bt0bMLoCh9cPsjCSf91DZF7eOdYf4bsQY+kyCykfG6AcjHGXYuuefhGuXkadc01YyQCiYczwLRBuIRlQP/iPMT5Cs9QuFxTpBzW9nDrx0coX6n+6sM+Bxo=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5582.namprd02.prod.outlook.com (20.177.251.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Fri, 24 May 2019 16:59:45 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f%5]) with mapi id 15.20.1922.018; Fri, 24 May 2019
 16:59:45 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jeremy Sowden <jeremy@azazel.net>
Subject: RE: [PATCH] staging: kpc2000: simplify nested conditionals that just
 return a boolean.
Thread-Topic: [PATCH] staging: kpc2000: simplify nested conditionals that just
 return a boolean.
Thread-Index: AQHVEir4EocybSVo5kObch+Iw8W//qZ6Uh6AgAAre6A=
Date: Fri, 24 May 2019 16:59:45 +0000
Message-ID: <SN6PR02MB4016F8CBB5E060FEE2C76467EE020@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190524121926.32487-1-jeremy@azazel.net>
 <20190524141607.GA3766@kroah.com>
In-Reply-To: <20190524141607.GA3766@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02064307-6a80-46eb-de12-08d6e069390d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB5582; 
x-ms-traffictypediagnostic: SN6PR02MB5582:
x-microsoft-antispam-prvs: <SN6PR02MB55829D3E4A56D0F439A6EC2FEE020@SN6PR02MB5582.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(366004)(199004)(189003)(13464003)(229853002)(305945005)(7736002)(316002)(486006)(86362001)(99286004)(66446008)(11346002)(446003)(6506007)(102836004)(66066001)(476003)(53936002)(110136005)(478600001)(7696005)(52536014)(76176011)(68736007)(76116006)(73956011)(6436002)(6246003)(71190400001)(66476007)(74316002)(66946007)(6116002)(8676002)(3846002)(4326008)(14454004)(66556008)(72206003)(64756008)(71200400001)(9686003)(81156014)(81166006)(8936002)(55016002)(2906002)(14444005)(256004)(25786009)(5660300002)(33656002)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5582;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NfFa9pMU41I6NyPJ7H01w56P91pE9DnBbdzgR2Zzym1q+mm+spxUAEc2nnbN87y3o8ZHlvxRx4AwoA80ka1ZeyLczQlnIuiGBtPIxVcy3bYh5ooR7btf5gNA8sD/e7m+wETBT1fCNipzWB8xCZ6OP9uBebPc4PquoremoYHwqKZv7cMxOr+dKnbHpdl7dOaWtEGAw4Vh/uDtuD2ir4wiLsOKNX9GAZGd/8FD/CeTBPF+rdbXCiGQsBl3A5l03PlTRNXBSowLkCtiA3spK6mSSIxb5kOCtBfxbpvvcttmZ2/ODAdXsUkTJqK4cE6YnojWxv7IfNR3BLNfxc963ACOPiQKu2tl3rfNHfo6rwAxH5PfxloN3d33JY/NmCQPso7z3f/tRl3GfkWUBFfRkEaEry5djP0TKGk1oFQOyiO2UE4=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02064307-6a80-46eb-de12-08d6e069390d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 16:59:45.2012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5582
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of Greg KH
>On Fri, May 24, 2019 at 01:19:26PM +0100, Jeremy Sowden wrote:
>> kp2000_check_uio_irq contained a pair of nested ifs which each evaluated
>> a bitwise operation.  If both operations yielded true, the function
>> returned 1; otherwise it returned 0.
>>
>> Replaced the whole thing with one return statement that evaluates the
>> combination of both bitwise operations.
>
>Does this really do the same thing?
>
>>
>> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
>> ---
>> This applies to staging-testing.
>>
>> I was in two minds whether to send this patch or something less terse:
>>
>> +     return (interrupt_active & irq_check_mask) &&
>> +            (interrupt_mask_inv & irq_check_mask);
>>
>>  drivers/staging/kpc2000/kpc2000/cell_probe.c | 10 ++++------
>>  1 file changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c
>b/drivers/staging/kpc2000/kpc2000/cell_probe.c
>> index f731a97c6cac..d10f695b6673 100644
>> --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
>> +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
>> @@ -240,12 +240,10 @@ int  kp2000_check_uio_irq(struct kp2000_device
>*pcard, u32 irq_num)
>>       u64 interrupt_mask_inv = ~readq(pcard->sysinfo_regs_base +
>REG_INTERRUPT_MASK);
>>       u64 irq_check_mask = (1 << irq_num);
>>
>> -     if (interrupt_active & irq_check_mask) { // if it's active (interrupt
>pending)
>> -             if (interrupt_mask_inv & irq_check_mask) {    // and if it's not masked
>off
>> -                     return 1;
>> -             }
>> -     }
>> -     return 0;
>> +     /*
>> +      * Is the IRQ active (interrupt pending) and not masked off?
>> +      */
>> +     return (interrupt_active & interrupt_mask_inv & irq_check_mask) != 0;
>
>I have no idea what these bits really are, but try the above with the
>following values:

interrupt_active indicates which IRQs are active/pending
0 = not pending
1 = pending

irq_check_mask has only a single bit set which is which IRQ we're testing for
Each one is "associated" with one of the UIO "cores" (see core_probe.c for how that association is discovered).

interrupt_mask_inv is a bitwise inversion of the HW register.  The HW register tells the HW which interrupts to ignore.
In the HW register:
0 = pass this IRQ up to the host.
1 = mask the IRQ
In interrupt_mask_inv:
0 = ignore this IRQ
1 = care about this IRQ

This code is checking 3 things:
- Is there an interrupt for this UIO core
- Is that interrupt signaled
- Is the interrupt not masked

Just in case it's not obvious yet: the mask/pending bits allow the HW to catch an interrupt but not signal the host until the interrupt is unmasked.  This allows interrupts that happen while the IRQ is masked to still be handled once the IRQ is un-masked. 

>        interrupt_active = BIT(0);
>        interrupt_mask_inv = BIT(1);
>        irq_check_mask = (BIT(1) | BIT(0));
>
>So in your new code you have:
>        BIT(0) & BIT(1) & (BIT(1) | BIT(0))
>which reduces to:
>        0 & (BIT(1) | BIT(0))
>which then reduces to:
>        0
>
>The original if statements will return 1.
>Your new one will return 0.
>
>You can't AND interrupt_active with interrupt_mask_inv like you did
>here, right?
>
>Or am I reading this all wrong?
>
>And what's wrong with the original code here?  What is complaining about
>it (other than the crazy comment style...)?

I would agree with Greg, if there's nothing complaining about the way the original code was written it should probably be left that way.  This new way seems overly tricky, even if it was proven to do the same thing.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
