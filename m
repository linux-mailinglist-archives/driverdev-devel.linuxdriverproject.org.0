Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 911831104C8
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 20:10:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0495586D92;
	Tue,  3 Dec 2019 19:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtUbAcwItYd1; Tue,  3 Dec 2019 19:10:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBD13858B5;
	Tue,  3 Dec 2019 19:10:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3568E1BF4DB
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 19:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 27B60877D1
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 19:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ii4NBTxUcvfJ for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 19:10:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B181877BF
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 19:10:29 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: Uq7ajqWOGUHPrAQ7M/qjHIfsdUzTFtZWbKl71e4GEfPi1Rt0egxS1ynmC/5avaTC4H+sEK177q
 q3G/s38VUHM2jxNL9FiEduYf3fb+Pp4K/lv0Po3wPYG6KNdofdH4SMKrsMYbG1zp341RaLHdFm
 h7YzEkmDhHbbgJgJsTWuTXCV/xeN4um3CUZNnwW/cbgZ+VC7/du8Zf494ipN5RjmxmY8nqQrjm
 xaHSXEot8fMMn7C5fdpFz1MOOuJF8afQxBNB/nzYpjZzgWZY3kplWcq8c+OzmWKDoPMo1OVeKx
 b9c=
X-IronPort-AV: E=Sophos;i="5.69,274,1571727600"; d="scan'208";a="60491022"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Dec 2019 12:10:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Dec 2019 12:10:28 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Dec 2019 12:10:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e6XbFXipzz5L4SPibi1Dlwu1035BnlcXuuFOCsMcOSt0+M81794i/nJl0WlxxxO76PES4dvb9EwZLgxaRqhJaSrV/0uFS8vatvpqlJNC7wpV9YwTR7jaKTBZXnvfN6NnaW9ETpA+bmrv3LBZeljAefZDk7r8rxiF8SuinZMIxTajw1wHYINYRPQLHEbsZIf0qr8d/rIQa0YyKy656gM2FeoFk0waJAekeHM/qykz6JPFpEDhy91M5T+imvwqOGwEqc7mt6Cas1tgMP/A6AaNxaf5tBfqqkTp1hdabxTxYPr6JFuM9TQuBeZuRtDE7sdZec4WSxPbCElDP4bSNaFtCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IeNXihDk0ESQajAswJovugxWKDNQruoJ+qaGUe1OO7Q=;
 b=DRCET6Se2iAlxLBz7TK5CchQczpAbnT/1NJTPlqRfmLtpK8aMKrG9xBv2idvPLLq5afWKeUGwOhiW85/NhrRPhtfX/4vw+umEwpnQh1qw5EzB0XkUBSq7g5PtcA4oGkKeIB/eA5WfbJs/qtYEspgROd5tYp/5+ELM2SzDakeQtj6R3CcOmgNytNfsrWo28KJ4Xguu280TcMuIUsbxJwbH6sZ+lQPPfc9F4JTHT0VRIhOm++MLW/HpLxe8TLxWgGhezQl5Lr2t1EaMQV6huLihWEzV2ZPMRhYXTxCqhpVd2/lCwRNb47ADi5FWNeUG/uKDOHFK9MFQ1mq1S8d7+7hSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IeNXihDk0ESQajAswJovugxWKDNQruoJ+qaGUe1OO7Q=;
 b=H/6oOf6OBZMXlR9uKfiLJCtQtneu8kEBEAeS452pyQRjQ3GV2tMVAiTLWuoU+uD8KZ+WkDSYqChbkH6t5b/TvFfGjfMGuXtjxpCGRTUzq7RzoU2ENWbIM0YoAk/FCP+vBtHvhz0E4F6/dPVODLH+4tpwSul9GyMGhK8sTmQy6lQ=
Received: from BY5PR11MB4306.namprd11.prod.outlook.com (52.132.252.145) by
 BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Tue, 3 Dec 2019 19:10:26 +0000
