Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FCB12F6F9
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 12:05:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE1AE2153F;
	Fri,  3 Jan 2020 11:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEmsjskwTR99; Fri,  3 Jan 2020 11:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21B1C204AA;
	Fri,  3 Jan 2020 11:05:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B17B41BF376
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3A6487D36
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zkitaHqXoRKe for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 11:05:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700062.outbound.protection.outlook.com [40.107.70.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EBE5887D1D
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 11:05:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEWP7rKipD4Y+Ki9Gd82jaNMgnZP1uOWLGmtPXdHP5NC8+KuTbiXS8kjsdlqV+mpSKplpuyU2FHk0pCpCqQe5QEfdSsTIpv8vZ/eU9EQve0fthvvr+NHGuWj08ZwnB3VgB8a1zU0yULDISErNjtlfDqW+42mbU8iPN2cZeWZUyLEDrmZxTHaEjFwLYc0sOGH24ofLbYY4C1gAj3U0pYOjJXSAA3+Qp9Kh0OAWBMr4rt540skEfAXKWsClr3VBkefd2bhrkS4f4I71YnGNpXhdk5IiTF2KbMmM7ISLXbvUgerna99h0j4FzdJrfnvTApOdqvv+FUEGPeV9X5RlQL2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TAa4pxEUhjTn7Fz0hdC1SgooL5EhxD6HuZfMNNChnEU=;
 b=KPs17wJMOBb7OmfS2dwBHid0ox6tb6EGFugFZ+QemLCUxo8b0rGKnwPN4/SI+undv+40+HonqXLWtvm//HvLYwCYe0NZofFPSyPLVsyPS4lfkBjbAEFksFh8euigUn8CwFP1d56CduHLqSmiY7wnHdlY5SYBA1Fs/n0K4dj0J0f+MjeG0yzdFDcsWV7FblU+e9Be1zoYtplkEyO1HxwK0o5p9n57fKMATJDnQiWk/gdcAAMlCG0c5h0o8Tv3Df+STbMRqk7zM1U2kMpIAKXZSrr9Ot2cxUkKit/a/7MmfwNVERn4SV1CtcDChqnnqK+QIWOduNIQSYiQVjkbRhboJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TAa4pxEUhjTn7Fz0hdC1SgooL5EhxD6HuZfMNNChnEU=;
 b=m30RMU1OuxMfalrbtH5fUA4v9bX3KUxVor7jcwoSs0TudSaFu6eP6BtqDFVCKO65tM9zykZvbeorMBfYpFUpQ7NU1Z4fBeDXvGULWXLVaRlr/EKMJH89HYi6Ix+JPA/amIu3QDpvBJ1ZBXmVTDEtSP8gi9V00m0SNzIwpV18tgY=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4125.namprd11.prod.outlook.com (10.255.181.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Fri, 3 Jan 2020 10:30:22 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 10:30:22 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 25/55] staging: wfx: fix name of struct
 hif_req_start_scan_alt
Thread-Topic: [PATCH 25/55] staging: wfx: fix name of struct
 hif_req_start_scan_alt
Thread-Index: AQHVtDLHrXJIw8KXhEKG+rORdR0cIqfYx7UAgAARf4A=
Date: Fri, 3 Jan 2020 10:30:22 +0000
Message-ID: <50905928.71mObdnaeR@pc-42>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
 <20191216170302.29543-26-Jerome.Pouiller@silabs.com>
 <20200103092744.GC3911@kadam>
In-Reply-To: <20200103092744.GC3911@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8da04030-e909-40bd-2db5-08d79037f07f
x-ms-traffictypediagnostic: MN2PR11MB4125:
x-microsoft-antispam-prvs: <MN2PR11MB4125C4CCBA4CE9248ECC562F93230@MN2PR11MB4125.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39850400004)(376002)(396003)(366004)(136003)(346002)(199004)(189003)(6506007)(26005)(186003)(86362001)(5660300002)(66574012)(4326008)(71200400001)(66556008)(76116006)(64756008)(66446008)(66946007)(6916009)(316002)(66476007)(91956017)(54906003)(9686003)(478600001)(6486002)(2906002)(33716001)(8676002)(81156014)(8936002)(81166006)(6512007)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4125;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s/PtN3otIuJ7sgTyHcgeq4wc1ytyKPD8Ocmu93W9wHjguilC7eobn/Kik+q28XQ3YYXyvIRBFnzOgpskBAqW3D+M1Br4ZPCiFXkPzP9TIppjg7P8/H7SX2I30En31TK9o3dOHFUNgqGfhthlyJmV9hFnV8g1FE+s3uNdh7xdmZgCUEEhyNYcACgRafjDlqSTXB3QHsjC7Va1/SLiaRBtJbyVZYfhcL9wk237oN2V6dVtv9vXADm7gQwUEmsBMJYfYvtGkl/356WQ9FqwutImBnMPMWej659yAbR7q74+20+UalJKHVFzytXX+JRBGKkXIe7yH/YFsYAkUh1+FC6pBwszmrhZ8GEIQDigmX5dtKAkG9mwRREThpf6aDB/2UxArc25RhbAklkwW4FGpWnzGdmrkmBqd4MlnNs2HAb9W4T70ydbXYUf7yiO8VdqEtQ7SA2kpIaODLz79yHLJqcP1Wpsvoml8rLeEkUeIlemGwEif/VNELVV2y2wI2BLiAGV
x-ms-exchange-transport-forked: True
Content-ID: <9C9EB63A0D80AD4B93E929299CCA5861@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da04030-e909-40bd-2db5-08d79037f07f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 10:30:22.7063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6eXWyP15qyQ73Vi1arZQjzEbokUcL0hmDDx1r7wG4v4JU/OLTh3VBH8widZSJJkg2dFKnhbCb6Olfb65sdu6vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4125
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 3 January 2020 10:27:44 CET Dan Carpenter wrote:
> On Mon, Dec 16, 2019 at 05:03:46PM +0000, J=E9r=F4me Pouiller wrote:
> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >
> > The original name did not make any sense.
> >
> > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > ---
> >  drivers/staging/wfx/hif_api_cmd.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wfx/hif_api_cmd.h b/drivers/staging/wfx/hi=
f_api_cmd.h
> > index 3e77fbe3d5ff..4ce3bb51cf04 100644
> > --- a/drivers/staging/wfx/hif_api_cmd.h
> > +++ b/drivers/staging/wfx/hif_api_cmd.h
> > @@ -188,7 +188,7 @@ struct hif_req_start_scan {
> >       u8    ssid_and_channel_lists[];
> >  } __packed;
> >
> > -struct hif_start_scan_req_cstnbssid_body {
> > +struct hif_req_start_scan_alt {
> >       u8    band;
> >       struct hif_scan_type scan_type;
> >       struct hif_scan_flags scan_flags;
> =

> Why not just delete this if it isn't used?

Patch 47/55 start to use it.

However, since patch 47, struct hif_req_start_scan is no more used.
There is an item in TODO file about this:

    hif_api_*.h have been imported from firmware code. Some of the structur=
es
    are never used in driver.


-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
