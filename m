Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C1C1BA2EF
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 13:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65A9B87D05;
	Mon, 27 Apr 2020 11:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IeRkG4ezsOWw; Mon, 27 Apr 2020 11:50:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5AF0087D09;
	Mon, 27 Apr 2020 11:50:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68CA61BF3C4
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 11:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62CD08638F
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 11:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pEVgDZ7M01ms for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 11:50:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2071.outbound.protection.outlook.com [40.107.237.71])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 167C0862BC
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 11:50:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbbtRDq8VWL2xwfcqib2LNVzOZesT04o7UAkOmwf06TF1orrLNWpuq7yCZYhmc9V7ttfDe1owPpdpmq08RTY+J61FBSQgHxLdaBTL08Lflw0Fa8ulvjZP1t/nN83Rg5+PUzBa0ncsEqnEUIKofNtUnSv7iC9sSHANsC4ACSsy89sQpN8tpMssZxCFQ6uZPRnUzMgObexTR36kIBJdOtrXK3EuGSuaZ2nJbJ/uneQASndT/yyCkg3Pf/leXM0QLf1DjSpv9MVvUE1U6w9XKByyGg3skKrOaJ23aquwnlA7VbOcybViGqDZOAJqvLV1VkQayI3Mu1tf2L8vBEkAgY7Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EGnLtOC1QmyFVeiI8JAoybh2bejftHJC2AzMZW0eDqA=;
 b=L6FN123RPwqNyNji49Q/WkPsixMLJSt4DobrA+/kYYm3I1WnYwqREQ8BtxQi9awwBMmnbRd/qpxpiSZuwIxV3OGOZz1LT3Mxpj1pZ9S+/i7JD6Z31KPKXqL6FX8aQe9nTFceuT/HDuM3kpQPouoLphOml2T8HCBxFKuhGS7jFQknPZqGASZGoDtrc0nbl9uR4PGCtpUKAeai97Kf3BNUV66F/SUSQg3XM+wg0wi2dZgnA3RIzdAExMBRCff0/T0x5K+JHXASm1SykWzMu+JkroUpwwoWavpU8RyfA/ig2w2GpNqMW82h5h6YBwXIkKyd5CyPbsJfzYuLkTnkZY/sdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EGnLtOC1QmyFVeiI8JAoybh2bejftHJC2AzMZW0eDqA=;
 b=dbjPJLZSgssisorQQxPmwlJNOr3uKwO+iY76sx1xeJf9z0wYEbtIZqalzRqyXXifM8EuPEaNJ0xgxrxoroCF7oPStL1syiGqXzxc251A+IlbLqYFQkbeGqd23Uw5/AWCx3FBscyJQKmxPfPwPWkR9SlHkgGbrRIW+9TDZ5Z94Bs=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB2015.namprd11.prod.outlook.com (2603:10b6:300:28::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Mon, 27 Apr
 2020 11:50:23 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.023; Mon, 27 Apr
 2020 11:50:23 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v4] staging: wfx: cleanup long lines in data_tx.c
