Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E7913575
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA63486A27;
	Fri,  3 May 2019 22:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LylHSbYKytwT; Fri,  3 May 2019 22:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E00486A54;
	Fri,  3 May 2019 22:24:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A07DC1BF3D2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9AA2023086
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MEkhZ3+2DLcJ for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:24:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780077.outbound.protection.outlook.com [40.107.78.77])
 by silver.osuosl.org (Postfix) with ESMTPS id D98262274B
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AGqaQvTQe3lvycONHuE9iC/lGtNj+/edaDzUwyrA2TM=;
 b=oI21uM202DECY86FCZGAZUUIVO2RlkRZu4szlZiHQie1DWhefvJ0JKp4w6KsU272CRhTrCigx/Y4jDPbCRvGWtTLHv9Yq/fbFJF2WuSivPjeFd7J6ftjqCAmkBaKpOlf+npM9PtlYQvDUisLlLfc8v5T1ng0u12yqc0pyceNpj4=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5664.namprd02.prod.outlook.com (20.177.251.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 22:24:01 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1856.008; Fri, 3 May 2019
 22:24:01 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: RFC: kpc2000 driver naming
Thread-Topic: RFC: kpc2000 driver naming
Thread-Index: AdUB936iCPFpkmoFTkWER62B1hfUBw==
Date: Fri, 3 May 2019 22:24:00 +0000
Message-ID: <SN6PR02MB4016C279A0BBC406734A06D8EE350@SN6PR02MB4016.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:1c1e:e54f:8af5:e89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0310c6dc-e227-4f9b-198b-08d6d0160aff
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB5664; 
x-ms-traffictypediagnostic: SN6PR02MB5664:
x-microsoft-antispam-prvs: <SN6PR02MB566403BE3FAF1272784C78CAEE350@SN6PR02MB5664.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(346002)(396003)(39850400004)(189003)(199004)(8676002)(86362001)(8936002)(1730700003)(81166006)(81156014)(6916009)(7736002)(186003)(316002)(66476007)(33656002)(66556008)(64756008)(76116006)(66446008)(66946007)(2906002)(5660300002)(71200400001)(68736007)(71190400001)(52536014)(73956011)(2351001)(6116002)(476003)(6506007)(14454004)(4326008)(486006)(102836004)(74316002)(7696005)(99286004)(7116003)(5640700003)(6436002)(46003)(25786009)(2501003)(305945005)(14444005)(256004)(9686003)(478600001)(53936002)(55016002)(72206003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5664;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t243hlbgMjuebqRm0ATXcZZOaW6VDOj7Z9iDc0qhcMKk83OnKqFfFww7yoYslkOPh90EN6Al3vU32rvPkBEygLkxy7m5kVUbl9qboNWm+ccm0Kl/AoJxwy/pMVSEEA+I2jclaIH8uQsIC2GjZimYJzhlnELwxHyjdgSmFcMUSD4vh7dSb3Y//dvmJqU5S39DtrjZ0oAWMAxnFHsnItM0CFajpaI4sNbpxwuc2BoDLutp4bB6b15YhGVJDipIpY2oqcCoWpQQPecHXT1IEn5u6VLSAcV9Gvkay13/ExnBKqTvy4Ls/CVvvUnFhmmDPBMluAIOckynFGACDn9fXTr6nfQ5EjQyp/to1x0YiBOJ6AFBA1YprxXDsarEWWhCMfbaTmZ62rnFyVArB8FC2mQiYQrbdHM0NUkIv+EIBfPZsM8=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0310c6dc-e227-4f9b-198b-08d6d0160aff
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 22:24:01.0241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5664
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
Cc: "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

Recently Greg KH posted the first set of drivers for our PCIe device (kpc2000) and shortly after that I posted the kpc2000_dma driver.   I was wondering about naming / structure standards in the Linux kernel.
First, a real quick background on these devices:  Daktronics makes a PCIe card with an FPGA on it to drive our LED displays (and other processing tasks).  Inside the FPGA, we use something similar to AXI-4 to divide the PCIe BAR register space [1] into separate "IP cores".  The kpc2000 driver is responsible for probing the PCIe device, doing some basic setup (mapping the BAR, setting up an IRQ, PCIe configuration, etc) and then enumerating these "cores".  Enumeration of the cores is facilitated by the "board info" core that is always at the beginning of the BAR and has a defined format.   Most of the cores are controlled entirely by userspace - the driver will add a UIO sub device for each one which userspace uses to control FPGA registers.   Only 3 core types are handled by drivers: DMA, I2C, SPI.  These are IP cores inside the FPGA that (in the case of i2c and spi) interact with other physical devices on the PCIe card.
Currently, we only have the one PCIe device (the "P2K" card) but we have more on our roadmap (one we've been calling "p3k" internally).   I'm 99% confident that the I2C and SPI cores will be exactly the same on the new FPGA design.   I'm 80% confident that the DMA engines themselves will be exactly the same on the new FPGA design.   The next card PCIe driver will quite likely be separate from the kpc2000 driver because how bitstreams are stored / loaded / configured is changing due to using a newer FPGA.  There will likely be common code between the two.

Now on to my actual questions: Once the drivers are "good enough" to be moved outside of staging, I'm wondering where the drivers will end up and what their names will/should be.
Since the I2C and SPI drivers are single-file, I'm guessing they're going to move to drivers/i2c/busses/i2c-dak/ and drivers/spi/spi-dak/, respectively.  I tweaked the names, since "i2c-dak" and "spi-dak" make more sense to me than "kpc_i2c" and "kpc_spi".
So that leaves the DMA and main PCIe drivers.  Where do those end up in the tree?   Would "dak-dma" and "dak-p2k" (and eventually "dak-p3k") make more sense as names for those drivers?

The final question relates to how Kconfig entries are setup.   The I2C, SPI, and DMA drivers could be "selected" on their own (even if the "dak-p2k" and "dak-p3k" drivers aren't selected), but that doesn't make much sense because they'd never get used in that configuration.  Conversely, if you select the "dak-p2k" driver, the I2C, SPI, and DMA drivers better get selected too, otherwise the device won't function correctly.  From what I can tell with Kconfig, if A depends on B, you can't even see (let alone select) A without already selecting B.
Right now, the Kconfig entries are setup like this (using the current names, not the new ones presented above):
	KPC2000_DMA depends on KPC2000 (this compiles the kpc2000_dma driver)
	KPC2000_I2C depends on KPC2000 && I2C (this compiles the kpc2000_i2c driver)
	KPC2000_SPI depends on KPC2000 && SPI (this compiles the kpc2000_spi driver)
	KPC2000_CORE depends on  KPC2000
	KPC2000 depends on PCI (this compiles the kpc2000 driver)
Greg, what is the purpose of the KPC2000_CORE config option?  Nothing (that I see) depends on it, and it doesn't cause any code to get compiled.
I would have thought something like this makes more sense [2]:
	KPC2000_DMA depends nothing
	KPC2000_I2C depends on I2C
	KPC2000_SPI depends on SPI
	KPC2000 depends on PCI && KPC2000_DMA && KPC2000_I2C && KPC2000_SPI
Which way is "better"?  Does it even matter which way it's setup?

[1] Technically, there are two BARs.   The first one is primarily registers for the DMA engines.  The second one is dedicated to our IP cores.
[2] Using the new naming, and taking the p3k future into account:
	DAK_DMA depends on nothing 
	DAK_I2C depends on I2C
	DAK_SPI depends on SPI
	DAK_P2K depends on PCI && DAK_DMA && DAK_I2C && DAK_SPI
	DAK_P3K depends on PCI && DAK_DMA && DAK_I2C && DAK_SPI

Thanks,
Matt Sickler

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
