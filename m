Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E219803D
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 17:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62CAF85F94;
	Mon, 30 Mar 2020 15:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wM68iIjtAoSl; Mon, 30 Mar 2020 15:54:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDE1586529;
	Mon, 30 Mar 2020 15:54:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE27D1BF40E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA727884BB
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cub+dWaFNEgb for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 15:54:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150044.outbound.protection.outlook.com [40.107.15.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 573B5884A7
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 15:54:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BsOaNFCzaWTKDGb2ivc9wIDZoNody5mieQ5Qu2UUJiSTpk74DhwlcFVL7mjfU1wz1v2yhdSK4pDgu6zeVI6Xghf8gdVRWeglXI/3dIGnJ67mN+PZxVkkp8Fm8R4+Yw7MMGjtRN3SJsXencM6MP/C2gWWfdHxanKCRcRS85m+TxTeVSupy2ozEucZnhaNBTg97AMK6dZnvVZZPIvHhuOaN9iBier98EuKAsOr+OHr30KH6iqQXBBhYhxfVdG56PCveSUHQ7WWC4CtsQgbhWThEWrKfBc2oD2wOVSbOLdkrhcnPjkym2n9IQOfmE6+WaOAFcbqDxM37czhQpkfvOsU2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vvWUjTVeO3djzzcn5x41qdWCQzxAPgnrPjdXWv4+Ldc=;
 b=a6R+OHZwLg7ZfqXhejn0h4vpVg2YhlD9j7FmF9PwROqIBxYYPJh3B0U4J5xd1I3RIKIZ4xuHbrBdM1UHgEfnRjpMQ3kRXSiT/6ELQp1cILCkBEYpql7jqKEgQM1QolGyRej6Uc90HskEwc7wUErnbxe1JhUwxEseSQOGF+67W7Cs92lE95QqhxLs3gcyEb5mq+I4uR+2MY1NsxajCtw6mfemvRYB/3XxlNHnEtK1dHsud4ew/aF1/iQy+Hd+Uqmv4Oo8QFzZZZDz0jU6zyGiHxypvFA8HHgnGLFUPxOK5dGR3um6LHkbm9BFvAMS/wY2E8L2vmoJM3/eDGf5YlKpwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vvWUjTVeO3djzzcn5x41qdWCQzxAPgnrPjdXWv4+Ldc=;
 b=GxBWlOjC2o9Kvjlu0tfCBsUKdsEnFknikY/CMMheXOh2JEoNaXKjNOgGw3x/W+xXYg+U2KEeOiTuXi+wfVsHKg6yPZcasTRy+16RTgzmLKkimjrhkRaFC1cJIQNgi8DW3nNR+Jy8pkdzX59ZjZDC0+xSolIxwWrt46ESMaksjFA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4315.eurprd08.prod.outlook.com (20.179.43.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 15:54:21 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 15:54:21 +0000
Date: Mon, 30 Mar 2020 16:54:19 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use defines in preamble_type variables
Message-ID: <20200330155419.GA133370@jiffies>
References: <20200328140955.23615-1-oscar.carter@gmx.com>
 <20200330154902.GB125210@jiffies>
Content-Disposition: inline
In-Reply-To: <20200330154902.GB125210@jiffies>
X-ClientProxiedBy: LO2P265CA0432.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::36) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0432.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend
 Transport; Mon, 30 Mar 2020 15:54:20 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5531c284-d347-4327-a478-08d7d4c29c8f
X-MS-TrafficTypeDiagnostic: DBBPR08MB4315:
X-Microsoft-Antispam-PRVS: <DBBPR08MB43153FE4C22C24D3E0952263B3CB0@DBBPR08MB4315.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0358535363
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4491.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(376002)(136003)(346002)(396003)(39830400003)(366004)(26005)(4326008)(52116002)(6496006)(44832011)(1076003)(81166006)(66946007)(8676002)(81156014)(33716001)(66476007)(33656002)(55016002)(8936002)(9576002)(9686003)(86362001)(53546011)(6916009)(316002)(2906002)(186003)(16526019)(508600001)(956004)(66556008)(5660300002)(54906003)(518174003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x4ACSTS6YRaGGOot0kjCPwrU0XRdzATR6K5oEJa2uHqQQoesXZtsN6B/ZORdrqK5qjtuSvkxb5eSepUAYQu0BCN2l6Lnh/4r4Es5/bDsIriFQB2fublYJQ7TmNzV2Mk3Aoom0jwnV6HDPSHHQav1r9o9PQNGRJFHa9FIANuMmO3750C8pDq/7lcj93kNEryoayLg8cqFIoBQWXGgnkLVUTtdiv+I0sgDDHCvHUBXDwW4A+dyC9pqkAnlv8ZzfwOaInm8h+4xoAzc5sdeOOl2GFctW1Fg06RM+9f6axRV5IlXxlRMRqtzGEDHTTQstUI0Ucm4FnNQwBJbMcbdXw35gJhsgSEHXPMypt2HrIp8aFDgFXCytl3/N25iKv+SWXrcK03YJWaAxKH92EV9RTovVWHUkv3lW9y/RPpH2XsiTUqgHzRNYpIkJNK8+8A1h/4BlH3VVbXS0zC0tnQuo5z3Va4ByJf3UTYmyCJWPbpb+dqGeF80vSRdSNhi/l7KtiHe
X-MS-Exchange-AntiSpam-MessageData: Ce4lad+lauqHVJV2QAWn6m10iBInbkwKAiBN6QXhoqe5PpR4ECEjT8w6Vj4Wi6S9y8FXvg+p3HhotPryPlYBN/lnJautXRf39JzVoDkuh4JJh8qOnf/oml1ytaElOyr2ysTv3+XEBvcZ4cC5VgIdyg==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 5531c284-d347-4327-a478-08d7d4c29c8f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 15:54:21.2437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ssB5AcV8JZYLi0Krqo/GJA6XFv50+zBJb9WQh1d/xEJcU1pnwYkiEQPapha9LJn0A/8tzjLVTWtksBTJmQLycCq+dC8Kun7yIshY5fhSTdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4315
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/30/20 16:49:04, Quentin Deslandes wrote:
> On 03/28/20 15:09:55, Oscar Carter wrote:
> > Use the PREAMBLE_SHORT and PREAMBLE_LONG defines present in the file
> > "baseband.h" to assign values to preamble_type variables. Also, use the
> > same defines to make comparisons against this variables.
> > 
> > In this way, avoid the use of numerical literals or boolean values and
> > make the code more clear.
> > 
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/vt6656/baseband.c | 8 ++++----
> >  drivers/staging/vt6656/main_usb.c | 6 +++---
> >  2 files changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> > index a19a563d8bcc..9bbafa7fff61 100644
> > --- a/drivers/staging/vt6656/baseband.c
> > +++ b/drivers/staging/vt6656/baseband.c
> > @@ -142,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
> >  	rate = (unsigned int)vnt_frame_time[tx_rate];
> > 
> >  	if (tx_rate <= 3) {
> > -		if (preamble_type == 1)
> > +		if (preamble_type == PREAMBLE_SHORT)
> >  			preamble = 96;
> >  		else
> >  			preamble = 192;
> > @@ -198,7 +198,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
> >  	case RATE_2M:
> >  		count = bit_count / 2;
> > 
> > -		if (preamble_type == 1)
> > +		if (preamble_type == PREAMBLE_SHORT)
> >  			phy->signal = 0x09;
> >  		else
> >  			phy->signal = 0x01;
> > @@ -207,7 +207,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
> >  	case RATE_5M:
> >  		count = DIV_ROUND_UP(bit_count * 10, 55);
> > 
> > -		if (preamble_type == 1)
> > +		if (preamble_type == PREAMBLE_SHORT)
> >  			phy->signal = 0x0a;
> >  		else
> >  			phy->signal = 0x02;
> > @@ -224,7 +224,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
> >  				ext_bit = true;
> >  		}
> > 
> > -		if (preamble_type == 1)
> > +		if (preamble_type == PREAMBLE_SHORT)
> >  			phy->signal = 0x0b;
> >  		else
> >  			phy->signal = 0x03;
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index 8e7269c87ea9..dd89f98cc18c 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -99,7 +99,7 @@ static void vnt_set_options(struct vnt_private *priv)
> >  	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
> >  	priv->bb_type = BBP_TYPE_DEF;
> >  	priv->packet_type = priv->bb_type;
> > -	priv->preamble_type = 0;
> > +	priv->preamble_type = PREAMBLE_LONG;
> >  	priv->exist_sw_net_addr = false;
> >  }
> > 
> > @@ -721,10 +721,10 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
> >  	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
> >  		if (conf->use_short_preamble) {
> >  			vnt_mac_enable_barker_preamble_mode(priv);
> > -			priv->preamble_type = true;
> > +			priv->preamble_type = PREAMBLE_SHORT;
> >  		} else {
> >  			vnt_mac_disable_barker_preamble_mode(priv);
> > -			priv->preamble_type = false;
> > +			priv->preamble_type = PREAMBLE_LONG;
> >  		}
> >  	}
> > 
> > --
> > 2.20.1
> > 
> 
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> 
> Thank,
> Quentin

Disregard this review, a v2 has been sent.

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