Thread-Topic: [PATCH v4] staging: wfx: cleanup long lines in data_tx.c
Thread-Index: AQHWGvVCTTezREStl0mnzKLBZcOww6iM3iSA
Date: Mon, 27 Apr 2020 11:50:23 +0000
Message-ID: <8518467.FNpd3NTrYF@pc-42>
References: <20200425113234.GA14492@blackclown>
In-Reply-To: <20200425113234.GA14492@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45059969-2d0e-4e7d-7a79-08d7eaa12b9c
x-ms-traffictypediagnostic: MWHPR11MB2015:
x-microsoft-antispam-prvs: <MWHPR11MB2015AACBE1B596E04C1AFA4393AF0@MWHPR11MB2015.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(396003)(39850400004)(136003)(346002)(376002)(366004)(6486002)(8676002)(66476007)(33716001)(66556008)(64756008)(66446008)(6512007)(81156014)(316002)(86362001)(26005)(54906003)(66946007)(9686003)(6916009)(8936002)(186003)(66574012)(6506007)(478600001)(5660300002)(4326008)(76116006)(91956017)(2906002)(71200400001)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gGHjkJjlYM5NP2GrmFr33qcQdJgvtsxvnyddn8mH1k3zfODAlnxNpyYG6TmlUCJPRtjXAioEU2Az3Yq9AZnRiR+S6VW7Fhj2MPynzK6Y0Jdm/QwhieAb5xJMjb/6aFNIVrdgHZkvnewGP6y7UFxTtrxbkuDytuplpDeQTk6FpfdEgY254otQI9LUuqMoUOznNmn5gurSvu4p5+4XtIcmPZzCU0T1i6FclruutyBGwe8d84uZ5Fj9oA5QiixLe1k4tIKhQK3MNQkwWLeUCP1kJYhteiUVEyw5+RHFBNf7vTNcuaE/ImU+wMfbJgARMA/BvmbjR6csLPbsZ+IzOeFBtuWUc176DlOvpuDBHGxPWlQtpSmxewTlLFuACKuYtuaK4y+ytRfoxFCga+xT5U0hCM4AU1zlaihC+roEGlihcwEbkUAa1lnmRbqPCuWR74QPumtKTW3Wa8ZO3ZUcZFwX8K5K9aMVUbB8B+qaKmxrLRIx3k+AxDr36awob/LihNUN
x-ms-exchange-antispam-messagedata: lZmIoAhY/1dDXEud+CWt5Dd7ToXmnHo7xvQbI5ZIb7t5cBGYwWFGKRnc2m9ay17m9uK7zQeEy58emtLltmRgWRg2lqUJT9U/tS7WndyjKXvihfxagVxvOVOrEwDZtZi8s2NsQt3rEk6KswaO+jsunPQV4SEnmqeLg3+Tm/CCrrMnmRfHzcEtX0qr9QJk1F6u6ipNgXpov44ZjoboZSS3OaVcUHPL4q9qFIxefOYbPG/EtsGRytsrkwbYMbX/c1/zBfJFEo3QGERJzVcDA3Buq2ljx2wABiz1wn22qv/iJHK41EDVAiU5SBHR9I56u1aKwnHj0qvJ2ySiLnKk7C8yMvAdXZ+As8jOg4zkMOEQWc/pnjWTNvWNUL49FsjH7hrM8J7IUvik/7Qa7FEKqnwL/GDzk0lr+gIfR/I7qf42pBP4fab79GIcMQmMMkZkdwWIVJW97v5XjSV7nJbskxQRXSN7ov7/DXYyeC+4ajdOwn+Ws78EwNdiTaPphVLDpq6PU3dR7oeY3WSC4KvG9zEwOzElJLBpekLXlkFDv3DV32kCBlZ3BEJRU9P6bBWKjlJBRf2MGw8F/gwNtJ0VReBpwqtyjrl6JX4AYil6kle0NwlkA9NTs2/P4aNgIEy7nx1DnucSWHJrx88yxgzwlldgSDKKxnBTHdho40sSNtAgi73j2E7NNXLnwghMdWc5FaWnlccBkauT//nJuVtZHCc8DM3FvTDrHxi7iLsULusZ+CUn6Hfp8A4/6TJHyE3WbeqSaQc/uvXeBuLofVpvVVsI9cUiE6QRfrIIaSyMyEGm2wU=
x-ms-exchange-transport-forked: True
Content-ID: <6A2DEB847822C9418087D29A1D3D10FD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45059969-2d0e-4e7d-7a79-08d7eaa12b9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 11:50:23.8034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hbmcLu6mOb73hLEYfj4onXntaQcNaMLJBI3pmQZHScwB4bQqo2BhtUzzx4YZJCsHm1sqVOS4KZsssRfC6nfK2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2015
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

On Saturday 25 April 2020 13:32:34 CEST Suraj Upadhyay wrote:
> Break lines with length over 80 characters to
> conform to the linux coding style and refactor
> wherever necessary.
> =

> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
> =

> Changes in v4:
> 	- Added a space after declaration in wfx_get_hw_rate().
> 	- A checkpatch warning for this commit is retained at line 75,
> 	  to maintain uniformity in function declarations. (Reviewer
> 	  jerome suggested).
> =

> Changes in v3:
>         - Changed the temporary variable name for the memzcmp statement
>           to is_used. (as suggested).
>         - Added a temporary ieee80211_supported_band variable to address
>           the problem in wfx_get_hw_rate() more efficiently. (not
>           suggested, but still).
> =

> Changes in v2:
>         - Introduced a temporary variable for the memzcmp statement.
>         - Addressed the checkpatch problem with wfx_get_hw_rate().
>         - Restored the function definition of wfx_tx_get_tx_parms
>           as suggested by the reviewer.
>         - Added suggested changes for req->packet_id statement.
> =

>  drivers/staging/wfx/data_tx.c | 40 +++++++++++++++++++++++------------
>  1 file changed, 26 insertions(+), 14 deletions(-)

This patch does not contain the suggestions from Dan. However, it is
sufficient from my personal point of view.

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>


-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
