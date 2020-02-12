Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBC115A432
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 10:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECBFB20773;
	Wed, 12 Feb 2020 09:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZWYbnFZCueP; Wed, 12 Feb 2020 09:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7048D20553;
	Wed, 12 Feb 2020 09:04:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE2CD1BF336
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 09:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF4B085A56
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 09:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5EXWli3_6MTt for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 09:04:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1A6084C33
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 09:04:09 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: zWwK8CpJNTU35WPmT1l71V0mavI7ABmHs7NuS+cTcHnrCOpbqMdZBHe8EBI2jhG0VazTv/FaEF
 9l158qf49kPe1NMfAJ/Q+H46AoDZDR7mmy0fOBvxbZUq6rvFkw7flKwhjWsdV+2uUYdoVA9FvC
 /FNrc7QhbZkcSDOa0fUl9H9et3+4FAVMvk0LJBBKv9+sHLWfjCPt78m/Q4vfcj+VcVH/yx9C6a
 pE05oQ6HYoHxEaXYxuGUf6A6OO0lDwdd8HceHw7vLlC5kvnf/0PtvBmrdSJaH0G9dPZUP90GrE
 sGE=
X-IronPort-AV: E=Sophos;i="5.70,428,1574146800"; d="scan'208";a="65630158"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Feb 2020 02:04:08 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Feb 2020 02:04:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 12 Feb 2020 02:04:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEHegHh7NKbCsZWUasnahDKB6VtbZhWcuKVbF0OUzeiO1mUOA1Zvo71xtq8RjjXw7fGQExP9W/8bONK57qPvY9MOeOs+8XkKXAfPsfXM2hMV/PifjH5kIaS6O34vL1WSMKlBFuopyvCpgkknXML2mUYURQ1zevet0iJM8iEY3SrCwPnyKs8J5+gTL7GBLvuppm0N+mvwrMY6o2JpLAF4kw3l/O6aK7ymNXnGNcJMO0nzOV4Rv8FHOR7934O40wOkENWgMbqdus2/FkNCAIUrhjXMTbednUFqk5FusDzccbTjm4PqrLQlpU3ikywSP2LN5jyCQcG4VZ//qRi876dEgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45OgJvYe5NDOVXkCYpenmlJtxwp2tdgpaWGZpL97p6g=;
 b=gzPZ1TAe/e6beQl4UseawPazaQH8+UCevs74yshh5E3RGa7UoQeFkYkDIIFvGBBbedYx8EUBTbYTmrzaD/jGx4havJ5tsvCttCi+r8gLVKWDetPQnloGQjMJZsbmOvLVEmG3ZddB1j1ScRKAgjvi1WXUyEyBiN4lc+oBZcd91sZgIvRz3p4o6jzLGOx45zr1bF63JlbZoERHmMa7q+mZte4QEZ+xGtnCc5Ls/XfF5G3V3e6kxplDbZMbJPfqx+EqEYWydNhNAVwVK7AExkkrcts3v1wsTm3HCx2432xllqZUR8sfXsG0AqRx1M7yljEne83vfD7vcA4tOUkcr+O4PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45OgJvYe5NDOVXkCYpenmlJtxwp2tdgpaWGZpL97p6g=;
 b=hnWfPCzpBuQaVeK6vMKFUxO54tPBCKn/D7g5rn/OfC47E2hN6EemhwGgMFhZCZupPbA6egS+mdDiKsRUwehKqX3drwh5JZdVg84Nx36F0nz6oYlFOc1SP2Dqq0VlRpEqNlImVpW+z71JMLAx5+4FfHKp8HLklCsQF0D2wBbjDck=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1971.namprd11.prod.outlook.com (10.175.97.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.28; Wed, 12 Feb 2020 09:04:05 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 09:04:05 +0000
From: <Ajay.Kathat@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Thread-Topic: [PATCH v2 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Thread-Index: AQHV4MGgpY9wAVPMCES4mYM6Bflaa6gWXqyAgAFDDIA=
Date: Wed, 12 Feb 2020 09:04:05 +0000
Message-ID: <6f33e47b-2eb1-b25c-49c4-a711c1c067fa@microchip.com>
References: <20200211152802.6096-1-ajay.kathat@microchip.com>
 <20200211152802.6096-3-ajay.kathat@microchip.com>
 <20200211191851.GA1959566@kroah.com>
In-Reply-To: <20200211191851.GA1959566@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4014ce76-f96e-4e4b-4d0f-08d7af9a830f
x-ms-traffictypediagnostic: BN6PR11MB1971:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB197105C1A29204A4709A535AE31B0@BN6PR11MB1971.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(396003)(39860400002)(376002)(136003)(189003)(199004)(6916009)(71200400001)(66476007)(76116006)(66446008)(64756008)(5660300002)(107886003)(66556008)(91956017)(66946007)(31686004)(186003)(53546011)(4744005)(6506007)(26005)(6512007)(316002)(31696002)(8676002)(54906003)(2616005)(6486002)(81156014)(81166006)(36756003)(4326008)(478600001)(86362001)(8936002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1971;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Edr8Y6nXBYwpSvqNrNxVeTASKMb6TbuWcn4lCaVTZOqQXErDjaUV1alH+iHgWupIPYmWZcAymq6LC/4tkK2BrHXwA3xW3T/95zhgkfvBlp396HlxdDWEZqW4NBRuw2sLEfBlzPbWvYNrPEm+bxA1VKuZmlQz42We9lX/m/d2B80JrMYld6yk2t/PG4ZmUDCkzUn5UF1HMZdNSlBsvE0Up1pueSXHwOhWbHA7LEDonRXdFcAdLX39OGixVs7Ky6P9+k0bJlUH50etskVpUfdik+TkC1cnPx3ckV+HQmkM+iIc0XQRXzqNHLpkNWfY8wQJ2ymBT+IY/AqOOqBrfK20Fwm93IgOGHkEFUP+f4If+zTUl9H3S9g2B7Qu4U2IvthTZaWv6vVQ7R0WDijrCiYotqc2DxAwNtym9kq/wSxdhB+EwgUur+Sh/McHX7JTbOey
x-ms-exchange-antispam-messagedata: KCVubUW3R9zGYkyttG5j7uyION2wnNbSfszh31SMQ2VwGQoWTCrvrEFd0OSQxm7SJAXJhPatv56nF42FhJJAv397oxUaVehTktrEDS0nmHL9yESy1shS5+F/f0XaFbJtsEZ1V79tI4qBARVHfyeGLA==
Content-ID: <4F5AD3081F61104B8392EF0ECE718108@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4014ce76-f96e-4e4b-4d0f-08d7af9a830f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 09:04:05.3597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MEXMLPcFUAmHsMFgrEryI9szjIxwwgOl/oPu3QuOPnwnM58rI3WKIVa9VZ3cGXzhdB7rhWFz8tTlB/p09f78EJB2TDMHzdFPxyge/iOUIDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1971
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
Cc: devel@driverdev.osuosl.org, johannes@sipsolutions.net,
 linux-wireless@vger.kernel.org, Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On 12/02/20 12:48 am, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Tue, Feb 11, 2020 at 09:57:10AM +0000, Ajay.Kathat@microchip.com wrote:
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> Refactor handling of P2P specific action frames. Make use of 'struct' to
>> handle the P2P frames instead of manipulating using 'buf' pointer.
>>
>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>> ---
>>  v2: corrected 'while' condition by adding 'struct' size as suggested by Dan.
> 
> This patch doesn't apply to my tree :(
> 

Ok. Please ignore this patch. I will rebase and send this patch again.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
