Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F115D142DA
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 00:28:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C7ED86373;
	Sun,  5 May 2019 22:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ews-TeuYhbOR; Sun,  5 May 2019 22:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2677585C13;
	Sun,  5 May 2019 22:28:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E4061BF48C
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 22:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 38CFB8733F
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 22:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7n5qGeDbqmb for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 22:28:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800079.outbound.protection.outlook.com [40.107.80.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 80B1686A9B
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 22:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnxBHHTBxQAn8j/EcpmBa1nHBUftOojmL7ECwGXHPX0=;
 b=lY1EOaYn95evIDbCTjfYpTLSv74H4IWBtKTG3YPIBPloPo+0GhSal/eXJ07xE4ULC+FiVxoOj25JKGduT5pVPOx91yvuBUY+CptkgWHxF1ehTGCMbS6IsFMLfqfS/WLlVYgEizqtUYALCcwfwMqAK4NLzvepIRXaR/FRdS8j4ns=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4927.namprd02.prod.outlook.com (52.135.116.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 22:14:17 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 22:14:17 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
Subject: RE: RFC: kpc2000 driver naming
Thread-Topic: RFC: kpc2000 driver naming
Thread-Index: AdUB936iCPFpkmoFTkWER62B1hfUBwAYWleAAE0KL8A=
Date: Sun, 5 May 2019 22:14:17 +0000
Message-ID: <SN6PR02MB4016E7E37044C3C47C3D1AF4EE370@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <SN6PR02MB4016C279A0BBC406734A06D8EE350@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190504090815.GF13840@kroah.com>
In-Reply-To: <20190504090815.GF13840@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9726091-32a6-45cb-d6db-08d6d1a70424
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB4927; 
x-ms-traffictypediagnostic: SN6PR02MB4927:
x-microsoft-antispam-prvs: <SN6PR02MB49275EF340D61D0A9A52F1D8EE370@SN6PR02MB4927.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(376002)(366004)(396003)(136003)(346002)(51914003)(13464003)(199004)(189003)(7696005)(72206003)(14454004)(45080400002)(478600001)(6246003)(26005)(99286004)(186003)(6506007)(256004)(71200400001)(74316002)(305945005)(71190400001)(5660300002)(86362001)(6436002)(229853002)(55016002)(9686003)(6916009)(6116002)(2906002)(66066001)(68736007)(76176011)(3846002)(73956011)(66946007)(476003)(102836004)(66476007)(66556008)(76116006)(66446008)(64756008)(33656002)(11346002)(446003)(486006)(7736002)(53936002)(52536014)(316002)(8936002)(4326008)(25786009)(8676002)(81156014)(81166006)(23180400001)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4927;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 79Kl2IDfi8j4GYB9OXS5DqIpJMGreW6IsI46pwHeV71eqoR4X/rx6VGaeYbOCB1YbFlP4EHCPg4UfUCPviLiZShD5ne7Rm60TKEgZZPsFFekkKEn1lFH4yuP8D2bDBVZyOKxrMhTVNYTqw6Lmsc3C/J5a+dB2rMfR2iX0qsDBB3/D0vPgTUXbea5MhlL5d1d/VeO65MDPYG8V0xpYUBT/CyeOrb9lxFUtd/RxevE2+t9ylhSptX6SVeliDkwr3X4KNsRWkKxHVR5grfiNTyZRwhRzZrBA73fBGUF2WnusslJT+KxzFZSeJk7FQAMFlUgPTfAgkEc69OadNHJ61Hcpm+oBIOi9H4Cc7JFeZGU48sZAbSrJMGXlQNDGHSMcGTmLs42dFcOsJzjEGM1pibVyTOraqvGl76IAasqp6qOirg=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9726091-32a6-45cb-d6db-08d6d1a70424
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 22:14:17.7589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4927
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


>-----Original Message-----
>From: 'gregkh@linuxfoundation.org' <gregkh@linuxfoundation.org>
>On Fri, May 03, 2019 at 10:24:00PM +0000, Matt Sickler wrote:
>> Hello,
>>
>> Recently Greg KH posted the first set of drivers for our PCIe device
>(kpc2000) and shortly after that I posted the kpc2000_dma driver.   I was
>wondering about naming / structure standards in the Linux kernel.
>> First, a real quick background on these devices:  Daktronics makes a PCIe
>card with an FPGA on it to drive our LED displays (and other processing tasks).
>Inside the FPGA, we use something similar to AXI-4 to divide the PCIe BAR
>register space [1] into separate "IP cores".  The kpc2000 driver is responsible
>for probing the PCIe device, doing some basic setup (mapping the BAR,
>setting up an IRQ, PCIe configuration, etc) and then enumerating these
>"cores".  Enumeration of the cores is facilitated by the "board info" core that is
>always at the beginning of the BAR and has a defined format.   Most of the
>cores are controlled entirely by userspace - the driver will add a UIO sub
>device for each one which userspace uses to control FPGA registers.   Only 3
>core types are handled by drivers: DMA, I2C, SPI.  These are IP cores inside
>the FPGA that (in the case of i2c and spi) interact with other physical devices
>on the PCIe card.
>> Currently, we only have the one PCIe device (the "P2K" card) but we have
>more on our roadmap (one we've been calling "p3k" internally).   I'm 99%
>confident that the I2C and SPI cores will be exactly the same on the new FPGA
>design.   I'm 80% confident that the DMA engines themselves will be exactly
>the same on the new FPGA design.   The next card PCIe driver will quite likely
>be separate from the kpc2000 driver because how bitstreams are stored /
>loaded / configured is changing due to using a newer FPGA.  There will likely
>be common code between the two.
>
>Please wrap your emails at a sane column, otherwise this is just a huge wall of
>text that is hard to read/understand.

We use Outlook and Office 365, so I figured the emails were going to be
formatted badly.  Just for clarity, are you saying I should hard wrap (insert
newlines myself) at an 80-column boundary?

>> Now on to my actual questions: Once the drivers are "good enough" to be
>moved outside of staging, I'm wondering where the drivers will end up and
>what their names will/should be.
>> Since the I2C and SPI drivers are single-file, I'm guessing they're going to
>move to drivers/i2c/busses/i2c-dak/ and drivers/spi/spi-dak/, respectively.  I
>tweaked the names, since "i2c-dak" and "spi-dak" make more sense to me
>than "kpc_i2c" and "kpc_spi".
>
>Feel free to rename them to whatever you want, I just randomly picked a
>name when I did the import of the drivers.
>
>> So that leaves the DMA and main PCIe drivers.  Where do those end up in
>the tree?   Would "dak-dma" and "dak-p2k" (and eventually "dak-p3k") make
>more sense as names for those drivers?
>
>Maybe, as long as it is a "unique" name, that's all that should matter.
>The subsystem maintainers of those areas might care more, but you can deal
>with that when you get closer to moving the code out of staging.
>
>> The final question relates to how Kconfig entries are setup.   The
>> I2C, SPI, and DMA drivers could be "selected" on their own (even if
>> the "dak-p2k" and "dak-p3k" drivers aren't selected), but that doesn't
>> make much sense because they'd never get used in that configuration.
>> Conversely, if you select the "dak-p2k" driver, the I2C, SPI, and DMA
>> drivers better get selected too, otherwise the device won't function
>> correctly.  From what I can tell with Kconfig, if A depends on B, you
>> can't even see (let alone select) A without already selecting B.
>> Right now, the Kconfig entries are setup like this (using the current names,
>not the new ones presented above):
>>       KPC2000_DMA depends on KPC2000 (this compiles the kpc2000_dma
>driver)
>>       KPC2000_I2C depends on KPC2000 && I2C (this compiles the kpc2000_i2c
>driver)
>>       KPC2000_SPI depends on KPC2000 && SPI (this compiles the kpc2000_spi
>driver)
>>       KPC2000_CORE depends on  KPC2000
>>       KPC2000 depends on PCI (this compiles the kpc2000 driver) Greg,
>> what is the purpose of the KPC2000_CORE config option?  Nothing (that I
>see) depends on it, and it doesn't cause any code to get compiled.
>
>I don't remember, I guess I thought that was a chunk of code the others all
>depended on being present?  If that's not the case, please send a patch to fix
>that up.

The I2C and SPI drivers don't depend on anything other than the I2C and SPI
subsystems.  Actually, they might be depending on the kp2000 driver having the
PCIe registers mapped into kernel space instead of doing that themselves.
I'm not sure if that's the correct thing to do or not, so that might be
something to look closely at with all these drivers.

>> I would have thought something like this makes more sense [2]:
>>       KPC2000_DMA depends nothing
>
>Not any dma drivers/core?

I don't think the DMA driver depends on anything special from other drivers or
the kernel proper.   Unfortunately, it doesn't use the DMA subsystem, since I
didn't know about it while I was writing the driver.

>
>>       KPC2000_I2C depends on I2C
>>       KPC2000_SPI depends on SPI
>>       KPC2000 depends on PCI && KPC2000_DMA && KPC2000_I2C &&
>> KPC2000_SPI
>
>It can't depend on them all, or does it?  If so, that's fine, I just got this totally
>backwards, sorry.

Yes, all 4 drivers are required for proper functioning of the card.  SPI is used
to reprogram the flash chips that store the FPGA bitstream.  I2C is used for
monitoring and programming clock generators.  DMA is required for some parts
of other cores.

>
>> Which way is "better"?  Does it even matter which way it's setup?
>
>It does matter, try to reflect what depends on what for the code and you
>should be fine.

Okay.  I'll work on getting some more patches posted this week.
Thanks for the feedback!

- Matt

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
