Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D91C2D1C
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 16:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26AC12274E;
	Sun,  3 May 2020 14:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRzLsiRxiOYI; Sun,  3 May 2020 14:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ABD7B2271F;
	Sun,  3 May 2020 14:52:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 899651BF2F9
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 14:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B8CB226DB
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 14:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1gzqD0kYwBWr for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 14:52:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C0E8203BD
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 14:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588517542; x=1620053542;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=q15gEN/Lb1j6CfXGd6Jws1AMU4jxMuOi8ziNU4gZ6z0=;
 b=iZtlZAKPEqL0kGD0NVrKxj6CoXUdZ7C2PkZRPQBMotgBp8HZy9I1em+D
 pY2wBb7ORFASSgfzbrFpY0ZwFXYcJFPhfswMmFnulMPtH3ZJDZlgGIPhB
 4F1k4bUWSwadycW93GvpKFjK0LNymVfKuwYd4jO9M83Rk8lnw472pt5xe
 VscV36aurQmIpkFCa3qX9F35S6rT4eA/sKIBBzI/xhXUaB7AFcPTq7NOR
 vfWcwjvEyvUEkYbs3lhbCJh2vszPEw5y9KbHEQVR3a+dn0BNv/4+5TKQc
 Sww8jk/rzZIJZsBqGP36wUJFSs6G2B34INB1SN/0oWTGHdYhLQwDJSmx6 Q==;
IronPort-SDR: 5moeM1tAjtGoaeuOmw1tozXWuRLausFpDTL2CthhHd81bqg1BiHQv2KV68cgQYqJuMTczJoyCO
 szyY2MRwpSWzAfG0875y3+QDT0UYcti50YLOiIQRIPn44JgBRAmXGicWGWlmjZijc5Nzai/t73
 4OVVYzW1XIfcKPwJ9UbvJ1dauWhOdWKOW5A+i45hzXG5bJm2dVXJd/PcqnBGdtZ7/L0hF0uwSx
 veuOLC30edxt7TZudIJmOduqsIPHhfwOBUr+Ge2Ys62WFvCIpJPwkbp9f9WUD1aD9WX8NGGNfb
 PCA=
X-IronPort-AV: E=Sophos;i="5.73,347,1583218800"; d="scan'208";a="72251061"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 May 2020 07:52:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 3 May 2020 07:52:21 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 3 May 2020 07:52:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DmL01zVYzaCknjB+1hvYevGOxk0+BiuuBGy9JlJYkZysCmIaSkCwuwG4jmuWXR5FgPF3jxLJuexiJvWW7MeJf8XYOnqeLgmWzjnxJUcQmz3Z7aCKjiCJFKxI7TFdThtrlXpOGfJ8VWSTYbeTY46HNMskxtyTTAeTAFszGRAdJwGClDUzcygxKaKXE1aIXGsPkZBEXVTHwFaTcvjOP8vetHm88sIKu3dKUglJzJFa74CpUuEkdSYZQkRey2jcYimmIl1baafbKQd9r/TnfB+7qESCMu5X3vlnbtqM8Qa3IpcydmaCAbnwYfxD3nzd07wXW3nmVG5e5Yx44e6KYDV8YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q15gEN/Lb1j6CfXGd6Jws1AMU4jxMuOi8ziNU4gZ6z0=;
 b=KQ4kZyTZSXPrOvw4cML2y3QTGO6fD5BSJdFWAguqqFiDVjFsbf39IWKPq3mDE/6yRKGt8KK6li3C00Q3R2zZVgVQORJyHJnynUh2l27N+ynpLwXknashmBkVyFnZDPFb1jL3VqetFzOyJjVJzWctSkxxWcYl9PVZBmjyIvXxhvIpN0+Qt83fP9XGVjKozX3Hb+pf0jHkv485QrWZFIqk9VD2ig27VptYtjY7dqx+wJ5MgpI+9DoxnRpR2pi2I3lGUPh6MGM0rvS/A9b6AhjoEgZVY9+16r3hD5LML7FoGJAy2T2KoPJ1L1Uapai4wPfnJ7xtgLlkLO1w4P8MuXh7+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q15gEN/Lb1j6CfXGd6Jws1AMU4jxMuOi8ziNU4gZ6z0=;
 b=bdZOKPAChWKUUc1HN3lP0YumtODFi+K+28oQ41VyCtwpb+CjH3PBZOOO8SAY8RAmviTeaJZjKHOTed+seQBwEJ1pteaU+HZN/5Hvyc6neoXu5yR2D25eqBU+81ZFm7nK1ue0cQrO0zz088NB9waBHse0jujCM3GJx8DErVPXiRo=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2646.namprd11.prod.outlook.com (2603:10b6:a02:c6::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Sun, 3 May
 2020 14:52:19 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::7c0f:1690:7a0d:151e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::7c0f:1690:7a0d:151e%6]) with mapi id 15.20.2958.027; Sun, 3 May 2020
 14:52:19 +0000
