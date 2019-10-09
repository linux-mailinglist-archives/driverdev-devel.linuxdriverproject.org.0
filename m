Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF5ED1110
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DBE486914;
	Wed,  9 Oct 2019 14:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ux07ydRT-fOQ; Wed,  9 Oct 2019 14:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7F9585495;
	Wed,  9 Oct 2019 14:20:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CBA01BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49BEF85B7C
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zCTiRrDfD5BY for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:20:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820080.outbound.protection.outlook.com [40.107.82.80])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C076F85ADB
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:20:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+QpuxuqWpHNa9vpNkQR4mjP3Q7A9YT5dwD9A6HDqLO1+E8O7O6qgYqWDNC0F6IDRU29i4MTV/va9ZRtCfpb6baYMiFWm4uCKiOvsI4uMjHwHFUW30/Hn6RgoOCT6EEj7z6Vn/WQIJiFR25GJbR7Xe1k3Ituq/CYxoPmp6j2emQfJiT2lwhqETwwFtJTs3OUsORE5x1GWNMCTSWqhtN7+B79m853C81zVs7TR55UxERO+teKKktBgmCKLcmilhoHkzQsAPgS/kPsdcM1iK9CosUIVE1ya8Qx3bgIkxn/jtqOP4CCBk9wHH05zpPKvSsgBn90X4+Gaxt1lEh37nFl4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FnLmmYGOFuTlGOnQ5tOTIeTQviOmqsqv8TyD+ZaiuU=;
 b=ZSe3+Twe01utAvvt8ItzI8dPP0IaCXYkEe05Yei+LjDzw9xox6glRooLMriB7oQZgQlrpdRSlDdQwD4OF4hcPCrolh7ApFSeCjvwtbiTPJ8wlRGt7tFQf++Ls04ltFrzgMMKI7qDTEKbvdyMgNZgWeUd5tp4+fuqhAZJnrlzc3kRFUxUwKCoOl4+H00EVIriqad5LDafmvruRx1JU8RJ3sZTTAF/JZvqeO7/jOx6qg7wfC+ko5vxi6g4YfS/dCO+VK1vk5K8gWDca0q8S5g9CW4BHvRRXE0o8xpbTJbqDm9BPok+UvyABifJNVRgvb3XAnal1sf6NC3oOLUNZ6auUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FnLmmYGOFuTlGOnQ5tOTIeTQviOmqsqv8TyD+ZaiuU=;
 b=k1jrhDMJY4laLokaHZ/P3sFvapDhefOcyCbmpQXrHjIYgRbONd99FO+sANlwOZ48iAG4JctelXyAWk9F7NpQCAU7rr3Rg80t4w/afV0PfDvWWut1mlIil3/Kn2txTr8JwxqeIAmhLkng7li9u2H7aKbN06teDMqh2DItrQhGjRU=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3645.namprd11.prod.outlook.com (20.178.254.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 14:05:00 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 14:05:00 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH v2 2/3] staging: wfx: Make function 'wfx_tx_queue_get'
 static
Thread-Topic: [PATCH v2 2/3] staging: wfx: Make function 'wfx_tx_queue_get'
 static
Thread-Index: AQHVfqeMHiyKfRsDpUiFC7RN8fbpWKdSV8OA
Date: Wed, 9 Oct 2019 14:05:00 +0000
Message-ID: <6064386.gearTuvasE@pc-42>
References: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
 <1570629030-29888-3-git-send-email-zhengbin13@huawei.com>
In-Reply-To: <1570629030-29888-3-git-send-email-zhengbin13@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e14f43c1-ce64-4ade-1fc2-08d74cc1accd
x-ms-traffictypediagnostic: MN2PR11MB3645:
x-microsoft-antispam-prvs: <MN2PR11MB3645351517DD888EAA351C5F93950@MN2PR11MB3645.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(366004)(346002)(376002)(39850400004)(396003)(189003)(199004)(99286004)(86362001)(25786009)(229853002)(6436002)(478600001)(76176011)(6246003)(64756008)(71190400001)(66446008)(71200400001)(305945005)(14454004)(66476007)(66556008)(446003)(11346002)(66946007)(66066001)(9686003)(5660300002)(8676002)(6512007)(316002)(81166006)(76116006)(8936002)(256004)(66574012)(6506007)(6916009)(81156014)(91956017)(5024004)(14444005)(4326008)(102836004)(33716001)(26005)(2906002)(7736002)(476003)(6116002)(3846002)(486006)(6486002)(54906003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3645;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fg8+bMDNATstZHKpKdbQbmzedQkOkSYaeQDll2NUk2WDkf8Rwp2cF/IIq9NJfZjqAA90WglkRcm7Wt9lqCEernQcL4LcIIFqVrkvDuldL648bkwaZNGScpAhGeUAQyM5cWr+SP/8y7VWlBS4K3sJokMoj8WozHr7h5J0KpsaguJu3IR5k9ifA6TCYGWmtYGtqlb4Dc56PZJ2Coo5jQH1bqQo6VuU70NGOoWwlSCAAUueyrL1bMbqD1gv1b4vHJezO+kelcpv/8JHC+o1I0OzNBrnzrqVt+jLALZOEyi4lTJ6Y6e75qVlUXewWm1+0m9cdphN5XnE1LQLzYPy6HrMVYlCqbpfcG8BxEILTFHhzvg+TuA6wv/3zPcXH6cZ0WaGfPN/Mf7pppgsNuVfWEuYzago1GagF92HvHi4t7m35Hk=
x-ms-exchange-transport-forked: True
Content-ID: <A73B836C8E1C3148B54FB9E964932A5C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e14f43c1-ce64-4ade-1fc2-08d74cc1accd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 14:05:00.5998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0ctssEhLBoR02z6anFEDzqcLivgCxVN6/4EzDIHa/8pwlX0ke8p+4BMnUS2d2kifJAckKYJTdPdrVpQntbh8A==
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
> CAUTION: This email originated from outside of the organization. Do not c=
lick links or open attachments unless you recognize the sender and know the=
 content is safe.
> =

> =

> Fix sparse warnings:
> =

> drivers/staging/wfx/queue.c:218:16: warning: symbol 'wfx_tx_queue_get' wa=
s not declared. Should it be static?
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/staging/wfx/queue.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index 6f1be4f..c44ffdf 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -215,7 +215,9 @@ void wfx_tx_queue_put(struct wfx_dev *wdev, struct wf=
x_queue *queue, struct sk_b
>         spin_unlock_bh(&queue->queue.lock);
>  }
> =

> -struct sk_buff *wfx_tx_queue_get(struct wfx_dev *wdev, struct wfx_queue =
*queue, u32 link_id_map)
> +static struct sk_buff *wfx_tx_queue_get(struct wfx_dev *wdev,
> +                                       struct wfx_queue *queue,
> +                                       u32 link_id_map)
>  {
>         struct sk_buff *skb =3D NULL;
>         struct sk_buff *item;
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
