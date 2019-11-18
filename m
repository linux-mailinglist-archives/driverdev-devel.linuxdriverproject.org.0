Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F40100F68
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Nov 2019 00:28:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B80A686DAE;
	Mon, 18 Nov 2019 23:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fTuLTPfgfI36; Mon, 18 Nov 2019 23:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C04C86ACD;
	Mon, 18 Nov 2019 23:28:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DEA81BF33C
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 23:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 650542206D
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 23:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-SjiDnVkZy9 for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 23:28:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F71A21FFB
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 23:28:21 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 1azbJ0jFXyUcoOJ13yjMXHJZWDOPYB0fqc0syQajSAZtarrFbiWAmiCdohHH4oZcsCBQaT/Bai
 8QYTMNP35iQj6Sf6nZWAsycFx8M/PzkStMtmP6nRG3Ry7oZSm+oL96KCfvLVOr8PbqcxCkI0oW
 pVIC7zACZhgJ1FiCA4Lzyk5GRtnUtLyAMMjK8CG1p6LmF+2Dxi/CHI3GFwV0Wj/9C+XiwBmcVS
 zmGviozpH8a86sGuDNdm5jdBWa6ch0OZv1k5o+Ojqq4DFOKws6f/9+p/JTFTb/yGjVGhehjbJS
 fpc=
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; d="scan'208";a="57515592"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Nov 2019 16:28:19 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Nov 2019 16:28:17 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 18 Nov 2019 16:28:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RboA7x2tCM3h3mxHEs3h4nkiKnLjVDqxw4vNdXxYgCeMTsuLaQATXcZbk05bPU+Ci6Z0RSE7kqn54afoIlFFVnKjkP8IfNoZ4r1/vINOYZMuQxCiF86HCv2L+C10M8uXC3e5mOwnD7tfMtx+lxvn71kJrkyPd8Q4MaUsTgI4y9HzxqbsXzjzh82pJOgR2bNXIwFyVVIbmtcHU+68amoYn8Nq/8vr4lw0NJ85q8D5/JGeXffKzbxSycIm1d1533FJZhAEu248xgs+Ndydlb8A2m4tFHaLnG+7DinxtCX7Mag8auOVx3fOtGJaNF5IhBW/XMTGmsTEX7BBUNt+A/wIGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4b6R6lsgU6DHFc8A5k5wUWYDxgwxiDtjInZ88sJ6GOI=;
 b=Y9i1MSnp4Dy1csZrLDz9WXSCy5NWrDQf9w3+qDlJwFzX3rZzjTCJxCSJxwPKJatxQey9qu73th4yB2EZDcQdA9ePz/pbUQ6Xa/6JMkFBF319hyWg+1O0Fv9S117Vc0DjbnfrHBwfWsLItT8gGF1fkr9+hV8PIF5hcXFf8JnowWohPoxAWChPCwwu2CweyFWkznxWwB186CgP68PaHLOoXNvqdPanFkcFXgZ7+fO9arwLx1XUYozOt4z2fdJ0Rmc9c5cfL136IDlIE/aNYyM1vrHdaZYKZSx6IK2dbx/2EqpDVcXVjW5U6/14Z4NBd0lKCCVCR8UdRclij9hDc3byxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4b6R6lsgU6DHFc8A5k5wUWYDxgwxiDtjInZ88sJ6GOI=;
 b=jpsUwAcn9UJUISgxJNO9AmOwpA/JqaOkzIWkeNHyA9+TZLmiBdmhhKwLJSxlnS8FxIH7wqA7t6a7oojw/UWZLe3s+9/n7zwDunKHB3KSXfwR1WAmsGdgC9nHLG/FCnig1CLHKxv2nbLsTWCORugPNM72xSE2XQWXMFbxUbLMq+8=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1504.namprd11.prod.outlook.com (10.172.54.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Mon, 18 Nov 2019 23:28:16 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::3509:e9f1:afd0:1682]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::3509:e9f1:afd0:1682%11]) with mapi id 15.20.2451.029; Mon, 18 Nov
 2019 23:28:16 +0000
