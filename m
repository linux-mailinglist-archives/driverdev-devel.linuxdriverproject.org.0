Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F891E42E7
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 15:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7B45849B8;
	Wed, 27 May 2020 13:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WbLXnlGSbpGc; Wed, 27 May 2020 13:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31EE981B19;
	Wed, 27 May 2020 13:05:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 338951BF34E
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 13:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 297B324AF5
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 13:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ptsVlqX02Wzl for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 13:05:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2054.outbound.protection.outlook.com [40.107.92.54])
 by silver.osuosl.org (Postfix) with ESMTPS id C3BEB24A82
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 13:05:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HcFUvyDbnVWTKP1ukQwyGW+z4lyK6Q0WzcfYNjlalHXVIwkVBV/UATCB7OTEiq9PzSY5Rd5+nPwKBVCThWLedd1WlLDQawDi0BgfA2jMj1iIeBBFXvJ4zMyd0xNH/YNL1GhSsLJnmX88F7KPoCal/NuohI84kagUUggGnnBXqagBISK9OINF7lacRtM60rpjhD/NAXy+7rxcQk2IHaqsthe7PSRehc0VGiyZQB/TfPRAtchNDq0vUcWygt/FfS1b3kRRhhAFHNRF/1G+AjITR2utu/9+XltChs24Gnj2vhQqXHmEK/wACdbkMKrxk8ZgwbT6WRqnxeobZSUdfxlb/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGTtQyUHquBDRIZ+BWTapls25MxazOvINpiS2tSnZEY=;
 b=aspgrcyVDUccYX7n/pcDqfvodMsrflUTNiq3koPFsgNaL0Ng7wE1d7NZdmypwp0ecf49rHZOyw2WBgGguGaq7LdkMfv6QxR1K8CDkfnJujnf7N3m4hhGL2Z8YKDUBbhia1uDyDks6GPGApmP7+iYtDw3S+vlLoZfxDQOZIi2VngRmSKyWmIpLRQDVmy7AOqeGLKfn6lz+2IQ9scthcSskWgAynBsTTBSRxPOMUqLSb7WGRdWRwslkwNdCRDCqlNEB/3busLiTQ1/AVO2HsC75mdzESlVMIqwFoxyUG9NN+9iWhchwVHmjTZPwHsQlk1ZXxiWIlBCS9j8oZ2zYS8GzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGTtQyUHquBDRIZ+BWTapls25MxazOvINpiS2tSnZEY=;
 b=THYie0k/kglemuYempplIhoQBNXQMLjw1Z3ku4pRGtRlo72Chm17g0Rw/vRNWNB2Bq9c93NBMDBnKoLXyuhTsZwJ04mjPej6jhcuJ1GFZraxt4ythac7EdBDqtv4frjMCuC7pfHGPMAgzPaMJykyUNRD6eFLef0Sp4waQNWKN6I=
Authentication-Results: codeaurora.org; dkim=none (message not signed)
 header.d=none;codeaurora.org; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2861.namprd11.prod.outlook.com (2603:10b6:805:61::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Wed, 27 May
 2020 13:05:14 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3021.030; Wed, 27 May 2020
 13:05:14 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 00/10] staging: wfx: introduce nl80211 vendor extensions
Date: Wed, 27 May 2020 15:05:09 +0200
Message-ID: <4249981.oEEGoI9oy7@pc-42>
Organization: Silicon Labs
In-Reply-To: <87imghv9nm.fsf@codeaurora.org>
References: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
 <87imghv9nm.fsf@codeaurora.org>
