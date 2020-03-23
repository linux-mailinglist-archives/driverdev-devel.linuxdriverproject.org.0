Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4DF18F6A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 15:16:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 149B788175;
	Mon, 23 Mar 2020 14:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lt6IjXhLraw3; Mon, 23 Mar 2020 14:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE9A38809D;
	Mon, 23 Mar 2020 14:16:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AABD01BF389
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 14:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90D36228DC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 14:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WDHZfqRRD1Rt
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 14:16:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C60B228B0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 14:16:42 +0000 (UTC)
IronPort-SDR: uwuvg89F9zdORMWFDdxgy+xEy4i5vN0EsrZ6BUnITdXneQFH/668YRRf+ChzV5klYRtbMEidUv
 qXIY4gL3FLaQZE+5QsictijQQ44bLfqa//VidcGSjDlHNMTTnwYzrcSzi8CfzIji6xmbWUYrxr
 IN3VKRm5iPzZMWr7HshRa8z5OCuy+Xw38apIVQC6j9fXAKErxhRevdhNXbPFQxA0MAVTRBZIxC
 9z4Mu6Qk4LtHQ2s14N5T2F5VmGwMl885a2zDT49KtCd0st2l47LSa3Fhlp7Hy6f5V2oq3LzcCe
 NvI=
X-IronPort-AV: E=Sophos;i="5.72,296,1580799600"; d="scan'208";a="73105905"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Mar 2020 07:16:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Mar 2020 07:16:46 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 23 Mar 2020 07:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mtOsYevUTj7Aubwo0rvKEkbwphyszhC1U42dvqFXPX202YofAjBF9zkiL9HCcmAfwZcaL64Jx0M+oQG79+LWcZG9l10oNpNpj1owgF/5l23QUu1lGUH8bnD4Y6mb1n6YapFfmpsZalo6dTahoOqGstjysl1M6KDHhHqGLABDDVHL91KncfLyhortNic7juCaxgGEH9Lz02DXne3ZzuIzASgrnB08D+tKln8mwuvnjVMazv1w0Nn81cIVydjPK0JBv98Ap2jJEQC5nlw09/QrChWN7piPAHnvdLarAnIMDw6UH/dEEgqti/81zS3ce1ZhEEUulCFcoIogmcZmYT4ofw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFI94FQjPKUbpPAk0fIwX5n1Tpg3Ut5uDqHJpoTwo3s=;
 b=mo4dI5Qm6PhDeOUjUy/x31hARqsRYR0UqV05yQSm70c7GrLAxu2ycSoRVrWU3mzCLEfNiy/lcI0z5sFfb2zYgpMSGnyAwaAd+FlYwHr/2DdQDPZmCDAsoN7snsaLIEK+vtwXdspoZIdFrdSXunLfOJZjCBwF84LE2bEjrzou90IWLyE2gb+l2fnudqvrZSqXlw2eNfwyhMStTHw34NrlaTfK6iUzXn3Ng8MZ8fsDUojiq42MnZpmBp9a3qnYhhUa2aN4VVDAT+uVddaAhZYTvNu7307BdcvDP72KU7f2KaPgi1uGZI+QZr6epY52fUI8s3XdTy1PUg9hkO7/q/4BXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFI94FQjPKUbpPAk0fIwX5n1Tpg3Ut5uDqHJpoTwo3s=;
 b=vTKuoFRB/vodThGeaY33eG4snbhL6uifYl6a8Hnf5y1lo4yrbdr8jBIIpW7Bd/CaCZw81iHgseRSJC7KExzYF7jXN/ThHl0vimyQXGvtTvczplOEqO62k9qGRWtShN37PEDHYhJ2z9DYC96PMew6ik9qJuH/lIhGE9YHVtAkrHw=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Mon, 23 Mar 2020 14:16:39 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2835.017; Mon, 23 Mar 2020
 14:16:39 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Thread-Topic: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Thread-Index: AQHV0gMy+cfYshKLdEaAbagaEunRb6f4jwmAgAD17gCAAAMYgIBdDz8A
Date: Mon, 23 Mar 2020 14:16:39 +0000
Message-ID: <142b5cc6f7ac6eeb3c06f671b02924c2855d9336.camel@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
 <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
 <20200123181837.GA1927902@kroah.com>
 <2dc825b7ff12cf90de21f9f2486952a935401dba.camel@microchip.com>
 <20200124090955.GA2980450@kroah.com>
In-Reply-To: <20200124090955.GA2980450@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [46.142.145.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fb9b8ea-638a-47e2-7ad8-08d7cf34cdf3
x-ms-traffictypediagnostic: DM6PR11MB3099:
x-microsoft-antispam-prvs: <DM6PR11MB3099507A2D0D2BDB6B308027F8F00@DM6PR11MB3099.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(346002)(366004)(39860400002)(199004)(5660300002)(81156014)(6506007)(66476007)(4326008)(36756003)(76116006)(66446008)(91956017)(2616005)(186003)(81166006)(26005)(66556008)(64756008)(66946007)(8936002)(6916009)(4744005)(316002)(71200400001)(478600001)(8676002)(6512007)(2906002)(6486002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3099;
 H:DM6PR11MB3420.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NW0yWT6lVBjnls0ZSKsFV1sh3u/9pM2UhR0Zco3LnQ6zvZDoY/GFiWSjF0OMrudQhkFiFk1qppxB8LNtpSZzn7pkEE8dFQdNQUK5kHw5CEzyTSDpH85JfJJrbQmSdeP+wiLKRNq3T0Vf6IgKoONOY07VvylnX+3Yf2cHzCe1wX6lFWATkiH6k2cUIvawer/gOwquRvkzDdNheVSWmyIoaDIpyMKWQV1BOU2ee2S8g0P5bGiQffHJ4kxJnZuEkKGuxaprfFGRqI8WzSvjsSxZiFhjkD4JjU4j3gdwttQ9gXmxHNMip743+qZ30ezc+hpm3mmD/86ptQgmoBGBkNmcc9JpEzHe+YM4mQ3ZqlcsfLzNHNxHkCRbWppymq2cIMypADJJq1ZaOvz+cEMzkAlQyJZDmKJPxVpDGScYrWR3bONxYzhSJcNHVsPBAYe8w0pT
x-ms-exchange-antispam-messagedata: NKktGxK+tnSILEZSaHq5Gvj3DulwuyXbI4wQwNEJRHrudf6RuCjHPs5L1ct10BKI9I7d8IkUxIBHBuxSGB4Cy7B60fdO4edoAKKIOU53RsTaonhS75+uHKxMWcE6hHYD3eq/ZqlzhLUMnexQ43d6fQ==
x-ms-exchange-transport-forked: True
Content-ID: <0621CBFE44742F48B5559C0CCBDEEEED@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fb9b8ea-638a-47e2-7ad8-08d7cf34cdf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 14:16:39.5280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g2P61avRygPltok+KSZ9bgTKmXsojI//3ipWlxC4hP302oJ+0BOTE4djOU/oTekb4hOt38BQFxAJYHVDNuUhYAZKRo4zPSF9Oo753tfyQEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3099
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-01-24 at 10:09 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> 
> Ok, I'll take the first 7 of these patches and see what the end
> result
> looks like after that, it will make reviewing the code easier...

Do you have a rough idea when I can expect this to be reviewed?

Should I resend one more time?


thanks,
Chris


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