Received: from BY5PR11MB4306.namprd11.prod.outlook.com
 ([fe80::4e9:cd32:b915:5a4d]) by BY5PR11MB4306.namprd11.prod.outlook.com
 ([fe80::4e9:cd32:b915:5a4d%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 19:10:26 +0000
From: <Adham.Abozaeid@microchip.com>
To: <julian.calaby@gmail.com>
Subject: Re: [PATCH 1/4] staging: wilc1000: use runtime configuration for sdio
 oob interrupt
Thread-Topic: [PATCH 1/4] staging: wilc1000: use runtime configuration for
 sdio oob interrupt
Thread-Index: AQHVoXawsACklCtDcEijfkbhUigNzqebogeAgA01q4A=
Date: Tue, 3 Dec 2019 19:10:26 +0000
Message-ID: <a174f958-ddda-b57f-060b-ca4ed7c36ea1@microchip.com>
References: <20191122205153.30723-1-adham.abozaeid@microchip.com>
 <CAGRGNgV=zW8xpgHfj99m9LHN=dtUBH_36_kQSnnBOrd_6WpDoA@mail.gmail.com>
In-Reply-To: <CAGRGNgV=zW8xpgHfj99m9LHN=dtUBH_36_kQSnnBOrd_6WpDoA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
x-clientproxiedby: BYAPR08CA0070.namprd08.prod.outlook.com
 (2603:10b6:a03:117::47) To BY5PR11MB4306.namprd11.prod.outlook.com
 (2603:10b6:a03:1bb::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e88e6073-2900-4277-e92d-08d77824742b
x-ms-traffictypediagnostic: BY5PR11MB4497:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4497CBA1BEF6E93CACDCB6B98D420@BY5PR11MB4497.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(136003)(396003)(366004)(189003)(199004)(58126008)(386003)(25786009)(6506007)(256004)(14444005)(6916009)(53546011)(102836004)(4326008)(6436002)(186003)(305945005)(6512007)(107886003)(7736002)(4744005)(86362001)(6246003)(52116002)(76176011)(71200400001)(71190400001)(99286004)(316002)(31686004)(54906003)(26005)(3846002)(65956001)(66946007)(36756003)(2616005)(66556008)(64756008)(66476007)(81166006)(478600001)(81156014)(14454004)(11346002)(229853002)(66446008)(2906002)(8676002)(5660300002)(8936002)(446003)(6486002)(6116002)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4497;
 H:BY5PR11MB4306.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O8klBpqk4XK6UuucnJbShDTCEqSLpSFqM5P9Qzelf516GpB367wEyt/3kNo5O87Kv9TfBQTqu7wv05oRGVrsYjvKqz8QY+D+372+3m20l6s44ue+Y2TvtD/dy8Q9pFjc+hTVCU7LJLMHqY/o8urnAfCaY19M9dglF4M6XAUppUN01ab/8s5g8CtNNrt+t2kt5ekzHnml0SJ73IPlKmf5DzlluTG6mVHhaytzx7GOs1yXBRv0I8sHMWt8kVaSD+R9jSD1WeDCgo1EVBPCNpR4GGK07Ev2KRnuiC2DLA7jknKG0GW5VPHNUiMHFLsNQc6i3xSKWOxjRa1MNHQ2OD45XB9vZv4EXWKY1Ir1Vdo5v86Vk4KTwIaZbpYEQyTEUEGx7P8qJjSYja2d5Is0jQAJD70re5BoTZWIzWJUK1VBNZ/kFckGVB8cofzIyszExb9m
Content-ID: <6575A14B6BF4784FA711A7C64B3D1811@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e88e6073-2900-4277-e92d-08d77824742b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 19:10:26.2103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ufVTz2Qnl3T0rcGVkCrqqm7Aufz+JHF0Xk6dRal6Eqryl+rTgxnrj4Uymbw4m/JhdexBh2/gQfFghhB9nk7i/Cz9dV1/oG+CPyyrvcyxO7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4497
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
 Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 11/25/19 2:26 AM, Julian Calaby wrote:
> Hi Adham,
>
> The OOB interrupt is a GPIO and this is an SDIO card, so why not just
> set the relevant pin in the devicetree and detect it based on that?
>
> I'm pretty sure that the Broadcom fmac driver does something like this.
Thanks Julian and Dan for your feedback. We will go through the fmac driver to see how to improve OOB selection based on that, and send v2 of this patch.
Greg, will it be possible to ignore this patch for now and merge the rest of the patch series?

Thanks,
Adham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
