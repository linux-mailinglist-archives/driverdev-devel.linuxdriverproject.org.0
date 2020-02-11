Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB11158BDE
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 10:28:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52B0F8788E;
	Tue, 11 Feb 2020 09:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qOPkAvQ0TNpR; Tue, 11 Feb 2020 09:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80BD686D82;
	Tue, 11 Feb 2020 09:28:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 009B51BF340
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 09:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF0BF203BE
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 09:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMTo3D5+RP6n for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 09:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id C059720027
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 09:28:03 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: wY1vGb3L6tStC306pDIM1yeuoOvzxeXFqaNl9QZQ1El+ca3TWE9PVnw6wQAtI8kb8/JMP5ch5N
 2jbbvtCvPt/dwGGlqAv92oTSCpC1yYudxRkk7wu8RViI/b1+Qo+7mHrDFiBQRsX0+4jP+c75OV
 xsL2srTuqD951fH/Eq6y6TLqPS61t+G6QZRnWAQJGKSpaRNofdvdlbxK3cFe4otENpPQ5+1fwW
 kL0t2/Uxvq+r8Bkiy73tqSEv9FyOliw8ljXHIV5oQa9hl7fNJspMSEDuk88Cc/tGY5q86uv27Y
 +os=
X-IronPort-AV: E=Sophos;i="5.70,428,1574146800"; d="scan'208";a="64948113"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Feb 2020 02:28:03 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Feb 2020 02:28:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Feb 2020 02:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdUra4VxKZnSe8gw2q6wBp/gJTQthrf+GFGAN8wfJWlHerGfQp2PsipS44sSUGRUkfGYK/CwBT6vUji5ptaRIcjqua8eqVdJBQFuUxZgvaN4nKojaqATllm+U/gPtUmkliPIxi7GHdn0zSCUrcHpZ+6Q+hexELL+/Ez+Z5su9ndGVJE+12ODTFcYranRp1V4wcwLtJy7Gmse07V+3dGBx+5c/X8XamDvIrZ0NZEvVYXEgRRU9GlLuKlH/aqRvmDtrCJ1CErkxl64KA4d2AZaj0WxANrf/WPOlPrsccv64dYiZZHb6/TfQCXRhnHswH7prz4XKIjhxFFxpAKkEAsaHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aY7PYmvxEaagE/+gCFrxAiExanC15tNLLFFpGTWswlg=;
 b=NxBg5mdZLVCoLwVWuE+XP0lL8IQ1mHzaX0tjcOPwm17zWUM8rd2KjsA+Ih2doWrlFIEUc+P183qZ85jW+RhicxGc0/ibiE60rL/lVfuzZ1V25/oGESg6gqgcK0OJfOkEFiTh+Y4/6g6W4a81p7PE7nT3AWn12nSFjU5G+Mby3xWNhTFvh9Jop3mnyFKvnCO8M51Tt5nv9cNJWRcpmoiNCypeCie1wl0mh3PbkHIYum1ZLBt4bqaRBxa78XOS3Nv1XcIb7dncLsCzlOScAK85iXTUr2+vTiTo6mHgv1L2Siv3paWw0UzibAf9J9f2qUJ0v3IefLf+G+JFRnFiqhwsjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aY7PYmvxEaagE/+gCFrxAiExanC15tNLLFFpGTWswlg=;
 b=sP2wW/lMUKNR+y2n5Oh93ODu228C8QMpOlOt+KFj+0sa35vds1SoQUWicoSy8GYKHg4AM7WMHJ6RHpSNSuay7yQldcuSVozzhnEwWjc9qD+/kXlXqk3iPWEabXESSNcvG/+VRdkqDA36vd8jDW1xKrMU2h5DZeFaVMmKKdYWV+c=
