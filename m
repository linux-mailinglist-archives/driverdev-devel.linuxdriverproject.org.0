Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E711D110B
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:20:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FB1E878F4;
	Wed,  9 Oct 2019 14:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jGvDNcexy2yA; Wed,  9 Oct 2019 14:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B8FE878D8;
	Wed,  9 Oct 2019 14:19:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F0901BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B66223026
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZtz268ubr78 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:19:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810051.outbound.protection.outlook.com [40.107.81.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 9ECCB20764
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:19:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkMtahAziFvRwejlM92uTbr6ino61btvmHbKzoRyg0zebVWIHklVykovQQEsYAUBMhDSyFQj43grChlORCkNEDm+ab7f5MWr+taYOeUF2SaQP2vPY3ctN/yDMyv8nAQDr5R7iWxY3N5BQiaeJwZ0inbk5oawZvglEECzz1KnfbOi/tQ0k+0KkMG5t1ZX4/TYUghqXuvsKdfy0SCnktxRBbgaT0ZmPbW9+/i2IVzznDCwN4+Aa/PkymUz26kmJHAtZj0ouJY3k+pSiuEc9eT2V2qzOlo2SOQ3Bwvab+UUjdobRWTtTYlZKPAhDu/wqdhBab5wrp6TxhGveRFW0VBJ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M/+Xt9PzJ+jQT8C6Us0sx9ZbFJ7itA7UqjU6jYo5kAo=;
 b=P2BIsG1MqpZxZxCvsYl4ilFs4XzaGNhSJ/SDpZEo6VwgaoaqhBWODYUL2Ijp8egYM0lhzxSJkQnIoO0w9dUlAc5kzFxvwKJp1JRD3SSeigHXE+4vYX4kTQz5GslsH9q5SS2Ir4rYIDsJ9etw8H8GCvY9hyfd/3PtY4qzE2pvtDVn+ZXsd99Y9ZcIA7f39ZfLS+Yw6yafd3lswdhZY78JX+74y0e6Msx/NKfbouS21k4YijXSOz7gxl6I0/nD1GXtoeZjv2DiG6E1/DLkcB2DJdKedfiPRdOdmDQ88dsBBpSY5oeM0zLF76W8Hf6XoeMHbo7ttMvxSpsgr2+W63sfKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M/+Xt9PzJ+jQT8C6Us0sx9ZbFJ7itA7UqjU6jYo5kAo=;
 b=LbD2UcyMsY14/mkWZDTNk+mseauCJiu2y10otJH78Uon92/1/IGvDQr9IhdmKw5oByUmoZlckx6BU+736Sa3bsPEsRRIiUwIlvJ9m2Mz0TIHFWpOXNcvZJPAKCkjBwdqxPDhmnDiSBUSYMwRTkPxqtnlbrWf0VZmvQH9eGJ/HfA=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3645.namprd11.prod.outlook.com (20.178.254.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 14:05:23 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 14:05:23 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH v2 3/3] staging: wfx: Make some functions static in sta.c
Thread-Topic: [PATCH v2 3/3] staging: wfx: Make some functions static in sta.c
Thread-Index: AQHVfqeMUjq/wiw0DESOFdHci5Rsx6dSV94A
Date: Wed, 9 Oct 2019 14:05:23 +0000
Message-ID: <1924991.0e3bHXHc7a@pc-42>
References: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
 <1570629030-29888-4-git-send-email-zhengbin13@huawei.com>
In-Reply-To: <1570629030-29888-4-git-send-email-zhengbin13@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c86aae2-0bb9-4880-1bd1-08d74cc1ba27
x-ms-traffictypediagnostic: MN2PR11MB3645:
x-microsoft-antispam-prvs: <MN2PR11MB36456DC63E9567FCD3BC601C93950@MN2PR11MB3645.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:108;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(366004)(346002)(376002)(39850400004)(396003)(189003)(199004)(99286004)(86362001)(25786009)(229853002)(6436002)(478600001)(76176011)(6246003)(64756008)(71190400001)(66446008)(71200400001)(305945005)(14454004)(66476007)(66556008)(446003)(11346002)(66946007)(66066001)(9686003)(5660300002)(8676002)(6512007)(316002)(81166006)(76116006)(8936002)(256004)(66574012)(6506007)(6916009)(81156014)(91956017)(14444005)(4326008)(102836004)(33716001)(26005)(2906002)(7736002)(476003)(6116002)(3846002)(486006)(6486002)(54906003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3645;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OGpBah5pbgAwaVh7mWT7ubovYY8jLzRbGcDf6KGya5xMxVaqj4uVnLEaP0+hMFPNjl2/oc2YtyteADatFJju42FLeHQRXk88mY+yCGv0X8v0bW1OkiZS6+G/r8Jws3zPHuH/HkNkUt0vpt8Oqp8p8MvHJ5d3t4XM2c5qyd5PRGo8x/SE6ypO0jWGJGrCrK88iGaAx/kdZVpZDRsVBqw5cg51v76GbhohGZkkJOcJM1OJk9fNi4eWjJXJBP/+RxTKKBNj9xr6gma5dHjLNUqAVaW6TBRPGYgQYpSik/05M7i531/WEJdywIKaXjMWP6Xy2dEnByLrniVXq6jfpGLlqz4SgTotMCm+NlH4Lhw2ZA1Kx9HLrqpJ9MHXlRXNdxAd85e8eXtfJtTI+p4neJkz8NR23vB1antMPPhlBmF92XQ=
x-ms-exchange-transport-forked: True
Content-ID: <D88A6A4924D74143B78F4A6EC727AF07@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c86aae2-0bb9-4880-1bd1-08d74cc1ba27
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 14:05:23.0219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6HLupnegkjdDvXS8hh2krSxmx0yepjMJIMxbS6Rz++IsMmuuA9Z6Sfym7yI9OwOa4+mogIDzk0aQoUhDbi95uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3645
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 9 October 2019 15:43:35 CEST zhengbin wrote:
> Fix sparse warnings:
> =

> drivers/staging/wfx/sta.c:269:6: warning: symbol 'wfx_update_filtering_wo=
rk' was not declared. Should it be static?
> drivers/staging/wfx/sta.c:475:6: warning: symbol 'wfx_event_handler_work'=
 was not declared. Should it be static?
> drivers/staging/wfx/sta.c:521:6: warning: symbol 'wfx_bss_loss_work' was =
not declared. Should it be static?
> drivers/staging/wfx/sta.c:528:6: warning: symbol 'wfx_bss_params_work' wa=
s not declared. Should it be static?
> drivers/staging/wfx/sta.c:539:6: warning: symbol 'wfx_set_beacon_wakeup_p=
eriod_work' was not declared. Should it be static?
> drivers/staging/wfx/sta.c:732:6: warning: symbol 'wfx_unjoin_work' was no=
t declared. Should it be static?
> drivers/staging/wfx/sta.c:794:6: warning: symbol 'wfx_set_cts_work' was n=
ot declared. Should it be static?
> drivers/staging/wfx/sta.c:1234:6: warning: symbol 'wfx_set_tim_work' was =
not declared. Should it be static?
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/staging/wfx/sta.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 2855d14..d19bab6 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -269,7 +269,7 @@ void wfx_update_filtering(struct wfx_vif *wvif)
>         kfree(bf_tbl);
>  }
> =

> -void wfx_update_filtering_work(struct work_struct *work)
> +static void wfx_update_filtering_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, updat=
e_filtering_work);
> =

