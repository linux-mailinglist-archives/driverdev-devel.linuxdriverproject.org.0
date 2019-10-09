Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67647D1230
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21AB2883C8;
	Wed,  9 Oct 2019 15:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JB53VS+MNWm0; Wed,  9 Oct 2019 15:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C64488321;
	Wed,  9 Oct 2019 15:13:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 930E81BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C9DE8660D
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0bgXd8sdIHKU for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:13:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820042.outbound.protection.outlook.com [40.107.82.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 698B5863D9
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:13:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kqy3yJKRXAbiESg6ct0gAhvnaWJRXdVv2Fss+pa9G46TDkmobyeK+8zs8FhwGxfBvHk3gcw9/DpSNZilyfvtX/lKDwPH8pIGhojhOtwTmW7jmQHZ85bqu/vzyAzOyUv/uRU8jrS4J0lK3sWpSh9iUHKvKKP8sfx2tulCfhb+/vG5AQ7ee6/r2iPu2fXvXGCOUtjASD8EvGj5Jz4lfKQhdAnBNnhkj8q0Y8F0IB0rXQPNy5y131TMJO4tAtVBZoA44VnZFJqezfR8PKiGon4rWnuuN92TshsDuSKOT4NQRokSzzdCpl9CFTCvJ/w8q5wYbUZEjLCXKP0b8PNshwquGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRTVDgiknGz4AcaOciTNM5UbW+ez27ycR7dtygGUqrA=;
 b=b+/AYQT0H55zFMkuAl0YlYzlIEFnMtXaVMn2IdX6d3P27gyt7tBAmcr4A87kkZCbmGjEsY/mE/mZqyOgu/V90T7xsPopTZ34hlLS88BaOV81Hrb20RNcwV1XxG+7rPCRxgk9Qjfkv3W7PYmnwrdJhfQ4U399h4M4+1AAqVSZjBcumB6reT9tLgpRf+FCYfU/sWSbyWXY+TZz69HYHaTtMmub5HDGalCkttrVeBYSKSWEhmufXxAwkFWFDrkMX4zv7p/SVG/lM1bMv4yD8S1jIuHKsy+il2rcBvsW1loTzKC2urRguPUfAWPSq3FmkfICUEky0zfiF/q4ssLAFpg7sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRTVDgiknGz4AcaOciTNM5UbW+ez27ycR7dtygGUqrA=;
 b=WHW2obFzY0q/UdjULGvhrljjX9lxCbYQ7dBgZ0CaiK32lnbGPIs0QFyUR+xHhSxc0UQIHGegYjZLnkngEmYVwL+OHA5fxxVEJAmI0a2eSsBlqT8cghAEVYMyi7peQDGWZf1dN8g0/wCj/NSSpmV/VSPI2AHN0VeMCOOW3iQLY9w=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4382.namprd11.prod.outlook.com (52.135.37.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 15:13:14 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 15:13:14 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/7] Fix various compilation issues with wfx driver
Thread-Topic: [PATCH 0/7] Fix various compilation issues with wfx driver
Thread-Index: AQHVfby9LEc5HCPngkKgSgv6JOlnAadQ2aUAgAGTBIA=
Date: Wed, 9 Oct 2019 15:13:14 +0000
Message-ID: <6487016.ESlEkJNu7c@pc-42>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
 <20191008151046.GA2862250@kroah.com>
In-Reply-To: <20191008151046.GA2862250@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4a1cfa2-df74-46ca-9d2d-08d74ccb34b6
x-ms-traffictypediagnostic: MN2PR11MB4382:
x-microsoft-antispam-prvs: <MN2PR11MB4382EB1A9D7A3431C6F493AA93950@MN2PR11MB4382.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(366004)(396003)(39850400004)(346002)(376002)(136003)(199004)(189003)(81156014)(76176011)(6506007)(81166006)(4744005)(26005)(186003)(478600001)(5660300002)(66574012)(6916009)(8676002)(86362001)(11346002)(476003)(71190400001)(446003)(14444005)(71200400001)(6246003)(14454004)(25786009)(486006)(66446008)(64756008)(66556008)(66476007)(102836004)(66946007)(91956017)(256004)(76116006)(6512007)(7736002)(99286004)(6436002)(9686003)(6116002)(66066001)(3846002)(229853002)(305945005)(54906003)(4326008)(8936002)(2906002)(6486002)(316002)(33716001)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4382;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HLN7eJ8CphSSwER2WTrawSuE9Q7mqrreG/zsR2tqUlOXDnuBDjkDggqHUTr5CAXH61uYni15K5QJXgE5CHjSoWJqzQRvK4V3MrtJg7k6X7AvCHiGqu9Dnkv+d9dXNdfaOvbW7qgGeKFzJAqb7n0WPSDw4108ySKha3fSZRwLh7TjG4yV9/+0hleF8G+b5iHTQXC4hwDHnEp61x+Ae5odBxasLos6IoQevh+kEZo3c/FD4O5eLbnxvtpUmq9bjF2U1llQburwRloXp0gZVP0FQOON2GSny590SSb3tB8xSlMdtqL2YF9pft7NUHmY5ADMlsciaHKOM5667HjmFQhT78Hep2dLlK9pTkxzadXKIW9EB72UyYb79ftHx3e/b84IVye6eHR/QaIz6H6ji7Hp3s917VhVqRgjFAIcHTln+1k=
x-ms-exchange-transport-forked: True
Content-ID: <03FD4E3EC8912741A4D1DA7A45B7F1BB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4a1cfa2-df74-46ca-9d2d-08d74ccb34b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 15:13:14.0570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8WauB4HATFwzSo6lXsP03ZPoWyzFolrKZQ6qCvCHlcxNzPJfCpYptCRmxDJ2DdOz88kYLsZwnr0ljB54b/2EBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4382
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 8 October 2019 17:10:56 CEST Greg Kroah-Hartman wrote:
> On Tue, Oct 08, 2019 at 09:42:47AM +0000, Jerome Pouiller wrote:
> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >
> > Most of problems are related to big-endian architectures.
> =

> kbuild still reports 2 errors with these patches applied:
> =

> Regressions in current branch:
> =

> drivers/staging/wfx/hif_tx.c:82:2-8: preceding lock on line 65

As I replied to Julia, this behavior is intended.

> drivers/staging/wfx/main.c:188:14-21: ERROR: PTR_ERR applied after initia=
lization to constant on line 183

This is a false positive, as confirmed by Dan.

You may also notice:

  drivers/staging/wfx/scan.c:207 wfx_scan_work() warn: inconsistent returns=
 'sem:&wvif->scan.lock'

I also consider it as a false positive.

> Can you please fix those up as well?

Beside these ones, I will address the other reported problems.

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