From: <Ajay.Kathat@microchip.com>
To: <oscar.carter@gmx.com>, <adham.abozaeid@microchip.com>
Subject: Re: [PATCH v2] staging: wilc1000: Increase the size of wid_list array
Thread-Topic: [PATCH v2] staging: wilc1000: Increase the size of wid_list array
Thread-Index: AQHWIR/JG/h3/9iPxkC7eX3Zc1g8RaiWcqGA
Date: Sun, 3 May 2020 14:52:19 +0000
Message-ID: <d75b7f64-0ba0-65e9-ea4c-cc87b3a51a10@microchip.com>
References: <20200503075145.4563-1-oscar.carter@gmx.com>
In-Reply-To: <20200503075145.4563-1-oscar.carter@gmx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: gmx.com; dkim=none (message not signed)
 header.d=none;gmx.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [49.207.48.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e49eb02d-0411-4945-babe-08d7ef719452
x-ms-traffictypediagnostic: BYAPR11MB2646:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB26466F7C3B3976F26C6CFBAFE3A90@BYAPR11MB2646.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:338;
x-forefront-prvs: 0392679D18
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RMFslSpu7XdGAlBw0VSaBL31NRFOBBwXrIDR6tQsqMOGdeUl1myjRswODechOCO0DENnEKLVmlbXbWjZ+LQFeZisWl/xJ8tVWOel6oq6OakSaeI2gW0WOsi9yF/0+48gVixJ2ZdHuXx+sMNNRjl6RY8/j4v97pxBcR4K3nYT/cbfRnc0JKkuBbSJ3YnI3LNWi+JCVyH1hwAwH8+vyOseieYFWfqDqzvUd42otQW+ARcFJdvhlYyBIjeV54GnvmkQ4R9PcEvEpWHDSplnv96SMEkOcmZsBvmDMxt2eL6i7mkPXMbdm8m8ANKmh4ceN/gFiU6yLThl3H0/YtC2uhu9qVPrIKQHRulvmgWj0W4rn7OJD5T650K5V3T/5rjCOOqRR2QRde9ngi+tRhOcyt91WahAK1jev47DDM9orCjY6cfGKK7siMaJIBG/rG53jKS+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3125.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(376002)(396003)(39850400004)(346002)(186003)(66556008)(66446008)(66476007)(64756008)(26005)(31686004)(31696002)(55236004)(2906002)(2616005)(6506007)(36756003)(53546011)(8936002)(8676002)(6512007)(5660300002)(91956017)(86362001)(76116006)(66946007)(6636002)(6486002)(54906003)(71200400001)(4326008)(316002)(110136005)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Oejkvl5lL/JKgFwJExc+SrcXVE3Qdt19jor6KHgHHNH2Hbxzo9Cce4+bGpkDzeZUj85+t19NPc54X/r/y9UM1ShDz7U+CKYrcDx+DZQIMHyC/DVkrh6KlusGNLZv07mub9jhsZvnUohZMeS3jlmDdCHf6YIUCV29k/fxH345n41aFaxY68uUzbnctuPw8i1DJSfUB/DFKeJhKGqBWBQSczRvYMMjWvNfZ5lX1LdS/csbnDTC7JY7d9UuDdbgFky1httZUoRBjNvc9ZUU64/5CtnZAK35jA9Yp2n1Kz/bs29vf3zpxwoHWirgAjkc2POLBNNAX5d0w3sxw7DadwDLrhyfeU+OLep4AmD0ysap5Yfa9lkMKubaRQOoMHv6vIsOlAzIW5+oQ00NFLodZ+BQEJoF2gMhLs9BB6/uP3Sn/vMRmmJUkl2XdKIf+rh7/cEMQW9uvhbx5JmAzKKpvJQLHk+Se3Z1xnYs7xT7nBkIngZoCaTI7H7/hSoI4rOkq7tBrRE330ka6E5n8Z/XtUOYr4YUv+PlXygXj1LD8BhaEQwlUTPADGOMcI5lEmPUrBPqcFW8gJRiImZaLySjGvBux+6oMEHJABez1fU2flzTc8jTZNfLlGqY2hlFYjEW6ELfi+R1dZFWGvOGOsWoIQo3o3gOL3d4FO/+8z0cu6li5CuHpdAwebXGiZNxrPCrCfr6uG0ExfzrfX9qhGurYjhf0be+Rv28LylyMKAeEcmNMBsRRlGXba5UYUe8joQBJARo5i2NPf92gJdx4FQnaTrfE6AM50vC1zaRNbyUgDv1bwg=
Content-ID: <6F15515B00E2704E973CABAAB5044792@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e49eb02d-0411-4945-babe-08d7ef719452
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2020 14:52:19.3418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NiAeuFCg32yoiwBMNfHE9CywLX3TYN9DeW8vKMQEtuh+jH5VE4bua5IYN8CbX8s/k0a0LiWfNm2J/gXi64FZaSybn8tTSSXdQx1YLq7rYB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2646
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
Cc: rachel.kim@atmel.com, dean.lee@atmel.com, chris.park@atmel.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-wireless@vger.kernel.org, johnny.kim@atmel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 03/05/20 1:21 pm, Oscar Carter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Increase by one the size of wid_list array as index variable can reach a
> value of 5. If this happens, an out-of-bounds access is performed.
> 
> Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
> Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>


Thanks for making the changes.

Acked-by: Ajay Singh <ajay.kathat@microchip.com>


> ---
> Changelog v1 -> v2
> - Fix the commit for the "Fixes" tag as Ajay suggested.
> 
>  drivers/staging/wilc1000/hif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
> index 6c7de2f8d3f2..128943c3be4f 100644
> --- a/drivers/staging/wilc1000/hif.c
> +++ b/drivers/staging/wilc1000/hif.c
> @@ -151,7 +151,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
>               void *user_arg, struct cfg80211_scan_request *request)
>  {
>         int result = 0;
> -       struct wid wid_list[5];
> +       struct wid wid_list[6];
>         u32 index = 0;
>         u32 i, scan_timeout;
>         u8 *buffer;
> --
> 2.20.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
