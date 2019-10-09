Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2FAD10CF
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:06:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33BE520781;
	Wed,  9 Oct 2019 14:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0atXG9i9Q42; Wed,  9 Oct 2019 14:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B3BB22F4C;
	Wed,  9 Oct 2019 14:06:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10F091BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D4DA86914
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UkI6gUcdiEK3 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:06:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780085.outbound.protection.outlook.com [40.107.78.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DDC0186911
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:06:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJAibaNK/11jbBxvveiid2iaLQ5QtUegOUwYjj4ByCSOu6JM2nWwffuBvWIcZUbAiPa31qf6m0wj0bqfB6SvkH99Hcp743Pa0pHgtDnn693K7AMjuHXNJ8cKLRphfJ8gkuYaIz227VjZr2UNqFqaYJYRyfcXvckFRHL4Bs5KMfcwOjtwxK9iSBtVYEal1crHKD1MZW2q1rmFh2Lv+xp2DjEL4w0J1QfsZG3mwTLLOOedo49wL8H8EOUt7O5pAdB9Z8LMCxvJDtGOq1xQDzrkgULrI4Wk157jCjMfw/zYy4RuPG4s7NVTCKTrmSsiSIIZ3JgTcijJ0KYl7ws72AxTEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwVAe0pVIWbduqRWho3sAAmCBgHR8uabmoTlUXIqPIc=;
 b=CDmjuIVtMyJtDL4JAEodP/+XY0clxBNT1b1L6/Fum91TwE4rXJuqzBxSRUE5eEUap5BATy6SSMnJIJrRC2eNGEcW/Xpr8YXaJ31dyQ6wln+6ZKkjZr/BxXgdsewrBUxgAEwsFscvCdrYaHoNbIdl1u15rnjMqAe7J6+yXYztUEdbBaz9z/GTSyfs0r03au3EEMjqAznTP4eIXGFZB/dsxlUtsHfUtTtUCoZUWps2Mo5yN8tmLZCJ9c7WorQsqx0P7NpIRKK9rtAujbx5f6ZY4fxznzA0uMPnnICmLzNR3j6u6pYrhEdBwrs7CrDE6mBA+u5lAchoCZq4OzcF3Cy5Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwVAe0pVIWbduqRWho3sAAmCBgHR8uabmoTlUXIqPIc=;
 b=WJ7+4jX1ZVM6kT37/HLw2jHL9YFHBLIbE/VGYcNkKUmjSAlfQGcApBv5puxgmeItuoxJdXe2+IPOqF8c2iDPNzSvq5QrEPkc+pwucaWTqRlgch6sio4rej13Uzm6WoJoHa2l8tsUwpDw0GwmwBXJO/nxhky1PEt8kvDKPbzYU30=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4301.namprd11.prod.outlook.com (52.135.36.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 14:06:28 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 14:06:27 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] staging: wfx: fix swapped arguments in memset call
Thread-Topic: [PATCH][next] staging: wfx: fix swapped arguments in memset call
Thread-Index: AQHVfoZg5uodYV7VWEaEUqiihC082adSWG6A
Date: Wed, 9 Oct 2019 14:06:27 +0000
Message-ID: <1869130.EaR14QUEFT@pc-42>
References: <20191009094602.19663-1-colin.king@canonical.com>
In-Reply-To: <20191009094602.19663-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92037824-63e4-4a1d-7358-08d74cc1e0c6
x-ms-traffictypediagnostic: MN2PR11MB4301:
x-microsoft-antispam-prvs: <MN2PR11MB4301E4DE59EEC6996D12C65E93950@MN2PR11MB4301.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39850400004)(376002)(346002)(396003)(136003)(366004)(189003)(199004)(14444005)(66066001)(86362001)(33716001)(71190400001)(71200400001)(9686003)(6512007)(478600001)(256004)(486006)(5660300002)(446003)(11346002)(476003)(14454004)(66574012)(25786009)(7736002)(99286004)(91956017)(8936002)(229853002)(4326008)(186003)(6246003)(76116006)(66946007)(54906003)(64756008)(66476007)(76176011)(26005)(2906002)(81166006)(66556008)(305945005)(6506007)(66446008)(6436002)(316002)(81156014)(6916009)(102836004)(8676002)(3846002)(6116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4301;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pyiXl/ah8IDAZ5hS23Booc0fP5o2U9O1fwYmLORonu5RX20+Yr6Vv4hrpOf4Qy+lq7p6C56swwMq9b1zM4VrZMjcu8Pc448sD8iMt/6uerNKNByqT/GxPmugYCjGMEEGusH3x4Gc2JjP31ESpC3YikEBst2qqPR1b1lf2smRr3UQ7GIXWAcjvw6gJaR0XWdf05hHDDTkhtbXYF+eRc5tbB0fnm1JqpAlEGaVKJ4CoeSvgFU+dUPcLGdSCazE7NxsCPts+wDniwzy03Y/4dCGRjf+g/4bVm/i6jie3Exvwz7WTZNLsRHU6mjt5K9dYEHeqP8ZlmIsEdrXS14tllFVN9di83XGwpWnrcJlwkVhsF8kmmVvCFyAWgdm8rBFhF4fkZsdEBNYx5Dh5QauHavCagfqqUDQWuRrDICaGer8FMc=
x-ms-exchange-transport-forked: True
Content-ID: <C630EBC30323AF46A1E71D8F37B57B3B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92037824-63e4-4a1d-7358-08d74cc1e0c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 14:06:27.8226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ta8+jeZC3dGRupQ/AWV1fqnWKm+SnQa6PJqpi+RL3iPpShev+pQ+rqTseZCJMo062G+jpIkxjYASiwHXQGG5Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4301
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

On Wednesday 9 October 2019 11:46:08 CEST Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> =

> The memset appears to have the 2nd and 3rd arguments in the wrong
> order, fix this by swapping these around into the correct order.
> =

> Addresses-Coverity: ("Memset fill truncated")
> Fixes: 4f8b7fabb15d ("staging: wfx: allow to send commands to chip")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/wfx/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> index 8de16ad7c710..761ad9b4f27e 100644
> --- a/drivers/staging/wfx/debug.c
> +++ b/drivers/staging/wfx/debug.c
> @@ -226,7 +226,7 @@ static ssize_t wfx_send_hif_msg_write(struct file *fi=
le, const char __user *user
>         // wfx_cmd_send() chekc that reply buffer is wide enough, but do =
not
>         // return precise length read. User have to know how many bytes s=
hould
>         // be read. Filling reply buffer with a memory pattern may help u=
ser.
> -       memset(context->reply, sizeof(context->reply), 0xFF);
> +       memset(context->reply, 0xFF, sizeof(context->reply));
>         request =3D memdup_user(user_buf, count);
>         if (IS_ERR(request))
>                 return PTR_ERR(request);

Ouch! I realize that "-Wmemset-transposed-args" and/or "-Wmemset-elt-size"
don't catch this case.

Thank you for your attentive reading.

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
