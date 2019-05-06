Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A6D150C7
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 17:58:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70BD9868F4;
	Mon,  6 May 2019 15:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Goegzg47CGoe; Mon,  6 May 2019 15:57:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FB1285EF9;
	Mon,  6 May 2019 15:57:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6A01BF8C7
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BCD085D4C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGH7nuRKQdJL for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 15:57:54 +0000 (UTC)
X-Greylist: delayed 00:14:19 by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760059.outbound.protection.outlook.com [40.107.76.59])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42842855CB
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 15:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2xoeGwmnfQltGYQTDi+qOtLYS8rzyJ/jZfXouNDyuHs=;
 b=XAEn/eZPKsqpm6Kw20e1qzTZejBRQVKxSNOZ3EsHRjt/V2yTG1VyBmxbBQDJa5qUhfmgh8iuV3HhhtdjyKMu0xSQCCzMKbi7ADTmjeW2rhg0Z4DlYOeSVPjOtQJ/LoYlTL+oer62kpzdeiBuSxFZDrYkVcFZ/m6Rnb72P1zs8qE=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4958.namprd02.prod.outlook.com (52.135.116.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 14:38:16 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 14:38:16 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
Subject: RE: RFC: kpc2000 driver naming
Thread-Topic: RFC: kpc2000 driver naming
Thread-Index: AdUB936iCPFpkmoFTkWER62B1hfUBwAYWleAAE0KL8AAEa9fgAAQ2hAw
Date: Mon, 6 May 2019 14:38:16 +0000
Message-ID: <SN6PR02MB40162960AA3990F37CC0F885EE300@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <SN6PR02MB4016C279A0BBC406734A06D8EE350@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190504090815.GF13840@kroah.com>
 <SN6PR02MB4016E7E37044C3C47C3D1AF4EE370@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190506062031.GA9557@kroah.com>
In-Reply-To: <20190506062031.GA9557@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:93b2:cfcb:c55f:f78c]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a34dffe-5ee4-4938-7c63-08d6d2307a2e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB4958; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4958:|SN6PR02MB4958:|SN6PR02MB4958:|SN6PR02MB4958:
x-microsoft-antispam-prvs: <SN6PR02MB49589FAEC8AB4D7EF17800B3EE300@SN6PR02MB4958.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(346002)(376002)(396003)(136003)(366004)(199004)(13464003)(189003)(8676002)(81156014)(81166006)(68736007)(71190400001)(86362001)(53936002)(4326008)(102836004)(76176011)(8936002)(7696005)(6506007)(11346002)(446003)(72206003)(256004)(6116002)(25786009)(476003)(14454004)(478600001)(6916009)(46003)(486006)(5660300002)(305945005)(66946007)(73956011)(76116006)(66476007)(74316002)(9686003)(71200400001)(2906002)(99286004)(6436002)(6246003)(186003)(316002)(229853002)(52536014)(64756008)(33656002)(66556008)(66446008)(7736002)(55016002)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4958;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WmRGPLI3GR9iMaf0Fidu043FYKcJu/2CBd3WLADekdfpem3ILJHwDVpeTKv9AavlVkgCuZXGlNunS0I0voVBNcs/0dEcNi0bjN4/nzzjrxZZrME2TYjGVqPefeWyihGtcM7hfTRanyVUcDT6OtDrOAgCn5auSri4asHFlAlIxz2AQIFtTzLmTmSmiCMkG75Jmsp8bulDpnEpPcYC0RDTIs7zROMQ7oABzzVqv0TsJ99Cw+sX9mabbUxghceVuDJz/GJ5ExNSV+WMZm2xHlpmLRJdNj8a8V3GH80Q4MIoC1Qa4YVjCWpJ8HnzlDagWiT1CWohDu/9xAlfJr8OQtI/gm44JBPp/2kXWXfl0ZnMNV9CxL3hlUszBW4hqDWNzOJ1kqE7rKMWhC9sE2vGmVpKatO740TXsDO7Y/0G51jmVGw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a34dffe-5ee4-4938-7c63-08d6d2307a2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 14:38:16.8162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4958
X-OriginatorOrg: daktronics.com
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
>On Sun, May 05, 2019 at 10:14:17PM +0000, Matt Sickler wrote:
>> The I2C and SPI drivers don't depend on anything other than the I2C
>> and SPI subsystems.  Actually, they might be depending on the kp2000
>> driver having the PCIe registers mapped into kernel space instead of doing
>> that themselves.
>> I'm not sure if that's the correct thing to do or not, so that might
>> be something to look closely at with all these drivers.
>
>Are all of these drivers needed for this hardware to work?  Should they even
>be separate drivers or should they all be mushed into one?  Can anyone do
>anything useful with just one of them?
>
>> Yes, all 4 drivers are required for proper functioning of the card.
>> SPI is used to reprogram the flash chips that store the FPGA
>> bitstream.  I2C is used for monitoring and programming clock
>> generators.  DMA is required for some parts of other cores.
>
>So should we just merge this into one driver at link time?  That would make
>more sense, right?

Yes.  All the drivers are required for the hardware to work.
In some sense, they "could" be used independently, but most likely only within
Daktronics hardware.  I guess if someone else had an FPGA design that needed a
SPI controller, they could reuse our driver as long as their FPGA implemented
a compatible SPI controller.

One thing I would be concerned with would be future FPGA designs that need to
mix-and-match.
For example (using new names), today we have the P2K card which uses the dak-p2k
main driver, and dak-i2c, dak-spi, and dak-dma "sub-drivers".
Perhaps the next generation hardware would need to use a new dak-p3k main driver
but can reuse the dak-i2c and dak-dma sub-drivers.  And maybe it needs a new
dak-spi-v2 driver (because something in the hardware changed in an incompatible
way).  This is all hypothetical though - it could range from complete driver
reuse to needing all new drivers for everything - we won't know for sure until
the new hardware designs ramp up in the next 6-12 months.

If there's a way to do link-time trickery to get all 4 drivers compiled into
one .ko, I'd be fine with that.  I do think it's a good idea to keep them at
least slightly separated to facilitate that mix-and-match scenario as well as
just ease of maintaining the code.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
