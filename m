Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3AD3278F1
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 09:11:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED38D4304E;
	Mon,  1 Mar 2021 08:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Age_C_-VBfkL; Mon,  1 Mar 2021 08:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C5B943025;
	Mon,  1 Mar 2021 08:11:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B154E1BF39A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 08:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE3F683A75
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 08:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cT6GZap1vH9K for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 08:11:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5E6783841
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 08:11:37 +0000 (UTC)
IronPort-SDR: ugmWKL+Ebup+Zx6crnmn/oq3hVPpjswLpojJyzv3BhWBNkXzb6a0NH0ZiAS5wnha2BKCTEOWDh
 oLY88yiyuojw==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="247802552"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="247802552"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 00:11:36 -0800
IronPort-SDR: pduRjcwuNQh3o3yk5ufRkSmFVF5xDFkTYJ7uf1GsFvFABAtK1rvUSe5aEito6fpZCex1xZ25J4
 AfdRueVQmqKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="372848519"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 01 Mar 2021 00:11:36 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Mar 2021 00:11:35 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Mar 2021 00:11:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 1 Mar 2021 00:11:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 1 Mar 2021 00:11:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/l7D3qVlD8QAp+Nxg16kKFdolhmzS9A02d4ZDKDwFfGNHftQShf3y3rVyAg4i3/R/Jr0R7uUYfEe4jZNpR/gsnyPgrlYBQoaehnxgX01fOyRa7c3UymhRAo6M91XKyxaL+1LzSiDpnW7O6rLo7jNPTNm/HNFN5C0LBDYQIT+KiXsbQ441jqoswGRWlS3TSXh2/jvvFQXrMyQ9PC7PUXEcXObRQwzWsZLr7EQdLMyqBn8FC2QGsEJ6ZKi30A3qaqmUq7yMRYYUtPqzz3wRgNP35PP0SdTcmaBmqv3fCAld8NSJpUdBqxCa4SpxX3FD3BDyX6oN2+Jibf8pzHq2rR9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1n2SF568yrcSpbglJ6JyiFsM1PCg1mJmZ1YQ250ZNbI=;
 b=ivbPkWfTMZruWjPEh5EE2qzJsGbNBlp8PWTYULiU1MrXY2YT6cgiQ0nwlYFV6VcCNcO3TU51CPq5qmJRGDDAyymHRU0GN75016hVRG31XvpnbvUn6je6f1JRa8NBx/3+piEBeC5orhnLqjIW56fhs011AxBK7yzLFodNNWMC+5NJoOXd3GkPCHgt6o8HQnNJw4g7SDu8npsHnzsfzq5a6iOXV4ZsxlVO1Noqy/eCZbeirvf7lDnMStZWnOdCYvoxXtyvBw+fyUy2WFVbfbmi2m6PFc2mBQpW9R6npkVQASM5XMuVOQ37sOl/G9CR2qkIAsecVB8qiCgDKw6Es6J85w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1n2SF568yrcSpbglJ6JyiFsM1PCg1mJmZ1YQ250ZNbI=;
 b=Id7pGYbjCk8iHwkzyoUdNPNkmJ4eNxRg0sD9Vy+whJJ6jkJGoVUvL3iDYJr41782CHzcv3MXGtjenR+Zgf5eDJ4kbTR1BNWbN6sU90lDzDD1mhKwyjuBIUHYZdclCjPj11cdNmjQEFfTml1GUub27t1U5vOeFGBvBGEyOa3HqOo=
Received: from BYAPR11MB3095.namprd11.prod.outlook.com (2603:10b6:a03:91::26)
 by BYAPR11MB3831.namprd11.prod.outlook.com (2603:10b6:a03:b0::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Mon, 1 Mar
 2021 08:11:30 +0000
Received: from BYAPR11MB3095.namprd11.prod.outlook.com
 ([fe80::e47d:c2cb:fe53:e0e6]) by BYAPR11MB3095.namprd11.prod.outlook.com
 ([fe80::e47d:c2cb:fe53:e0e6%4]) with mapi id 15.20.3890.028; Mon, 1 Mar 2021
 08:11:30 +0000
From: "Chen, Mike Ximing" <mike.ximing.chen@intel.com>
To: Ivan Safonov <insafonov@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH 4/4] staging:rtl8712: replace cap_* definitions with
 native kernel WLAN_CAPABILITY_*
Thread-Topic: [PATCH 4/4] staging:rtl8712: replace cap_* definitions with
 native kernel WLAN_CAPABILITY_*
Thread-Index: AQHXDVeeUVNQLtl5cEi6vSs2UgiCuqpuwrZA
Date: Mon, 1 Mar 2021 08:11:29 +0000
Message-ID: <BYAPR11MB3095A70AA243675FF0960B89D99A9@BYAPR11MB3095.namprd11.prod.outlook.com>
References: <20210227222236.581490-1-insafonov@gmail.com>
 <20210227222236.581490-5-insafonov@gmail.com>
