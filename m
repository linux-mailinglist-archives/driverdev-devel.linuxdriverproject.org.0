Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB7EEDCBD
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 11:43:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB80A8A59F;
	Mon,  4 Nov 2019 10:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hpV268VRjoHh; Mon,  4 Nov 2019 10:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E8DE89EFB;
	Mon,  4 Nov 2019 10:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DDD81BF361
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A81F89520
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoTv3J3O6I6J for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 10:42:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690076.outbound.protection.outlook.com [40.107.69.76])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6FE98942A
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 10:42:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6dYBOrnWDXfKzX3Y+F+yOQJtAYP0UcIitpq12MRlrawMQwWN2quwbi0h9dzXmK5szyWbuX+G91aqGf4DgMQkjm7IvAqd4xqI5XmtyS6j1RYosVfioCWNU+pfYHK0Okf0OKhg0gFoOgvC7Wu0bibpqVwaA0nL4nFAnpNRlm4bXN8Rg+1PMOQyKKzFsDHEdEuUHgKLLd2/VSI9RlU121lMFFKHBbveeEjBGjMnc33vZMZ9E6iL8bLX39FkkPlplwaaSgAwdv9BK+241jk+DkXAwAwo/5J2rJ4SpohOu02x8UGxHj1eypXwa/yX7vtt5Ix74EMODxBP5x07KEYYj++Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmkjvDdtKQuPq1yUEIO8x4ZW1xaw8Na9cLKO/kK3iJ0=;
 b=QWvWnzKTIsBXJbFzfQ0vee7bQPi2b8LRH8ryixcT111EesOfTqz/qRL89qxngQBz6kuzrB3IRcy7I9LC4RJBy7BlvKl+qXPRls5Dy9725KAoNfZQmtEwuQRhHIGYSfpGQJF7VnJLZkUjwXGnSkzWEF/aFECC+8loSESZaIVHxnDpvebAPglkCmfAiaZj49XWJl7CbHpaGAWkcO2+8vl+fCMCeqWH+CZtwD4HlD3KYuGCvAtzSHATmEzVUtLGvCnDuBH2Ec6wEj6YGcnBZqgxR+8x9OQqGHL9AxXjYSO9EANbH5NLz/neWO5ir5gWWvVK0jNQX4jXfGKo2/11SuTECA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmkjvDdtKQuPq1yUEIO8x4ZW1xaw8Na9cLKO/kK3iJ0=;
 b=SU9mRHyWVyWGjF7H4rhh9pY/qJv27mT5bqpe0EE6wSFTYHPFM+KtiIX8v5CsCBFzoizzWsVqa0GM3dHsloQXtx+LMzBBISNWIE9GiNngN0K822YiSssKcqCijvrFGEUCUMXzhoJvGMvz3FmaTImZtX0rL317XusFOasoWKe/kqY=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3982.namprd11.prod.outlook.com (10.255.181.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 10:42:44 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::90bc:abcd:689a:944]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::90bc:abcd:689a:944%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 10:42:44 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v2] staging: wfx: Fix a memory leak in 'wfx_upload_beacon'
Thread-Topic: [PATCH v2] staging: wfx: Fix a memory leak in 'wfx_upload_beacon'
Thread-Index: AQHVkZaVoon8l9RIOUSEZom4oapW06d61f4A
Date: Mon, 4 Nov 2019 10:42:43 +0000
Message-ID: <4126113.6ZGdBP45BV@pc-42>
References: <20191102155945.20205-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20191102155945.20205-1-christophe.jaillet@wanadoo.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f46012f8-f492-4a25-caf1-08d76113b9ac
x-ms-traffictypediagnostic: MN2PR11MB3982:
x-microsoft-antispam-prvs: <MN2PR11MB39820A10AEFB0EC0463B21C3937F0@MN2PR11MB3982.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(346002)(366004)(136003)(396003)(39850400004)(189003)(199004)(186003)(4326008)(2906002)(229853002)(9686003)(6512007)(3846002)(76116006)(66946007)(14454004)(25786009)(33716001)(316002)(99286004)(81156014)(4744005)(11346002)(446003)(91956017)(486006)(6506007)(86362001)(6916009)(5660300002)(76176011)(102836004)(305945005)(7736002)(66556008)(64756008)(66066001)(54906003)(66476007)(476003)(6116002)(66446008)(81166006)(6486002)(478600001)(6436002)(6246003)(71200400001)(71190400001)(8936002)(256004)(8676002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3982;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Y4g5SZSngmt78pi81PVIJYlZvEfj1vRFXTqk4rDjXqnECvS4rBYV26iWpp1SPN9N/sxrBcSrLDhUz/nf4yMZzBKsciebHjJlk4hKwMuVWMnSDlVF7ehmd2ITjAiqRL81Ntp28JGXSWCZf59WMY0zmYHWof50DllZhVNkfXAafnKRhmdlSa/Wg3jrOn4Iy3yXkE/F6Gunqz0Q5dTl17RJj5gz/vLUqfUrmtrXaZsqWRZKyJRuyO6xwXt4+OG+wZ+hsFfVrVhsGabDG6lj9EjW2uWLZGKbSMgbEUJ8NrfZYf7KOkdpdRBiE9ZE163grouSPts0ZvbTGvdOgizDMLPu7FmDVVkomcqw+uaa2l+CcRHWfwCEcmMOVmiGkiSOdYeXmKGDHFzLW7PvH121XMRpS545bFLrPk+FvTA5Ps35iGc/Y4EIwRC89fQUSiT3ZDm
x-ms-exchange-transport-forked: True
Content-ID: <6BF78F1C0FBD314AB333EFEC2D870938@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f46012f8-f492-4a25-caf1-08d76113b9ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 10:42:44.1387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4BHwK8LSzXf8injMpK4uMKfHMtD/wQS8cUjH4nAYPhMshl07TpXrXxgFmsG0L5hRTQMYzn6TGPIju9ZsNurkaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3982
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Saturday 2 November 2019 16:59:45 CET Christophe JAILLET wrote:
> The current code is a no-op, because all it can do is 'dev_kfree_skb(NULL=
)'
> Remove the test before 'dev_kfree_skb()'
> =

> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> V2: remove the 'if(...)', 'dev_kfree_skb()' can handle NULL.
> ---
>  drivers/staging/wfx/sta.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 688586e823c0..93f3739b5f3a 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -906,8 +906,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
>         wfx_fwd_probe_req(wvif, false);
> =

>  done:
> -       if (!skb)
> -               dev_kfree_skb(skb);
> +       dev_kfree_skb(skb);
>         return ret;
>  }
> =

> --
> 2.20.1
> =


In add, value of skb is tested earlier in function. So, it is guaranteed to=
 be =

never NULL.

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
