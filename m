Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B3E1C1CFA
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 May 2020 20:26:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 844A08928F;
	Fri,  1 May 2020 18:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwZBjTdN5X2v; Fri,  1 May 2020 18:26:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E288C8927A;
	Fri,  1 May 2020 18:26:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE46A1BF5A4
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 18:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA6B284964
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 18:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9fQkVvHjvyY for <devel@linuxdriverproject.org>;
 Fri,  1 May 2020 18:26:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F3CB848C2
 for <devel@driverdev.osuosl.org>; Fri,  1 May 2020 18:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588357584; x=1619893584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=PIRPaN60fTlCFx9K33pyHUQ2otoRHaqKbGWd807SjGw=;
 b=sJgg+6hrLLcBz40N0PwlArMl//it9WSbHGIFu9xP65Mmd12RicJ+ROBc
 z2/S+6LH3JiY0CMh7GefiYvu3iFzEyqZQRqM5+HGOhlZFcgNmxvbYCHp5
 WCv8xNx/1vMMO+c93xt1DihvrYRaxqCM2+5AeVnziJBud6oi99MvojVTC
 h8rSIg//RW05+oAFSEwcv6E/urxpJlGQSq1FfXZJ1nG5iXgN8FLjSH+KK
 rOisi159ztx5awsAphsrfcwJbahJTN3CfympIH1jqjwOImY98rBmFBlC/
 ziLOR7yPvKhobPFq/8CXRmTxGVZCaDbeW/Jz/LGU8b1fxyHn8GusS9zau w==;
IronPort-SDR: vKAlqmVFbINQSZvfh7pzCFu5RkgXNUJ5l5ZZA3T2Zah+6t3/M7AyT6FHb/CoghmDquVBQA0on8
 sNGwiZj+lLYJc9U7Ne1jOSnZWJTJsOtSMTQ5oKaY9jDmOoL4rdP9P6eP5yHrpvpNsTlPTnE+/+
 tt+J3+5gy6NiQX3xgt+MQ5nRDRETuBo9IRsbqz3HRoXHjx0fjwduZm6HDpvo7zz6AzXU07mNpb
 9pERmxKCmRjMUOTp+uigV8kpAUjwEnnGbGm7WYSIilQVJucluciyXIpq4wsbl8ND0nvXmv2LlX
 ZVM=
X-IronPort-AV: E=Sophos;i="5.73,340,1583218800"; d="scan'208";a="75239471"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 May 2020 11:26:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 11:26:12 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 11:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TrnpkteGK6YeLZccCiWmd5YKlz89lyW5Na3O2AuIMbxQHyhrg12lnB95Pid/JpfixUoDCfwLyQtHnulHuEyCDNAf+tO7XK6GDcwtxT/+cfh9eoIv0Xc0n00YK4n/WGzHKi+nqIzBmKm3wxmNRZVgak5DgNKLnoQg5paFV9inIsn5qN67PY5IoEbLId+RZbfLamwcvtstGULmGlV/1qrAN9sAREtFuUbFLdh6XJuSK5wj88k+qQIKi4atJcNkLtbvHLKamFepF05a2GJOxJRyXuRK67Db1oRpFJMedD51JVF8MJVQUR2MJDOl8tZuaGVvCFB9cV4VT0kE6+a6EZtQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIRPaN60fTlCFx9K33pyHUQ2otoRHaqKbGWd807SjGw=;
 b=Gr2hmOIek7ZSRSHd6xA+o1TSO37iqTLn9BbVAHKCMfYkgsQ56hUP4HR5vrfiVARBEGCQG5DlZGnR7zlwNqh8PhT9nXi+0eNmQ4O5Yr/dslUxOgcaE0b9mou3034KptIsvPkh9XzKkLZHNQWRvfmX3mtTrcQYelMyD7g8z7MsFeNVaZHVY+WWWu4Kr/6LhAnLH76n1zS6E0TM466AmLfGWz0Bm6qdGmQsi6m/150U0PkWGCQzE81XwNqSvtgbzkQRicZwTRmhzkcixmpINv4njDat1z+HOF0aG4o1Ovq7BiJWuVyq/fFSLszhASNEaIXECopjfd8LCMT3ScJKEixQWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIRPaN60fTlCFx9K33pyHUQ2otoRHaqKbGWd807SjGw=;
 b=e5SCxUG52Ts7MbphvDniaO34fv7Zd+sJzeLf22X8A+GOqGdfbZE7ueau//4RCsF6tG1yNYBSdSE4M6yfisM2KbJHeJKU7QaPIPmAqipn9wNiaj0mXe+XM704e9bvZfB9uVtxp21hBmbNRdgHVTKCwv1Bg2atcLYni9+0hmPf5YM=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2584.namprd11.prod.outlook.com (2603:10b6:a02:c8::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Fri, 1 May
 2020 18:26:11 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::7c0f:1690:7a0d:151e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::7c0f:1690:7a0d:151e%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 18:26:11 +0000