Received: from DM6PR11MB3996.namprd11.prod.outlook.com (20.176.125.206) by
 DM6PR11MB2954.namprd11.prod.outlook.com (20.177.216.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.29; Tue, 11 Feb 2020 09:28:00 +0000
Received: from DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392]) by DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392%5]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 09:28:00 +0000
From: <Ajay.Kathat@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Thread-Topic: [PATCH 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Thread-Index: AQHV4EDxsHh/P/Va7E+9rDOtcLPc66gVjryAgACIVwA=
Date: Tue, 11 Feb 2020 09:28:00 +0000
Message-ID: <563331bc-b892-90e8-a8c2-69e9367527cd@microchip.com>
References: <20200211000652.4781-1-ajay.kathat@microchip.com>
 <20200211000652.4781-3-ajay.kathat@microchip.com>
 <20200211065101.GC1778@kadam>
In-Reply-To: <20200211065101.GC1778@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f1f3205-6181-4cd5-7caf-08d7aed4afd8
x-ms-traffictypediagnostic: DM6PR11MB2954:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2954C86FD0F380DFABE4D4C0E3180@DM6PR11MB2954.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(136003)(396003)(189003)(199004)(64756008)(31686004)(66446008)(66556008)(478600001)(66476007)(6506007)(53546011)(107886003)(4326008)(71200400001)(76116006)(91956017)(8936002)(6512007)(66946007)(54906003)(5660300002)(186003)(81156014)(81166006)(316002)(8676002)(4744005)(36756003)(2906002)(2616005)(6916009)(86362001)(31696002)(6486002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2954;
 H:DM6PR11MB3996.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MwBSKL++DFgdnfQ7pPkAZxBC4NQN7rls7qd7sqgZKBI6igf2dRDgCA4snEKkS01533zYDiRdk0lsQpwN2wAMKV2koKEINeImex7yMvVDieJlanYAdYALdFOndkSL4lIywpp78q6KvLDokzTw1Hd9obYJkcdMqM3SPtE3gmCblWBmpmtXetMyQkAdhprSU2reo4ucDbo9Eg6JehEbGhOHzxKbvIQpVZBEBG3hXHQlasKS1w537XzUnSk8lNAZwJspnDsu4PlTuepPQZtT9El+x6l+t+IocfOV6oQxxqTdZh7adUQErEvhdIL/oJxraIItZn7Ef6YCzbX9e06zoXIaXBGe8658zcRZPUGeH4hWJqd0ffuh82rXlfWZEWZRRf4egiVLQe4hf/q8mram+pA5+wFs6MrPgwPyZazosh2C4rNil5NYOpaarS3CdtkMbJSM
x-ms-exchange-antispam-messagedata: TY1PZORVBuvHtYbPP+pLfgq7aC8OMEr+SJE1+KlJuFSRruGoi+PeWEfVXwjJ5fl9fzGhyQmOTZ21IrxJSIosX1kCZF46nNWfaXP8S9sRO5QSqKZlOSU2R1IzSP3cDF9u4Pk0JdcS9xGXhj7wxR4f7w==
Content-ID: <9293884B59771A47AB3874C9D1C854FA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1f3205-6181-4cd5-7caf-08d7aed4afd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 09:28:00.1515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RsvQcox74jfXpcrOqQgL2a119G4DFc6Y8W3CqhRQ+JJt+0a8W/vdN5u1gaRvcIgYjhA9UtjjyBPE/zxeNCL0+Y8hP9VE6O/WV/92tmQ46lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2954
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On 11/02/20 12:21 pm, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, Feb 10, 2020 at 06:36:01PM +0000, Ajay.Kathat@microchip.com wrote:
>> +     if (sta_ch == WILC_INVALID_CHANNEL)
>> +             return;
>>
>>       while (index < len) {
> 
> This range checking was there in the original code, but it's not
> correct.  index and len are in terms of bytes so we know that we can
> read one byte from &buf[index] but we are reading a wilc_attr_entry
> struct which is larger than a type.  The struct is actually flexibly
> sized so this should be something like:
> 
>         while (index + sizeof(struct wilc_attr_entry) <= len) {
>                 e = (struct wilc_attr_entry *)&buf[index];
>                 if (index + sizeof(struct wilc_attr_entry) +
>                     le16_to_cpu(e->attr_len) > len)
>                         break;
> 

Agree. I will correct the 'while' loop condition and submit the v2 patch
series.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
