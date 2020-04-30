Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E26E41BF323
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 10:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 213BD24B99;
	Thu, 30 Apr 2020 08:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZDd9QEjXajhE; Thu, 30 Apr 2020 08:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 969DB24B85;
	Thu, 30 Apr 2020 08:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8771D1BF2B8
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 08:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81D548780A
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 08:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SWXt5m89f2h6 for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:42:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2070.outbound.protection.outlook.com [40.107.94.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD4B08770E
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 08:42:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bY5oTOT3Uurr56+s6r6HUGMGwihFYkTf90rqFUHgXVMLFDcfFKwIJtMy72za2BtYucUB8RC3epw1m4StwDBeaTjjIRuOZpyrIGUV0DezfhWE1KT9SG1aV+YMYumrCYD5ipqW7XwjzSPXkRD1GgUpBor4qo49VcvuEtN/C106KZ7nTEWlPi5TdYqrJyhyNmW7dG+uC4BJQ2WSeiqm0LvpMYWKNbbquHHBNfvFCz5CUWUUyAVkuwJ65koIfv8HUjzUPRTeosdxTFsYGfnKjQrds/ajDLEd5CT9SxfMVIFG1Uv9G1zTUe2oIYZEztk+BDXiwAtcMDkULNFSJQfu0bfaWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fLMYmDA8OiZV/mj92uTE2ZW9VR2ko3o5mecVSnYPYGI=;
 b=F8Rqg/gplADWwzzW5fvl02LZTAMswzfJJIG0FjtmkT7rQtTKtd3rSc0loj7YJgv9itACXRy+hsY7B6vL/Yyny1B2L+6dO+WMNg/wyfIx0x8aZa8Wo0HQraoJ4iowy4XJdpTiJTmBrzyzYCtpmTfPHj+9NFIt8EfBdKWRnbAGPFECoDmpJF1fIGBlQ/pJiLFzSZE8lZYCITo7Kkmmh+EW9vgOYkHz/2dg2ColryWUq5QRX+C8PnG+0/Cjf1i77ZM+PM5BhKE6uOEdfzZkeQXt7zQ7ZcNIEjZRzmrCQn1IxM7Cn9N+uK3WcvFrGPMSsSZnDTy6cArR3fBd6NJjriAJDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fLMYmDA8OiZV/mj92uTE2ZW9VR2ko3o5mecVSnYPYGI=;
 b=P/WXp0AVQn0kXtzc643p7N81nLI1IFfaTdmbTeAU9rF4ViJj/obE5pMO1WtbAbT913abyaL6/ZSTc0OZDuqOLsemYhJGoMyiBpoqBp5eHjyAvIBGOIdwj8Q3HqjNiCsuLpejWYobB/QYifimheNGHU8bK8CfA/3AXCjB1AQrBHY=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1392.namprd11.prod.outlook.com (2603:10b6:300:24::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 30 Apr
 2020 08:42:24 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.028; Thu, 30 Apr
 2020 08:42:24 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] staging: wfx: avoid compiler warning on empty array
Thread-Topic: [PATCH] staging: wfx: avoid compiler warning on empty array
Thread-Index: AQHWHjF5vlfoO7puXUWgUhn1WHjUDaiQQ0QAgABLogCAAMtAgA==
Date: Thu, 30 Apr 2020 08:42:24 +0000
Message-ID: <3063047.NHY2raB2sq@pc-42>
References: <20200429142119.1735196-1-arnd@arndb.de> <3943343.tW1xmJHsB6@pc-42>
 <CAK8P3a1e=-H_b8_GPJW5-uufye5_6OJ6f+ZWErjKPWkxSRSigw@mail.gmail.com>
In-Reply-To: <CAK8P3a1e=-H_b8_GPJW5-uufye5_6OJ6f+ZWErjKPWkxSRSigw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=none action=none header.from=silabs.com;
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c70ee467-daf5-4bcc-834a-08d7ece267c9
x-ms-traffictypediagnostic: MWHPR11MB1392:
x-microsoft-antispam-prvs: <MWHPR11MB13922D6E5B0F3DB1C7CD830793AA0@MWHPR11MB1392.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0389EDA07F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(376002)(366004)(136003)(39850400004)(396003)(346002)(53546011)(316002)(2906002)(6512007)(6506007)(9686003)(6916009)(26005)(66556008)(33716001)(91956017)(64756008)(66476007)(76116006)(66946007)(66446008)(8936002)(4326008)(6486002)(5660300002)(186003)(71200400001)(86362001)(8676002)(54906003)(478600001)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vvGPfMgYOcm6ed5rE9isX9N+zvQFgFmyj8nDinzWU5LsJ3kAQ1NArXH95qSI3ZYjbHrZ/6lx24KWoZhKhBQbwrZU89anZEGvoekzZuWTukf+kkmPu10NpBrL5auw7ZIv+0D49S8rbWX7zgu4INJhri9RnbaHLBELq+EF7apAxTn99xJwworILMcDm8yIJLbD1MMCqfe3Gb7qvE0OEkT0dHqERRyu27SU19P/SJCiEYbwZRLy5BZ6j/Yz7tm9j08Z/djbVMuaWRjqO4iC3vLjrHfQiLmvuxOJ06v0lSuY9STchsutfCmstP9gC3cr2tEDYRF3civXnvNvqoR/pM3cLptwvgfECzCdRMC+YrmuxjZkQa6K71v5/OOY92sBaYmoE2deuV7/wBUn89ldXHLbtwEoWS8fUq0rq1A3ySX15CajxioKnrDNblD7cJAQRbyxELq3qOPjAzPW4WW62OTgar6X/Zuz3YjS3ka41TN1u1w6pItvXmIkbj5Jzke9DdT8
x-ms-exchange-antispam-messagedata: Qh7UVM5uAiEv07nL5ofAF76vGoDAJ4RS/bfclpaTGIqjDfxFks9GELVEJuyg3iF6lIMmeeGA8hjY12Ir3Gtb10yICa4AirU+ku7iIo5quw/CV+AK8DhBapKW4JFZxiR0Sx7ai4jcdjum3LUgKFkqHQDrr4G38SdN/ngfdEYetZ3+EMjVAVI4QJbIwXmAe965YRVNdrk24O2OlonwiPmv2P2j9Ek9GstabqiMoQ1ygFqOm1eLpYb6bALUcqTCNlpbsF4YCg6UTvfdzrJBPfgPM3p4on/VR37qRKBH/VYw42R7NyZtYMuOpkpxfnbhSw1Jdrnh2Rh3hNhx/3vkv3fgj/uzjcQhfSSgt4vXP4QG4F9Ef7VQuwPrs5eR3q9UV/MO7BTyJ5oQoWf7NfKfjyUus7jyJA/O8+BBVQ0rLpXDLjaRXWDQPLP2twLoQRfREqsxSuv7ttSyJh2BlBJQSSGUjMgzFPRyWr88s2gz1aD8VDg8nbv9D3FB/7gd+TfRYJIirtN+wBv+b4wMwv6mzSuLyDVqg8LPaT0jzLjjR034k5BNhN8pWDuOwUVeX1XLO0GOm7DCR5ZZEhIuLJ7fzNRSfd09fap2hNJThlDCPuYa6BHJItnzskMFGOr2QiKdItLeOj0If5EDUZVMkv4zKPyHZLdkRFbj7gWYIbx2JhpwXw7Rox/qyRlMXQgvibHWOIXebiRNtSlh2iHdPSfocpBBSQrwzYS8ZhIETUt/TkMc0bWHJVMjWblXyclMECX6itU71lvuilu099XtXYJu8I0fkxleBGq3g/2FEYPfno/viDo=
x-ms-exchange-transport-forked: True
Content-ID: <DC950E9F6F97BF43BF18998A290B3C60@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c70ee467-daf5-4bcc-834a-08d7ece267c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 08:42:24.3548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hgIAjaych58pblB2dsP+1hSGCpQk5jkUhuts/owEH4jLLFtFuC0eTTDbyEJr1qy0dASIOYotseX1cHEihzoGgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1392
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
 Jules Irenge <jbi.octave@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 29 April 2020 22:34:56 CEST Arnd Bergmann wrote:
> =

> On Wed, Apr 29, 2020 at 6:04 PM Jerome Pouiller
> <Jerome.Pouiller@silabs.com> wrote:
> > On Wednesday 29 April 2020 16:21:09 CEST Arnd Bergmann wrote:
> > >
> > > -static const struct of_device_id wfx_sdio_of_match[];
> > > +static const struct of_device_id wfx_sdio_of_match[] =3D {
> > > +       { .compatible =3D "silabs,wfx-sdio" },
> > > +       { .compatible =3D "silabs,wf200" },
> > > +       { },
> > > +};
> > > +MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
> >
> > I suggest to keep the '#ifdef CONFIG_OF' around this definition. If
> > CONFIG_OF is undefined, of_match_ptr() and of_match_node() will be NULL
> > and it should compile.
> =

> I would generally always go for fewer #ifdef instead of more when the res=
ult
> is the same. Are you worried about wasting 600 bytes of object code size =
for
> the array on systems that need this driver but not CONFIG_OF, or something
> else?

I am not very concerned about the size of the object. However, I think
that all the modules should apply the same policy regarding the device
tables. With a few greps, I found 3954 struct of_device_id. About 500 are
inside #ifdef and about 1000 use of_match_ptr().

Should we consider that the structs of_device_id have to be defined even
if CONFIG_OF is not defined? And In this case, should we drop
of_match_ptr()?

Or in contrary, when kernel is compiled without CONFIG_OF, no modules
should contains OF entries in its device table?

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
