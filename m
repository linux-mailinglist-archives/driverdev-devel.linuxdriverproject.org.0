Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D13881B7349
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 13:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E71D86F7E;
	Fri, 24 Apr 2020 11:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jb9hPFdDo1ha; Fri, 24 Apr 2020 11:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54D2486ED1;
	Fri, 24 Apr 2020 11:39:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1A41BF489
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 11:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B77C86ED1
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 11:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ii7Kiarrhxg9 for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 11:39:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2070.outbound.protection.outlook.com [40.107.243.70])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98B8684FB2
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 11:39:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YYTcvTJ0GHS97nLj6A0BYGVgTqpikvJNHk/dSa+15BZw6m49d0rIzdSN0hwnMKqMrSRx5QFEzxXaTiVe/Und6OrvDP+VAOEHvWKb+WsYR3zMNMN/qS1sCGUxJ/An/Uhu2hp+UkmJgNPDNZvBs+no88HFYZ0kJEVOjclHIQaqeVbjICYtrg5gKfCpLoYz5y7VNTusMXUCRP9BJ3LSBVq9KAvuBPeK+Rg6IhuRP/8ACRmUe1RyxfdOPwbSI7Ozd82C2MtZjdV+CXW9rireP6swqY4dqnRvSEPntjpmkz6ONTFZLUoNrBs2PbsYWkGOzTeb2OyWo8Ek35tgg2+MUhdIlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSBW1tekicg4BuCmSsHJgHeeDMmRNRS0RXIhliKwzxk=;
 b=dVWkgAn1dwk/XrJ+niY24CtCjYRzNm8Bz76lpGkTIzfVrzIzwbJGfDMwPVh7DX8l4ZqF/YJg9+OKZrqPy8I50vfiiYgnjNl8yq9rHqAQ48W4Qp6Ma4yixxzyFp8XTpqTA48KyO9MuszaV9lQ87Akmc/znJ0eSJk41wcIPqmbgJhOg4LTFWIblha0nSX4e+h1XQEJNIizNyOTeB3ACfkOsDE448hj7poLrJfqQPxIOqLcld+G6qI3iX59c1MBUqrWy5jNaokahp0IyHynJd4Hwql1jHZxRZEHavamTSno121A8SaBd7kA2Q8tqTtlWhfoyodp9cVqnQI9Ex586tjgxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSBW1tekicg4BuCmSsHJgHeeDMmRNRS0RXIhliKwzxk=;
 b=k7ZnOXPkJO+J3+r/rVimcttXUeZIdkg3WabUdmosoXOqZ8l+hjRuRTV4PtJoKZyEHNP1o/vyU8gX2wUV7RkpAnURX9owNPenun74P8EzqDoMOI1b0BaUZfyNo5AU/LnsxihgQouVYGcJmPWIc4u/bO+Pjjlg7C27DqEVOh9lRWg=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1248.namprd11.prod.outlook.com (2603:10b6:300:27::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 11:39:38 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.020; Fri, 24 Apr
 2020 11:39:38 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: wfx: check ssidlen and prevent an array overflow
Thread-Topic: [PATCH] staging: wfx: check ssidlen and prevent an array overflow
Thread-Index: AQHWGiVjqi9cHxb3rka9BW2YYfiv86iIJcWA
Date: Fri, 24 Apr 2020 11:39:38 +0000
Message-ID: <2664933.6YeKyBzJok@pc-42>
References: <20200424104235.GA416402@mwanda>
In-Reply-To: <20200424104235.GA416402@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f3c6385-33cf-4d46-3f7c-08d7e8442ba7
x-ms-traffictypediagnostic: MWHPR11MB1248:
x-microsoft-antispam-prvs: <MWHPR11MB124802B6C2A50C5199CC27AC93D00@MWHPR11MB1248.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(7916004)(39850400004)(366004)(376002)(136003)(346002)(396003)(4326008)(81156014)(316002)(26005)(5660300002)(86362001)(186003)(478600001)(6486002)(71200400001)(66556008)(64756008)(6506007)(66946007)(91956017)(66446008)(76116006)(66476007)(2906002)(54906003)(8936002)(8676002)(6916009)(6512007)(33716001)(66574012)(9686003)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IGyUvvSjo/R35ZIx/+DimfDjP+k7zp5wwqRSHcCpadGjjFy3TQWoIiBN1wAFzxF5QUN7f3JfXQ4B+C3aRnHkQ3T7swZV4itL9t8jzjL/r71CTuurGRK/ySHcsqgJDOfx3R0VfpF3P84SvI8FpSzY4irwwvcrusSNi2pSf6CIFS/fe1YPP08MYfV1aCKrWF80fxN6DmIdEzn8cAQL4fb/dNsnMVIB5LW7QfmbhhPCLTUqpd5DeU+IM1i4j+TH4KcbrVjFx2KIedRqvEwgazdlQjBq5xehQNsDeE9Dsp9rl98XsIl6Jwp+2oI7cgFcyjnhqou8AsiAh3TpckzqR2SnmwalKRO/0I95e1A5obKA9KKL9cxcMSYBjf+VfyXVxfSYyHwfX8/qvSGlKCU9rr4P4ezIPfGFvNsXk2F11t+uGtMFBQInOt3mLaOl2qpvXV8Lnr6mgdcGnzPn1ooPNyNimNAcIuR07LGKnBBFfR+MvTDWxbvV8oLmibpvY329xyJz
x-ms-exchange-antispam-messagedata: Cr6SL4Z2asOjMvr1OEIzZsGF4czTsz1UlWoTWoUJP/EvmQFmY6PXsYK3PAlUzqEXK2fcztExIJhTjdk2fHWkd56dtSc7lLdMhCM3FDQPr7ree5EQtFtNjO3TTLyjWRWMA5hMlNuUVj5Vs6zqsHSOo4iUADDT4dtELjx5yYJrCXponlFuWZPFyqSOdhJfGQ6vt5DjBVXbHVAkLBUYy5VeE8VdOcP2npoSVKDQlF0h07OPfwM3155U7ESI42M7q4+UjMKcNYZjLhmrurqQIviUSXhp4A1o/BPVmji2vwVNhldYa4ERWvh1XqsSH3haBpu/YYoVfOoQSS/Dpq5zynzpFXdC0pCt/SA4dw2GTRfHfQu9wzKI+iqWLdpUZTHZH0wpuaDRir2j/gCIulDSDx/aDMrWW8dGOwG882d+fygRvhfyYBzoFX93aXRdCjLjNrQ+pbyF+zS4wHIBc8oZWE4gsVefAz8biXns49bSs7AH1e3JmAdDDaGumHVgHAoDw3L7fJ4fb/0fXH6fTg+2tqaj5ZcEIxhMDeKnngkRq9TaGQ+5DdC1U8IuvC0NmyriBxTryloA2bdOIzt/agbQ8hds9dYGam9Cfe7aZ4VyniFbBR0vQKdlNH4FqrR61aqwODmcwXoOEbawjmZDg/WCW9u408bv5zVSScOn+nxr/T2eRCIw8MKRWAfk70SYIwaaJdT0lIBDAXgHAHp2MISeXShgtwFktIn8eeOOMq862puAAg1EQdoKHipVfELHXA5OMfHH+yQBGF08zdmtxS+uN0RTl4ZjMjqGE4R0kNdDiwxXSHk=
x-ms-exchange-transport-forked: True
Content-ID: <C9FC281DD080334480064C2A496FC52B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f3c6385-33cf-4d46-3f7c-08d7e8442ba7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 11:39:38.3016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iqnXI/lCcD04nsYtEuV0NYSat2LKvU2G+UTDZz/bRqz5ScoRvBtbabsgWZjSDaWc6i6Zt2C+sqvBD98E00UXSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1248
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 24 April 2020 12:42:35 CEST Dan Carpenter wrote:
> =

> We need to cap "ssidlen" to prevent a memcpy() overflow.
> =

> Fixes: 40115bbc40e2 ("staging: wfx: implement the rest of mac80211 API")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/wfx/sta.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index c73dbb3a0de8c..3bff0f1e3d9ba 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -479,7 +479,9 @@ static void wfx_do_join(struct wfx_vif *wvif)
>                 ssidie =3D ieee80211_bss_get_ie(bss, WLAN_EID_SSID);
>         if (ssidie) {
>                 ssidlen =3D ssidie[1];
> -               memcpy(ssid, &ssidie[2], ssidie[1]);
> +               if (ssidlen > IEEE80211_MAX_SSID_LEN)
> +                       ssidlen =3D IEEE80211_MAX_SSID_LEN;
I'd have a little preference for sizeof(ssid) instead of
IEEE80211_MAX_SSID_LEN, but ok.

> +               memcpy(ssid, &ssidie[2], ssidlen);
>         }
>         rcu_read_unlock();
> =

> --
> 2.26.1
> =


Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