From: <Adham.Abozaeid@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: FW: [bug report] staging: wilc1000: added support to dynamically
 add/remove interfaces
Thread-Topic: FW: [bug report] staging: wilc1000: added support to dynamically
 add/remove interfaces
Thread-Index: AQHVmlDvWSZ55eVtX0aSSQfW1Ld4BKeKzVAwgAbNv4A=
Date: Mon, 18 Nov 2019 23:28:16 +0000
Message-ID: <f66d1bdd-7b2c-fffa-ffbe-0d7f7b7bc32c@microchip.com>
References: <20191113183322.a54mh2w6dulklgsd@kili.mountain>
 <BN6PR11MB3985D361E1AAA5CE959C3828E3710@BN6PR11MB3985.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR11MB3985D361E1AAA5CE959C3828E3710@BN6PR11MB3985.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
x-clientproxiedby: BYAPR04CA0031.namprd04.prod.outlook.com
 (2603:10b6:a03:40::44) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 004562bb-567c-452a-0c7e-08d76c7efcdd
x-ms-traffictypediagnostic: MWHPR11MB1504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB150495A4D41A7CEC0D0D62CF8D4D0@MWHPR11MB1504.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(39860400002)(376002)(366004)(13464003)(189003)(199004)(186003)(26005)(6486002)(5640700003)(52116002)(4326008)(8676002)(6436002)(71190400001)(71200400001)(386003)(6506007)(53546011)(8936002)(76176011)(6246003)(229853002)(2351001)(36756003)(86362001)(6916009)(31696002)(81156014)(107886003)(6512007)(102836004)(66476007)(66556008)(64756008)(66446008)(66946007)(4744005)(2906002)(5660300002)(305945005)(14454004)(58126008)(81166006)(478600001)(54906003)(99286004)(316002)(6116002)(3846002)(25786009)(2501003)(31686004)(66066001)(65806001)(65956001)(2616005)(446003)(476003)(11346002)(486006)(256004)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1504;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8GAkJsZw85MkaHY0lmrsAVEGGk2fipmfD9QiQ5RNK5iMD2awaq674kvWqM96yJeNWve+7qT7NtirSTspOfUwxuPmaf8COfb08ZdDrpakHCMQiL9WL4KRWh+sBjx/IRPqfLzIj4fk/wZV0Cvq9r4YyZAE3OFPc4G9Av3nzcJJEl0blnlgGwFc4Bmpu/8HVbDu6Av15MZMwFaW168xQUaqZYj1sy/91Ml3Rq2lUH0DN74juT7vtZtdh74XrSV3GvyrAVFrvextSkLefdIOjglKk0JZcMq8WJ6y3jq8p/C3rTaw+piqG7k88UO3Nr91yGFoKdFioDroG1S3C3muxnJXVKBA9hAHZKsNu4z3VB9H+VRuHKuZH0lR0hzWX1h5RJ2HEtaNyDTL1BDBq5U+C0WuBCh12xBGlafVYSTm0RyR0kWzJaz0ojJTqslH6lqedF/L
Content-ID: <1FEA99ADF003774ABE3554564E56EB23@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 004562bb-567c-452a-0c7e-08d76c7efcdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 23:28:16.3137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5YPRmp9XlDLPRExY8Yhdjj8hHG5YIQwlSoWxSBDTJ7cxN2h2dw4kceNhgjsaYoPpZpInvizBJ9czCFLA22OT2sP1q/tWnVkBVBmiZ93x+7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1504
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


> -----Original Message-----
> From: Dan Carpenter <dan.carpenter@oracle.com> 
> Sent: Thursday, November 14, 2019 12:03 AM
> To: Ajay Kathat - I15481 <Ajay.Kathat@microchip.com>
> Cc: devel@driverdev.osuosl.org
> Subject: [bug report] staging: wilc1000: added support to dynamically add/remove interfaces
>
>
>
> [ When we renamed the files, then all the old warnings showed up as
>   new warnings again.  - dan ]
Hi Dan

Thanks for your feedback. We will target these comments in the upcoming patches.

Thanks,
Adham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
