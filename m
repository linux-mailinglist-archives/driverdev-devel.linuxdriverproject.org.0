Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD4C1592D9
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 16:21:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50E6B8687B;
	Tue, 11 Feb 2020 15:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jADXQVRxa96l; Tue, 11 Feb 2020 15:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F1A686838;
	Tue, 11 Feb 2020 15:21:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C67BA1BF86D
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 15:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C23AC204C4
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 15:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJTpx6q9Vg3i for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 15:21:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2052.outbound.protection.outlook.com [40.107.93.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 5C58420022
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 15:21:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKuU30cHVWFZOFpZ3YnIs9XcYZuegvyVrMN9Y47dThDeDSNZkvoYaW5JdJkRo/vVkvxQrq8DKrNClp9ghA1o++a6UYljazfAA7n8qzBWTdi5e8VOajONqspId3MS9nqxx5MmST0M72AdWHTiPodD6UoJtAToImcBngS2Xvyi+ehN+MTwIgeyR/QjKmtWAu7Wfl5f8U4+Hs4Mx/oI5RpsGU8cCNuXaXC8xFB8F9x88bA9E225peYSNycr6m5sDq+1giRCH+a5rf3IP6LLVGONfAS5T9fGYyYyzT9J0GHwrimNDeMYLuN2LBptLvojHbmYRvrrhS/NRH+2axAo2CsT4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Vl2wP++RxKB545R5NmJFzeU1/TFh4gXRZBAzZvew7E=;
 b=hIhRUHKGHKHOlNSnKLbbySF4zqTzPYj/UNs7LD8oDin5RG0zZl3apek3zHEkwD+apmGqXVXT+Gk4aXP9b1zVkbeh83a1OOJ6rKdrZBo3a3o0NO89H8CD1DRnI3aXiAfWV3aYCPrSmQVDFtICHJSVkaG9hklsi6cEUOTVotFL5bjOh1YaNHsGffOxfku6qn9b3zlXAUWPIDO9p9xuer7yF+MFVL1g+N7S2ZOFylUXVrMOqbeWi34TRWLE0KOjoB/dlSMRJm6QndIvMbBL6aHlfjQqY4h7nyGd4/oWjjAD+nlvidQZsq2R4C3GIPJrEcgVkv8lRsSlSxk6g/cm5hEqzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Vl2wP++RxKB545R5NmJFzeU1/TFh4gXRZBAzZvew7E=;
 b=AC5K6EjspZ7+SqSiq0AihaNen16RU6qPQTzp3Z3m0DM8EBNc4QKeljgGhtLrzaQ5YxN8+XJwxj1k83uHqHCoSs5QxFaZg4MqjGNMmcfotsieFgmGicx0jNQS5EQl9ucf4qfypmjMMwF0miQCQVslZLUtaRMd/KsoTbnsbOtimkM=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4479.namprd11.prod.outlook.com (52.135.36.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 11 Feb 2020 15:21:41 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 15:21:41 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: wfx: remove set but not used variable
 'tx_priv'
Thread-Topic: [PATCH -next] staging: wfx: remove set but not used variable
 'tx_priv'
Thread-Index: AQHV4OR7Gte2wj4gBkWnG+bg+D3foqgWHCEA
Date: Tue, 11 Feb 2020 15:21:41 +0000
Message-ID: <7641155.kNzuLtrjOU@pc-42>
References: <20200211140334.55248-1-yuehaibing@huawei.com>
In-Reply-To: <20200211140334.55248-1-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4e67687-94d9-4cf6-757d-08d7af0618f0
x-ms-traffictypediagnostic: MN2PR11MB4479:
x-microsoft-antispam-prvs: <MN2PR11MB4479C6F8843F0ABFD1DC1C6993180@MN2PR11MB4479.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:191;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(39850400004)(396003)(366004)(136003)(376002)(189003)(199004)(6916009)(6506007)(66574012)(33716001)(5660300002)(186003)(4326008)(26005)(478600001)(71200400001)(54906003)(316002)(9686003)(8936002)(86362001)(76116006)(81156014)(2906002)(8676002)(91956017)(81166006)(66476007)(66946007)(64756008)(66446008)(6486002)(66556008)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4479;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FVwR8J54688jQw5yw9pM3bssUw+qCaJrj+pXFUG8hnKjD4IhyN5J0haOPefEJeQ/yLFc1Hcyx/i2Aw/4Y0VfnNusFtR5daWnPFcd/ezYhPDAqUWvW7Z/b2IRsW7VmzylY6Rd85RLJPCRiyNM4/ggGpE2pnCxGSff0zr/6L1yhJ9vwtXKl6tbQ7bXSyLECeeIgXeJ97EWy3dwAuVmelEPaI6oaCM/jGUQUDFRlYWUrvxKgimHADa8vedOOXy202clTkXnTnGf2nb5jrolbvUBvjQR1zrADCjM5WpUh+gdwYHDL3v1YURrg+XYIhWRWdRph37zHU5xqyXPv55YAH+w3NcY+gYNyCdgZvF7oE5mAbcgoQtLI3HXzek07yz9Ge1CKYsZghqg3PvWJO3uDZ0WQ/JaC8AJJfsKI0rn8FIMiXJ4Lj7SrzaCxhb5Idywd71O
x-ms-exchange-antispam-messagedata: mRA7To2fV/MOjNU0HXmgv9+3+EDXwD4HGOja0qaf7Jsa1pOGSrIMwaZaWb+EjJF9OTmRtSSBrRWMH6f/vqv5deXPtwVAlWPLUClKjL5qRg0P0HgxnM2gCUiCC0NTqbXGBn5JPsonUgWJ4uf6Y/m7YQ==
x-ms-exchange-transport-forked: True
Content-ID: <DE80FBCAE647C54DAE3DDFBD380973A0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4e67687-94d9-4cf6-757d-08d7af0618f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 15:21:41.7631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GGiOwh/FkIUcwnR6+JZZHvYT3I1vMx1vlyO79wXbps0Sajt3zuohF2PPRSbqKD29bWWH01AbLMbsLIXpTzXvBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4479
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 11 February 2020 15:03:34 CET YueHaibing wrote:
> drivers/staging/wfx/queue.c: In function wfx_tx_queues_get:
> drivers/staging/wfx/queue.c:484:28: warning: variable tx_priv set but not=
 used [-Wunused-but-set-variable]
> =

> commit 2e57865e79cf ("staging: wfx: pspoll_mask make no sense")
> left behind this unused variable.
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/wfx/queue.c | 2 --
>  1 file changed, 2 deletions(-)
> =

> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index 0bcc61f..c73d158 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -481,7 +481,6 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wde=
v)
>         struct wfx_queue *vif_queue =3D NULL;
>         u32 tx_allowed_mask =3D 0;
>         u32 vif_tx_allowed_mask =3D 0;
> -       const struct wfx_tx_priv *tx_priv =3D NULL;
>         struct wfx_vif *wvif;
>         int not_found;
>         int burst;
> @@ -541,7 +540,6 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wde=
v)
>                 skb =3D wfx_tx_queue_get(wdev, queue, tx_allowed_mask);
>                 if (!skb)
>                         continue;
> -               tx_priv =3D wfx_skb_tx_priv(skb);
>                 hif =3D (struct hif_msg *) skb->data;
>                 wvif =3D wdev_to_wvif(wdev, hif->interface);
>                 WARN_ON(!wvif);
> --
> 2.7.4

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