From: <Ajay.Kathat@microchip.com>
To: <oscar.carter@gmx.com>, <adham.abozaeid@microchip.com>
Subject: Re: [PATCH] staging: wilc1000: Increase the size of wid_list array
Thread-Topic: [PATCH] staging: wilc1000: Increase the size of wid_list array
Thread-Index: AQHWH9p15EDtUahgUUOmtzThN7PF6KiTjEEA
Date: Fri, 1 May 2020 18:26:10 +0000
Message-ID: <555a8486-8a9f-44a6-3423-78981955765a@microchip.com>
References: <20200501170239.16917-1-oscar.carter@gmx.com>
In-Reply-To: <20200501170239.16917-1-oscar.carter@gmx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: gmx.com; dkim=none (message not signed)
 header.d=none;gmx.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [183.82.186.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ef6aa3f-3f4d-4885-b0c3-08d7edfd1fb4
x-ms-traffictypediagnostic: BYAPR11MB2584:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB258495AE0EDDC933C7E6EA0AE3AB0@BYAPR11MB2584.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:332;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: npAJHMX3XKD1yxCNNQChks2DsJa9JkStnKjxR4xPP8x9YLeQorMambiCydCE40cRS2E+OpCTa+Uw5IvTFwgxjVwIi2grGcwCz4os5R3mMjzBVqjEqseFlzJiOGz7oUAzcbEQPFV4YGPzJUV2veyb9/opF0s5ZNLkrUKYpWSOQmfvYfy/N3ew8DCuhr4TE5BRTp5SLBOYIQc+fVjiB+xOXtA3gDzj6j9aVgbzhi/H3oHeBJTxKyORoLmIRgR4Lo0Sb87+hgWQt00SJ0wucgEDk7QjdSvJTNPAakKUbwe8Br4VkTiHBgP00Hh9BMGkODGLBRXVsCCpOAUiP+5xvI1rtW3Pp3KUqPEEsVzwUQLdvTBha2kjJb/hg7bHFc7ZXZ6Cp+B6bPkHmnkR1wUrUlwvIeriiFJwHgix64iduDPMCByFQNV8Hidf4wYF5PjgPoV+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3125.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(376002)(39860400002)(136003)(346002)(6486002)(26005)(186003)(36756003)(53546011)(4326008)(6506007)(31686004)(2616005)(6636002)(2906002)(71200400001)(316002)(54906003)(76116006)(86362001)(8936002)(31696002)(5660300002)(478600001)(110136005)(66556008)(8676002)(6512007)(66476007)(66946007)(64756008)(91956017)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Or9Y7dyf4XEaUZtx4/CrX5Y+E22HpqPGqhS6S390JHqp8zrUpgfC67HP58e/UQIKwncywKRPaKQt3/3JcJlk58M5uT/tjBwi9V02aR1J98IsvRJukVY0UQInkSlwrxvOQjyIMgDCsWRigG0nOmQjosEHtd5TmmqUboNkKBU+obBgn+tsb0PtejxbNMiGuG1ziDydz2juMWHBPkDbVwscqFTmvDh1P0itchkagm5Mchai2W5+194sTtMJbHv7v4zg3jp5bZcp6JP/bLO7jGPQtmtugZOxh1rwRL2AUiyf+20+2rUfotVTsfkLJTHo7gTMReLVT7iynT0mfvAy65o+ktZ0TZoPYqHTpJN/lYE07xIPkv5Ox2S/FtSoI3d8IRpEzJ3tZkuI3DvMBbbl/c+k0VOtssuve86UMqMtSw8UNHszdhkLv7Jckre9VevAbNRCh0YIRi+rTeu7KKXtvV+HRKawS8Ov+jufd4ipeIQ73lxgn8l01cHq5EOi8TXbgW2B8SzXo3dFdBm7YD9ZlXRY36YZa/RsPcaujAYib0wWXYJBlxnVMhMHJbHZIZGbAdvsmTKy4fnb7fdpoP7zjSOxsovzHc3aNggDNZrxp3xAScauTQkH7VexEwtwhfTsJ7ak7+/7AJYIzzC4MR5p/c9eVLanyKhGViA+OHUeTFxSFGpf6bpk6HEIprcXOruQKfHg4vrTbPlwyWgrzpHBaW/OqkCst8BSHUcC5KXa40dQKtvBb6BrR8ONiWJXvTujL9+IvGRkiccltI5LjA9ng6RKfTH5nLCPM8GVSOtdyOC8ECI=
Content-ID: <D93DE193E320F548A3F82B07D28BA73A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ef6aa3f-3f4d-4885-b0c3-08d7edfd1fb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 18:26:10.8929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZFm7ZdfcPhSAKv0L5Oq3XBSG6FRSlT2wf5CW1Fv/hvBh25dDxzmqPjVcBDCbeWGozwsjd1twKY8agFtIqMatHWG9D/Lp31umiS/VRluS5fY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2584
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


On 01/05/20 10:32 pm, Oscar Carter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Increase by one the size of wid_list array as index variable can reach a
> value of 5. If this happens, an out-of-bounds access is performed.
> 
> Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
> Fixes: c5c77ba18ea66 ("staging: wilc1000: Add SDIO/SPI 802.11 driver")

The code changes are fine. But the correct commit for Fixes tag should be

Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")


Regards,
Ajay

> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
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