> @@ -475,7 +475,7 @@ static void wfx_event_report_rssi(struct wfx_vif *wvi=
f, uint8_t raw_rcpi_rssi)
>         ieee80211_cqm_rssi_notify(wvif->vif, cqm_evt, rcpi_rssi, GFP_KERN=
EL);
>  }
> =

> -void wfx_event_handler_work(struct work_struct *work)
> +static void wfx_event_handler_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D
>                 container_of(work, struct wfx_vif, event_handler_work);
> @@ -521,14 +521,14 @@ void wfx_event_handler_work(struct work_struct *wor=
k)
>         __wfx_free_event_queue(&list);
>  }
> =

> -void wfx_bss_loss_work(struct work_struct *work)
> +static void wfx_bss_loss_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, bss_l=
oss_work.work);
> =

>         ieee80211_connection_loss(wvif->vif);
>  }
> =

> -void wfx_bss_params_work(struct work_struct *work)
> +static void wfx_bss_params_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, bss_p=
arams_work);
> =

> @@ -539,7 +539,7 @@ void wfx_bss_params_work(struct work_struct *work)
>         mutex_unlock(&wvif->wdev->conf_mutex);
>  }
> =

> -void wfx_set_beacon_wakeup_period_work(struct work_struct *work)
> +static void wfx_set_beacon_wakeup_period_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, set_b=
eacon_wakeup_period_work);
> =

> @@ -732,7 +732,7 @@ static void wfx_do_join(struct wfx_vif *wvif)
>                 cfg80211_put_bss(wvif->wdev->hw->wiphy, bss);
>  }
> =

> -void wfx_unjoin_work(struct work_struct *work)
> +static void wfx_unjoin_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, unjoi=
n_work);
> =

> @@ -794,7 +794,7 @@ int wfx_sta_remove(struct ieee80211_hw *hw, struct ie=
ee80211_vif *vif,
>         return 0;
>  }
> =

> -void wfx_set_cts_work(struct work_struct *work)
> +static void wfx_set_cts_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, set_c=
ts_work);
>         u8 erp_ie[3] =3D { WLAN_EID_ERP_INFO, 1, 0 };
> @@ -1234,7 +1234,7 @@ static int wfx_set_tim_impl(struct wfx_vif *wvif, b=
ool aid0_bit_set)
>         return 0;
>  }
> =

> -void wfx_set_tim_work(struct work_struct *work)
> +static void wfx_set_tim_work(struct work_struct *work)
>  {
>         struct wfx_vif *wvif =3D container_of(work, struct wfx_vif, set_t=
im_work);
> =

> --
> 2.7.4
> =


Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