X-ClientProxiedBy: DM5PR06CA0093.namprd06.prod.outlook.com (2603:10b6:3:4::31)
 To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM5PR06CA0093.namprd06.prod.outlook.com (2603:10b6:3:4::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17 via Frontend Transport; Wed, 27 May 2020 13:05:12 +0000
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec043ef9-1a64-4480-1453-08d8023e9873
X-MS-TrafficTypeDiagnostic: SN6PR11MB2861:
X-Microsoft-Antispam-PRVS: <SN6PR11MB286150648E83ACDE3057C41293B10@SN6PR11MB2861.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wOlYMbGYZ2Fp4mza1IAd9V5NuFSDMIh7SCaE6erK5tb71jD+uvWBr/pAgXP7jlpPrWwZarY0nyGTCWavG6EveohlhKXha/gC+UwbXtZVR9SGloWJ2iN4NO4LjkyAIRkHyra38rdraUaIRtd3ycQsK4QCEeUWPdx6L9gbdn57dCYm2JPQUJ7Wf7+XucBuvyANwyBIcCX6eH5lBRv3PeuWG0hJanViwK7qvApX6Bw4ZXoPe4VEjJCWKjdRhcbavfWT5r8iF/VqfkBQsQYHR9mO5clfoRxhh5SBouEjUS/GtYezoY3y7exDP25yUyJ0XKJApV5NsnYKfVdd+EBDAGUSq9rfKOkLxCUNd2uLqSqhKai2g5Now+KSQTPnUBd++TgMkl3JJoFLrgsjVxX82WTdQLdWXHG1DNpy2wrUlg8fcJeWZmSOjZqoHEUZ4d6Rbc3HEIuXTGIR4GgCzewIkyz+Vg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(39850400004)(346002)(396003)(83380400001)(66946007)(86362001)(5660300002)(2906002)(8676002)(36916002)(6506007)(33716001)(4326008)(6486002)(52116002)(478600001)(6666004)(66556008)(66476007)(6512007)(9686003)(8936002)(186003)(316002)(966005)(16526019)(54906003)(66574014)(6916009)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: VwBm5/TLiPii862W3BnbwFNlKzOkZNFT1tkO9m6FTGfjJ4Gm0pJAxnkTDLvZ+3nngIjUTYQbACrm3S/H6QDzdRJCzPlbCEF8zO0V+ru2vxOW8sl/oqYes3ze9Y9qxIxTRcJsFcUZUKdULkqva5KtnNsoXI4WihjmIUBClGFTm/GOV5XPbZhghlIAg+W0IGHFSIb+2iBUuJHUSLj/3YfP69JlW20DlxfPttnRXiXgCiUiGSEETO39AjXD4vroqGaSjK3iocjDNxkMFvDqeesbZWDItNOT2Czl5fuPquV9lmQsLNYTy5kYwoJEvE5Ld6qaoHh0ZEohFPGBGb5k25hQC/2T2ywwpkt6L7g8hOOC4z7kKSYJuyc91ktTH8mnPBdhIlVDXlSUYl16sKFP4wuqxFkWz6+U6CJyIfxvMixn4FosY0uDqP0Re+Ni4Xt0Ja2UmrDxtE8elTo+yVpkVLlUsCfZe/hnNpJG1MzvLkyShnXzFYKtOs0+2Fg7Lvq2gYT37R8wZZm7PYIHzQABt2I3A4/EXhQX+7+Clhd2W7W1sug=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec043ef9-1a64-4480-1453-08d8023e9873
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 13:05:14.5129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xT5d93lGRsryOYYmdzTTdPzjW0ot2kYE+sFgIU+cAUffg4gQ8nDdOuOk1bnoa2+KwFV0dEhL3e2pdGajYixNsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2861
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 27 May 2020 14:34:37 CEST Kalle Valo wrote:
> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> =

> > This series introduces some nl80211 vendor extensions to the wfx driver.
> >
> > This series may lead to some discussions:
> >
> >   1. Patch 7 allows to change the dynamic PS timeout. I have found
> >      an API in wext (cfg80211_wext_siwpower()) that do more or less the
> >      same thing. However, I have not found any equivalent in nl80211. I=
s it
> >      expected or this API should be ported to nl80211?
> =

> struct wireless_dev::ps_timeout doesn't work for you?

Indeed, cfg80211_wext_siwpower() modify wireless_dev::ps_timeout, but
there is no equivalent in nl80211, no?

Else, I choose to not directly change wireless_dev::ps_timeout because I
worried about interactions with other parts of cfg80211/mac80211.


> >
> >   2. The device The device allows to do Packet Traffic Arbitration (PTA=
 or
> >      also Coex). This feature allows the device to communicate with ano=
ther
> >      RF device in order to share the access to the RF. The patch 9 prov=
ides
> >      a way to configure that. However, I think that this chip is not the
> >      only one to provide this feature. Maybe a standard way to change
> >      these parameters should be provided?
> >
> >   3. For these vendor extensions, I have used the new policy introduced=
 by
> >      the commit 901bb989185516 ("nl80211: require and validate vendor
> >      command policy"). However, it seems that my version of 'iw' is not
> >      able to follow this new policy (it does not pack the netlink
> >      attributes into a NLA_NESTED). I could develop a tool specifically=
 for
> >      that API, but it is not very handy. So, in patch 10, I have also
> >      introduced an API for compatibility with iw. Any comments about th=
is?
> =

> If you want the driver out of staging I recommend not adding any vendor
> commands until the driver is moved to drivers/net/wireless. Also do note
> that we have special rules for nl80211 vendor commands:
> =

> https://wireless.wiki.kernel.org/en/developers/documentation/nl80211#vend=
or-specific_api

I hoped to suggest the move of this driver outside of staging in some
weeks (the last items in TODO list are either non-essential or easy to
fix). So, you suggest me to resend these patches after that change?

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
