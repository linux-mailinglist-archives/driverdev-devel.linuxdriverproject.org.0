Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A624131C67
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 00:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2EA38829D;
	Mon,  6 Jan 2020 23:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJckjGjx8VfU; Mon,  6 Jan 2020 23:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B313C882A0;
	Mon,  6 Jan 2020 23:34:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 759021BF2CB
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 23:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71F8E875BB
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 23:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCyTRr-5qEWp for <devel@linuxdriverproject.org>;
 Mon,  6 Jan 2020 23:34:14 +0000 (UTC)
X-Greylist: delayed 01:31:56 by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130041.outbound.protection.outlook.com [40.107.13.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B63E5875BA
 for <devel@driverdev.osuosl.org>; Mon,  6 Jan 2020 23:34:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQ50NyHK29Wbc5Y7wj0xi8JcUZyZdlI1nijZmrb6FJfuHiXbtDxNS0ODDy32PhmECZuqF+0zyk+QYQLNefUc0Y8FG1YGrlEwSpIKxery7GU2RrlW7PAz7xcxmgelBfZPujcjIGT/y8GA6cBkptNQSQu0/vRpNIbNNus2NqDMDp/dkNQ6ygNFBOGxG3JEC4xcinvYgx8rbwjZLZIHSFGMK6Uvygxc92HuZYu1uGqtkNAd6A1JNF0f1O/34yZRpKncTh+CyiZ05pDf7KdMDvHtYnRzmGUNtEMJxMMyf0x5tHbSAZIRl0rG3+KKYxqlCr5JAhMjCGazq0TGPjA4ayyJ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z+L5qijav7he8rWpcOccRIJnClIyxmvvUA7lloOZYiI=;
 b=ftEkY55f+DViU754tOldYTXh+eaoJ2nDxyIUayX/ByTe40pNTYxORsDMEsnuTIw2von9+sB+jeI+dBMn0pWNizNVmsguvj+BD5v72Scz4WsdHkgwWnEHOgaCWRb0P/9yeffSd9sMZFA5AWg0ejhBuBx9mHOuKy2T3phQ0NNWzAZSiig2888wsKfpfPfl3YPdBKJ9xOdrIaxxGVyXpWjhthRbtDisWFTrP/ZQILGmWJubpUZTtFUya1Q3lCrLixPb84AJ0SFBCpS7wbCLOmW6suCrPy4AcBVX+9s4F3/NxpxX2AGbjMPYo0ztn52/lA/QoJrEaZDqhJs9dHtHNVdVkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z+L5qijav7he8rWpcOccRIJnClIyxmvvUA7lloOZYiI=;
 b=Z8dvVbL2h6BxqLbB+Hk7OeTH43GRP1r88SXvy795G+KNEykS+n5OEwsIIDuBLnc0ckwn/tb/VijOigmsxzwiPYEzAxfNp/k5p1L3PUq2JWyvKtAuEx6WY9yEchkbEc22W8rgVH+jTzqqqiKQWvvMz/VBpxDNfGCcK1yly1PzDOw=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4523.eurprd08.prod.outlook.com (20.179.42.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.14; Mon, 6 Jan 2020 22:02:14 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::11b4:6ffd:de3:a862]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::11b4:6ffd:de3:a862%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 22:02:14 +0000
Received: from jiffies (54.37.17.75) by LO2P265CA0392.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11 via Frontend
 Transport; Mon, 6 Jan 2020 22:02:13 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 2/5] staging: vt6656: correct return of vnt_init_registers.
Thread-Topic: [PATCH 2/5] staging: vt6656: correct return of
 vnt_init_registers.
Thread-Index: AQHVwiajd/pv82mUH0mSzAuaSNq2x6feNY+A
Date: Mon, 6 Jan 2020 22:02:13 +0000
Message-ID: <20200106220205.GC54084@jiffies>
References: <072ec0b3-425f-277e-130c-1e3a116c90d6@gmail.com>
 <20200103110950.GE3911@kadam>
In-Reply-To: <20200103110950.GE3911@kadam>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0392.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::20) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [54.37.17.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb27f609-1f05-4db7-34d4-08d792f41628
x-ms-traffictypediagnostic: DBBPR08MB4523:
x-microsoft-antispam-prvs: <DBBPR08MB4523C8605BDAB0D2EFEE5081B33C0@DBBPR08MB4523.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:356;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(39830400003)(396003)(136003)(199004)(189003)(6496006)(52116002)(8676002)(86362001)(956004)(44832011)(64756008)(71200400001)(5660300002)(54906003)(4744005)(316002)(55016002)(66556008)(33656002)(66476007)(9686003)(66446008)(66946007)(6916009)(4326008)(508600001)(2906002)(186003)(26005)(81156014)(16526019)(8936002)(81166006)(53546011)(55236004)(1076003)(33716001)(9576002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4523;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DliHdmAp+tQJvXfHi8Hyhq4kKrYSHqmew0MXJ7qHejNsFXSiG6gCNpYp8xRjrUw2nPVo6auB5HWWMn9SBhVOKDRsknfGAHTvNOoAMS2Fd+xNyLQ8FEn+XIKUpFlpBzYrW8Mn+g+phV7KOY2uKGtctnsiQx/jgrYRJIe4D8SIiLKFiopRpJeZgEZ2MWI99MJch3cfNyYXiZZeEVXRhGfRSLmM5fjyUB2eszQD8Ai2irfr2Eg25qXvhhOvODNEpJBR4EJC+Stuzuv6VIYBmvUUqU7tOE8gZUZraflRyXiqIUHpz68hg7d/dpMmbs9k4sSsI/jtUTGlJ7Si4diu1pAyw2nVCfcfp1wTW5JWWnDofQGiOrsfgFkPOyPj5ZgLkVloc4cWWQjj+beQsjgBCFWK9xxt/pBWcBWp+bOl97hU9MHzZZmt0fMZlanMvGA71CbK
x-ms-exchange-transport-forked: True
Content-ID: <B2746606E7D1D14D8927DC23E1DCCD03@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: fb27f609-1f05-4db7-34d4-08d792f41628
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 22:02:13.9542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WZ1pgCVGh7q6dy0VL9yVPtQOgVOAYrnng/+nvtch5e9QHqeoBYCbkEJpjlX3YRh5ISuWWl5xUvFRThFgrkgHsol73x5NdMrsq1gVFsTZFT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4523
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01/03/20 14:09:51, Dan Carpenter wrote:
> On Fri, Dec 20, 2019 at 09:15:09PM +0000, Malcolm Priestley wrote:
> > The driver standard error returns remove bool false conditions.
> > 
> > Cc: stable <stable@vger.kernel.org> # v5.3+
> > Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> 
> Fixes: 07ba60a15843 ("staging: vt6656: clean-up registers initialization error path")
> 
> The other part of that bug was fixed silently in commit 987d864a2363
> ("staging: vt6656: manage error path during device initialization").
> I'm quite embarrassed that I didn't catch these during review...  It's
> the obvious bug right?  "You have reversed the return values but not
> updated any of the callers."  *Egg on my face*.
> 
> regards,
> dan carpenter
> 

That one is ugly, my bad.

The fix looks good to me, and as Dan said the other part has already
been fixed.

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Regards,
Quentin Deslandes
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
