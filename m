Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E5E198021
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 17:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFD88884B5;
	Mon, 30 Mar 2020 15:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdfUbaQlK6E4; Mon, 30 Mar 2020 15:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56CAA87E55;
	Mon, 30 Mar 2020 15:49:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF5381BF40E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A98B587E55
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-SnHHdrTXRJ for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 15:49:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60088.outbound.protection.outlook.com [40.107.6.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C58087DAA
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 15:49:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8ENsIRw+eJ/dCh65+c9cyRSTYC9B9npDJvafAGVK6EfZ6xXKiXHZ4T17GTwJnK8siSgYsDPHkiTJKQCIQsxvTEuHJm/WneS88d/GUS9JXAvDCeyqRm4br1QJHJL0H/jyEQTytki7Vq051Js76caBawW8H0Efin4gXodNNvQ9AHHqbsme6nGGlrDctgDUzwRlmdlERhkDlNw0jhB24i0Z6/WwN99ui5OgPOz2j08NzQjOVxBPgCXq5jtnTrkWbjlqGoJdX3ej0rPkUu6S5eW+mz3HegbD7Cp0Yrcfo5G8kdGyhGb7SMmcFYaStpKuxmT8+nBGJ4QqbsArNFJnEWP4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6lQJfCCUxCUdw6Y9u4eDmaWsetRhXm8dp36vYW7y8u4=;
 b=MvCyvxdhxuZvFgI5Hl3pLWH3LtWWWjroPhhMh66pV4dAh5CVhp5cWixxxMtDBsU9DpTUE68BVUuFqMQxkcI06PaY1t9WSzTyasPDOEeEf+Sc8Ti8cIGVuF6dwyLlkeMT9z3PsXwXFDm+opTIL5czkqAxflP7F4rTI3oVi9QdTLMdWlwPjhuPMl5n8PFr7237FSfeUU749vYgoQASfWGn4IMFLNlB6KBLRglfMdiFXi5YG5eMegWslabAjXUgb5ftCIBedtyxgvHbatTG3M0GoVRegewm0rTVpOdlspZoUk+NsGjw20/e6mLbIoLRo5nSM8nMP/wvCQDci0GgXtVw6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6lQJfCCUxCUdw6Y9u4eDmaWsetRhXm8dp36vYW7y8u4=;
 b=KuUuGn1h5FLPXRyxZ07lfaOfANLiuP2VeHM1qoBPU2jkRg5oxThb9wYOif7Y+B3lGlOUQC+VT4p1DLq73BGURB3sDciLjroxB5xYXoa7NXKJ9fGvEQ33pCZPwp/uGq/Khg3Ha0RNJ4OtkxtCzCEd1yWq5fxE+dwIk3Oj4YWq3A4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4315.eurprd08.prod.outlook.com (20.179.43.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 15:49:04 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 15:49:04 +0000
Date: Mon, 30 Mar 2020 16:49:02 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use defines in preamble_type variables
Message-ID: <20200330154902.GB125210@jiffies>
References: <20200328140955.23615-1-oscar.carter@gmx.com>
Content-Disposition: inline
In-Reply-To: <20200328140955.23615-1-oscar.carter@gmx.com>
X-ClientProxiedBy: LO2P265CA0217.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::13) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0217.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18 via Frontend
 Transport; Mon, 30 Mar 2020 15:49:04 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87ae8b8d-a5f3-43dd-58ee-08d7d4c1dfe2
X-MS-TrafficTypeDiagnostic: DBBPR08MB4315:
X-Microsoft-Antispam-PRVS: <DBBPR08MB43153D31BFE1153E4F206767B3CB0@DBBPR08MB4315.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
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
X-Microsoft-Antispam-Message-Info: 2HwrTbpzas5jRcURRIpidX5ZBXs5pqbUdd345z60f7phBQqypVbGV9nmBzvo3qKmAgYdLNdwKiB0fG0v1yHLnECZOmlLbs4/Z774hhlew2KP5Lxp0gCUIhmN+MxfOaILy+smsSkZHsfpSIiRQPu1OEel7ky2//zTOTstCntcUBaIXfGGzyTUNVxgbG60s7SNI9ZPogU7U8PHK77ksaZOzsEelFa3uhFhJ3CYzuVut904f+XEEazzyHV1+9ae2zx/1vwPqVL5hmnCiHv1hJRBLW0nujWFa/WdOoXl1UXhdk7pGq3Je50MIjFWSyjoXBxpJ9rTIIkGuyw4f0zibWbalEkz+63zUnZJ5yHqkB+rk4e2GGLwplB8yykLXDBm8qXZL/hakktQh/WbD2qir6JjC1iFTDEfRiuL+E5rJYO5A3bmuZvql++/y7YoZ0ngsrWxdmx/6In8o77BBKByGLMtgMct2bwOtiYYBtW9z/BMg5U6NaFRkRYFb6vYVV3kMt/X
X-MS-Exchange-AntiSpam-MessageData: N6HbPFM7Nb8GTRJ+8PXaxa4R2Mo9ClQR0EelQW/mjB5gBvyIqsQ+IReBpzy5Qho825My+AMcFqTnJdQI877v8LtQylD9kndfAiVsjH2cVEDk9zqFB5xx8QJgNkbnQ9tlmOqQ78xLJGipdInfVO/+VQ==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ae8b8d-a5f3-43dd-58ee-08d7d4c1dfe2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 15:49:04.6883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e73i4N9uRFJaOrTAfuOaigAoovC1qOxkXu3KdPmle0gDn1qe2x5nCCH+q4Y0I/rmy6KkUCgpsdemzdt6sWIpBqtk2kA9NQrlHHewR1FxDtk=
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

On 03/28/20 15:09:55, Oscar Carter wrote:
> Use the PREAMBLE_SHORT and PREAMBLE_LONG defines present in the file
> "baseband.h" to assign values to preamble_type variables. Also, use the
> same defines to make comparisons against this variables.
> 
> In this way, avoid the use of numerical literals or boolean values and
> make the code more clear.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c | 8 ++++----
>  drivers/staging/vt6656/main_usb.c | 6 +++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index a19a563d8bcc..9bbafa7fff61 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -142,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
>  	rate = (unsigned int)vnt_frame_time[tx_rate];
> 
>  	if (tx_rate <= 3) {
> -		if (preamble_type == 1)
> +		if (preamble_type == PREAMBLE_SHORT)
>  			preamble = 96;
>  		else
>  			preamble = 192;
> @@ -198,7 +198,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  	case RATE_2M:
>  		count = bit_count / 2;
> 
> -		if (preamble_type == 1)
> +		if (preamble_type == PREAMBLE_SHORT)
>  			phy->signal = 0x09;
>  		else
>  			phy->signal = 0x01;
> @@ -207,7 +207,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  	case RATE_5M:
>  		count = DIV_ROUND_UP(bit_count * 10, 55);
> 
> -		if (preamble_type == 1)
> +		if (preamble_type == PREAMBLE_SHORT)
>  			phy->signal = 0x0a;
>  		else
>  			phy->signal = 0x02;
> @@ -224,7 +224,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  				ext_bit = true;
>  		}
> 
> -		if (preamble_type == 1)
> +		if (preamble_type == PREAMBLE_SHORT)
>  			phy->signal = 0x0b;
>  		else
>  			phy->signal = 0x03;
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 8e7269c87ea9..dd89f98cc18c 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -99,7 +99,7 @@ static void vnt_set_options(struct vnt_private *priv)
>  	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
>  	priv->bb_type = BBP_TYPE_DEF;
>  	priv->packet_type = priv->bb_type;
> -	priv->preamble_type = 0;
> +	priv->preamble_type = PREAMBLE_LONG;
>  	priv->exist_sw_net_addr = false;
>  }
> 
> @@ -721,10 +721,10 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
>  	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
>  		if (conf->use_short_preamble) {
>  			vnt_mac_enable_barker_preamble_mode(priv);
> -			priv->preamble_type = true;
> +			priv->preamble_type = PREAMBLE_SHORT;
>  		} else {
>  			vnt_mac_disable_barker_preamble_mode(priv);
> -			priv->preamble_type = false;
> +			priv->preamble_type = PREAMBLE_LONG;
>  		}
>  	}
> 
> --
> 2.20.1
> 

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thank,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
