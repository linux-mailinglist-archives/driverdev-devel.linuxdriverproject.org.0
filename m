Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D30B7E32B
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 21:14:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D549E867B9;
	Thu,  1 Aug 2019 19:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mW7GwTO2aQTX; Thu,  1 Aug 2019 19:14:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27C3886559;
	Thu,  1 Aug 2019 19:14:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2ADC01BF83C
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 19:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2768C83FA2
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 19:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2X90HwexcMl for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 19:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4004C8124A
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 19:14:35 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: SrzF+f8gJLOM6L9PAMWjYVDwWjiGftE3sWPRXJyxBFegUD+ANspfb/e/CBe+HZXCRHp01E+UzU
 7bQQc3auiSba4jD77o8HjO+2N1X8V4VNRQJSsWeRc75MGAjjSKWw9rQbJlgZZRSjf7VbWOrycS
 tjFOiTioI97h5MWGykhQUSDwqBU6AAr9XTHiWndKFCIm1vdZDqgoCRN1m3H2G31NtSsNEZFjJM
 /ZMb5tcoqYywih3vayoUoJCR5eInt6e6OmASarrwXRgPODi/kR5Vzhx3t94pPeYwzvtbevI5pN
 C8E=
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="45033934"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Aug 2019 12:14:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 12:14:34 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 12:14:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jigSCSCo0O1pMWk1RUExffm9Z1Z1AjeXWvtiUpCvYQ4K2tIH9xv2Z4TYeEWwAy/o61/YEqpFS6nQihf+N6uJ+6Jx+TzxfHT9PCxy+DOqwlqwuaBMCqBSMozU4vin1SESNaE4naxt0a4YWzaQpOOXePSjpPmJqXiTkUvYVy08+pgVDvsstDfjSC7a07Wpw+Tp3y5w+VWozxXGPu4wnm54bph4QoEFlwuQFFJRXX69BMDOYdanvGgnUuvNnctDNWBWQKQ9gOxtOvNpErN8bdbkS2epbiSNZq2GnGceejeTA3VF7Ujakr7tNqxosIgZyU1f7z/gpn5MZps3i+SgDUQgmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EugtswXZOAqnM1B74NXm/rxvPVk+EnOTGK46VZk0RcY=;
 b=i6Ryqchws554yyCrSiUHIGSJ/B7kjbYYRCUDUQWiJZfsh7cxwLaiQ+ngdCM1ODnr6Fhm0IkXBvqzMtjgH4wFoh76i1TkGqN2nyo03138FDUpnkfXlP4gVPzsmrwdcx+nPkI9wyl3SFZtraT5boejVDPxf0nagk76skAIP051e0pT/xYfXSnK/l73nAZdyCWncFSAOTBL5PHf4WeHDWBki8pvQLKr2PDfD0pTGRpGf/etc5pWznuMllfmPmkxmLdd0pzHDOf0Z9z12eq2fOD3QjCswsLsj/pTpWUtOkrM+SIXHWLLVtyJIn3wAo0gR2TMdL703X4X3dmAM5pBdgqU4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EugtswXZOAqnM1B74NXm/rxvPVk+EnOTGK46VZk0RcY=;
 b=tfnfOgiCjKXZuyrbfETpf+NrQarqP/1Mb5RCM0pW8cDcxBiP/0USen8SwD1Kl4ST59s4fzqWnlXVnEi5/+S8TXCiT2kVzGpW3FXzgB/wNYAbxmzKpXrCSXGaTzNYrxRNtqLozZToEKRGIRhw5rQ92C+o+UvShXN7b7ootq/VCwo=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1470.namprd11.prod.outlook.com (10.172.55.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Thu, 1 Aug 2019 19:14:32 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336%2]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 19:14:32 +0000
From: <Adham.Abozaeid@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wilc1000: merge drv_handle and operation_mode
 wids
Thread-Topic: [PATCH] staging: wilc1000: merge drv_handle and operation_mode
 wids
Thread-Index: AQHVR+Kuc+YMxhqSE0KT1LYAs8ywDqbmgEiAgAAqIIA=
Date: Thu, 1 Aug 2019 19:14:32 +0000
Message-ID: <b6b8fbd6-767f-3978-20fb-26e5c077672f@microchip.com>
References: <20190731205245.6590-1-adham.abozaeid@microchip.com>
 <20190801164155.GA14688@kroah.com>
In-Reply-To: <20190801164155.GA14688@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
x-clientproxiedby: BYAPR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:40::36) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 889a086d-3a83-4305-fa46-08d716b47bcf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1470; 
x-ms-traffictypediagnostic: MWHPR11MB1470:
x-microsoft-antispam-prvs: <MWHPR11MB14701D164B05B4B697AA80748DDE0@MWHPR11MB1470.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(39860400002)(346002)(376002)(199004)(189003)(6512007)(8936002)(256004)(6116002)(3846002)(2906002)(36756003)(65956001)(64126003)(11346002)(26005)(66066001)(446003)(476003)(65806001)(14444005)(186003)(31686004)(478600001)(486006)(2616005)(25786009)(4744005)(86362001)(31696002)(6916009)(5660300002)(14454004)(71200400001)(305945005)(7736002)(71190400001)(53936002)(229853002)(66946007)(66446008)(64756008)(6436002)(6486002)(66556008)(99286004)(4326008)(66476007)(76176011)(52116002)(102836004)(386003)(54906003)(6506007)(6246003)(68736007)(107886003)(8676002)(316002)(81166006)(58126008)(53546011)(65826007)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1470;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GMywWeSbbfxM0Sv+kLvvbe75oGyFSk/Cx9KuTz/esRw+vXqaeFuIotoE5IXY4q6o4MuwpP+gemQvwhWbKgOu2/8gEdZvq/QycA203HuVAELiVOJezZZbvff5atVurwr3kXhU6CpW4mCly0k3ujHr4Biy4a/+Z9vnCAzjWaVd68gVmuXEOi+kA7k4UgG7hlwSN0hDJ5Y/QqgO5IV2uklRVqRS+2YoamWg2gbOHUJWGPmpWbgTiby/LliuYrlIiXkmSJXl/uH/aISoNwN4bs8DcdI0vlHuvL25tQYeEpfR1gCV0p8+stm+rSlV5YuIE2+5Qa2i3xZ4lwfTnXBOglGTnpInvwd9O58fzBtnqfIUBis0qvXKj1zzAdBCA7E1SOwnD/vShZSxxOtT7OHo2RCysGcDnS8DRCYMaEhmGPHhf4c=
Content-ID: <93C2D0ECBF88AE4ABB67C4C4F6B6C4D5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 889a086d-3a83-4305-fa46-08d716b47bcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 19:14:32.6585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adham.abozaeid@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1470
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
 linux-wireless@vger.kernel.org, Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg

On 8/1/19 9:41 AM, Greg KH wrote:
> External E-Mail
>
>
> On Wed, Jul 31, 2019 at 08:58:19PM +0000, Adham.Abozaeid@microchip.com wrote:
> This patch causes the following build error:
> drivers/staging/wilc1000/wilc_hif.c: In function wilc_deinit:
> drivers/staging/wilc1000/wilc_hif.c:1610:2: error: implicit declaration of function wilc_set_wfi_drv_handler [-Werror=implicit-function-declaration]
>  1610 |  wilc_set_wfi_drv_handler(vif, 0, 0, 0);
>       |  ^~~~~~~~~~~~~~~~~~~~~~~~
>
> Always test build your patches...
>
Apologies for that!
I'll fix the error and send a new version with both patches clubbed in a patch series.

Thanks,
Adham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