In-Reply-To: <20210227222236.581490-5-insafonov@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [69.141.163.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 170f4d80-8cfb-46df-0e51-08d8dc899e81
x-ms-traffictypediagnostic: BYAPR11MB3831:
x-microsoft-antispam-prvs: <BYAPR11MB3831DF49D46362E6A8205E8BD99A9@BYAPR11MB3831.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u9nGZbNqcUzVcjKhJhnrI0c6wQ6EV24TlQ9kGc4zgStjvjxelSJ+LTOn7q6NNCWWPOs+2hrgzycY47iR55XMLlH+YFclm6/g4zKqBylhp4RB5rU1/IFKxZsEwHP0Q8dOGsaDIIE9Z1Hm8OqgDYyKHhbkhEQq4hK0VM2dSe+1W2UCtOEoSykw+2+oLLi4wGMiK3G6RDEKTHoL1goX7mIGU4Qc8jNSTAdoEaS9nORS2PIqyho36sdXSdpixf4iZz86L0okiqNmyDr1F0bFzPtiojaBLrH5g+d5ctUoGJ2jJHn/OupBukZQeb5qcMiQUqj2sXDg8BjJbZSYEfpeENOAePD+j98rLmL2Y7DdXAbNN0kFc77/Q6ybEiKf6McJYD8Vg3NdewMBc1iYklF+pwtFsGj2IHrqjdNBcjy/LzEj75piuX/igQEauusARMrQKt6QjtYWnQoPH4crluJNYmM2hMcbQ7xqN70CLHqrcvmMR98mb7fp3QCBxdOJaHRsEr6MTZs3I68E8ufCKFQhFOXBEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(396003)(39860400002)(366004)(7696005)(6506007)(186003)(4326008)(33656002)(53546011)(8676002)(54906003)(8936002)(110136005)(316002)(478600001)(52536014)(26005)(64756008)(66946007)(66446008)(9686003)(55016002)(76116006)(66556008)(66476007)(2906002)(71200400001)(83380400001)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?/rZuKYfOeaP8PvrIA8r1gQd/2ymLMnTFpFWHpGexzO4wnnd5Bfd3qxoUGgnZ?=
 =?us-ascii?Q?6NuwrqIFmeUvu2xifW5GnyCvuz+27yeSeLZqHZJKYB/MeGxBjCKLVsSXshUQ?=
 =?us-ascii?Q?TcTMYuniZTuLCCQNDV4EK9hH5D51IeXMOPjaKDROQX4Ve6iOzIeRypE++Cc4?=
 =?us-ascii?Q?bwpfqS1FAz94/4j9aJSFI25N/RQOH6G/OIHjGQPlJfRfez/sO6+LMO9h5EKl?=
 =?us-ascii?Q?VB/p3nZLWqYS07qLih6imIeunLee8pMOmxuEPGsEQ5qT1S+jg7sotHtw5yWz?=
 =?us-ascii?Q?cN5kb0d3MCs6bq9cYiplO1h/X1fD4LbFB/aTEEGthB9g9/XrLUYyH0Sr+KO5?=
 =?us-ascii?Q?4VS8l40wnirS1xG0O4TNWTsPROV+nVvUc7Cx2KqYpfcLg5PXRklEXnf0Yqs6?=
 =?us-ascii?Q?YD0yyirmyu5B2RLFEe3EklZO+IHSXu/mYE2ltkyAmOYyqe7X83W2cVrug0lH?=
 =?us-ascii?Q?cTdaYai+QzgFjeHZMiYdtBYrALiZaid8ub4um+l2IG65pVA3nu7ukVN8uSER?=
 =?us-ascii?Q?iynC88uvTMgUawF3xRC21PmTcogNs2pmYjPbDbHfoVN4npSiGKovS1ud+3rX?=
 =?us-ascii?Q?c7+sZQ3tV6D5Gv1wh8U2xnq1qTWUTPPbctyVd830sF5STSccH3Vw5EIp3RKg?=
 =?us-ascii?Q?jEpOI5i2jtsfloZDHWEq3Oa3Cm0aIyxIYEaiDh2OdMzzZybGxLHMnE7DVSk0?=
 =?us-ascii?Q?d6a/2pTYJBz4SiWVxyhmyQ4p2rqqgqKcjs7bwxTzYuPb4z61itoN+AvOu5RN?=
 =?us-ascii?Q?cJsdDKCxEeR5u1tvmaS5q8HcYEsyaadgFSDpLc+hIOOZPqwGxkfKXadXyk46?=
 =?us-ascii?Q?HPDhcsYmYNEy2wk9Dj1LF2nUv9a/6dSEXJYzkRB5rCWVFFxe79O3BPEOAwXu?=
 =?us-ascii?Q?sHsqmhE8IpaU4Sq7vTUhDMW7HteR64EE44j8DUUtlJg34WRlvAsDUPpI+Rsn?=
 =?us-ascii?Q?jcXcfl3abvM5HUVYqMhin+tOpaN1kBuHGgJUs2Uj/AIpZEw1x0475pgfP+cJ?=
 =?us-ascii?Q?2//vyO/Ek4cqm9pPfiU0QCZYvFLhQbJjygtseJzdCgNNVeZgTfc3+zf1ILJr?=
 =?us-ascii?Q?biM93CM9H4HAD78eUWesW059buK26Rxi1mv7Xj3NNWoTHBfYRBl/khjpL1Vz?=
 =?us-ascii?Q?ovXtM4KwYQ3eT+hNi+xKoQ6jTkn3/sVOhlYZO6dbKHCPd0dTvqkfYzDdJxad?=
 =?us-ascii?Q?OUjORqAaDt+xvqC1KxXfu6siA6nu2hglPNBhrtaDiLe48FY2OjRM/w9ewrSb?=
 =?us-ascii?Q?VbbZReo+2PaYlexiZAZRqmXYjs344WUUVP439m9if1d9ZDy8724Qs2SM67pG?=
 =?us-ascii?Q?82x/wXlWIo9fK9C5I66UTRwm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 170f4d80-8cfb-46df-0e51-08d8dc899e81
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2021 08:11:29.9414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RAnpsExIZ43A95vlxm3lqbA7YyPoGcfi+tYtq7bg8tJ68qwPEzx9c+mOoG67SSLkmdduSTfiflS6hfMAgzq/bEeC4EIpgTspS6qKINahmXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3831
X-OriginatorOrg: intel.com
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pascal Terjan <pterjan@google.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


> -----Original Message-----
> From: Ivan Safonov <insafonov@gmail.com>
> Sent: Saturday, February 27, 2021 5:23 PM
> To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>; Larry Finger
> <Larry.Finger@lwfinger.net>; Michael Straube <straube.linux@gmail.com>; Pascal
> Terjan <pterjan@google.com>; devel@driverdev.osuosl.org; linux-
> kernel@vger.kernel.org; Ivan Safonov <insafonov@gmail.com>
> Subject: [PATCH 4/4] staging:rtl8712: replace cap_* definitions with native kernel
> WLAN_CAPABILITY_*
> 
> cap_* definitions duplicate WLAN_CAPABILITY_*. Remove cap_* definitions,
> improve code consistency.
> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/rtl8712/ieee80211.c | 6 +++---
>  drivers/staging/rtl8712/wifi.h      | 7 -------
>  2 files changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/ieee80211.c
> b/drivers/staging/rtl8712/ieee80211.c
> index b4a099169c7c..13fc3c1ec0db 100644
> --- a/drivers/staging/rtl8712/ieee80211.c
> +++ b/drivers/staging/rtl8712/ieee80211.c
> @@ -173,11 +173,11 @@ int r8712_generate_ie(struct registry_priv *registrypriv)
>  	ie += 2;
>  	/*capability info*/
>  	*(u16 *)ie = 0;
> -	*(__le16 *)ie |= cpu_to_le16(cap_IBSS);
> +	*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_IBSS);
>  	if (registrypriv->preamble == PREAMBLE_SHORT)
> -		*(__le16 *)ie |= cpu_to_le16(cap_ShortPremble);
> +		*(__le16 *)ie |=
> cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);
>  	if (dev_network->Privacy)
> -		*(__le16 *)ie |= cpu_to_le16(cap_Privacy);
> +		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
>  	sz += 2;
>  	ie += 2;
>  	/*SSID*/
> diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
> index b7889ac3dce9..f941efb1f4e2 100644
> --- a/drivers/staging/rtl8712/wifi.h
> +++ b/drivers/staging/rtl8712/wifi.h
> @@ -278,13 +278,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char
> *pframe)
>  #define AUTH_ODD_TO				0
>  #define AUTH_EVEN_TO			1
> 
> -#define cap_ESS BIT(0)
> -#define cap_IBSS BIT(1)
> -#define cap_CFPollable BIT(2)
> -#define cap_CFRequest BIT(3)
> -#define cap_Privacy BIT(4)
> -#define cap_ShortPremble BIT(5)
> -
>  /*-----------------------------------------------------------------------------
>   *			Below is the definition for 802.11i / 802.1x
>   *------------------------------------------------------------------------------
> --
> 2.26.2

Reviewed-by: Mike Ximing Chen <mike.ximing.chen@intel.com>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
