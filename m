Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D66198055
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 18:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 249C986890;
	Mon, 30 Mar 2020 16:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wlrUITePrWS3; Mon, 30 Mar 2020 16:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5DE185FD7;
	Mon, 30 Mar 2020 16:00:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5FD21BF40E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 16:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D5DA62049A
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 16:00:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qiX-PHW+788Z for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 16:00:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50066.outbound.protection.outlook.com [40.107.5.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D708B20027
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 16:00:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U4fqGwNw0kNZ8gyGDdtAgNJeVs6BqfnOVriX+iKalf/BRbYrz2ReRgm9bQfS8NoJg9vuafvMvMRA86jE3mDNKKY0GA8TY821mcRQ50618H7SJmvaaTPLBIwewKxpitj6+1KPmr8T/471SW9yxq8dRR86EdO9j1jb8+yJaLEcgSErMwHlM+Gzekx/wh8zKT2pnMKIeSSbgZmIBaQUWbHmmxWwfn2d75fqBlbf9RYIgiHbRc/vVO8mcTffTXVmarVxxQw51dkRPHaRDuNpHIcu9BRT7Njej33YC0Vv10B0PKbaAxHxJakwTzfj9+S9Pb/2IUnfeKqv7ckLBmqVBUL17w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bZaDyUBF9HrkNICJPDpXfdL78ouggZb/8xjz5xgj8bo=;
 b=aOaUhCfo+jrDlr8Dc9P6+VZiFqVl1PI8ix0tTW5NzdY8rQs3AYRr6YXE3PnpXW/XYyWCJZ/bpnbzj1DnnK+52DbsSdHfppo/yv9Yy9S7SBQ1JS29Eibm6/0PR+IceZ1Y5fzR8qOxpUdSdYTOBbfX612k7fOz1w7+zvzLYOjpkn1/kvK/OCs8dirdX66xTH/2mImb98zrRgrVDg37hSRtET9zNBhAO7TI9vgUKgzAyuL1YO2+jHU0Hjd2dXhko44+JtE33QKoqK2ffVTBzfUR/c55Q6Vwz5JDy91Etkha341eU/LMis4GdE/4VV0jWlu1Hubfha6WauoJ9uaIjQSxMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bZaDyUBF9HrkNICJPDpXfdL78ouggZb/8xjz5xgj8bo=;
 b=hMQ4XEXAArxZ0Hn6kGcWHsXeOni4sH+98Psd3To3xtCpNcZm5lOXGoKSdNz8bL2CARCcLNmgZWKBlz0huBHxmcfhlnTLSEfK2WI9DwQsfXH8qDJM7TzMrlyUzmfHtLz2e7fx49KowiQF+pTn8cDfInZMq+heLGDlNqXHRypeJs0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4538.eurprd08.prod.outlook.com (20.179.44.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 15:46:02 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 15:46:02 +0000
Date: Mon, 30 Mar 2020 16:46:00 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH v3] staging: vt6656: add error code handling to unused
 variable
Message-ID: <20200330154600.GA125210@jiffies>
References: <20200329084320.619503-1-jbwyatt4@gmail.com>
Content-Disposition: inline
In-Reply-To: <20200329084320.619503-1-jbwyatt4@gmail.com>
X-ClientProxiedBy: LO2P265CA0169.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::13) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0169.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Mon, 30 Mar 2020 15:46:01 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b62de620-3a39-4dab-30bf-08d7d4c17304
X-MS-TrafficTypeDiagnostic: DBBPR08MB4538:
X-Microsoft-Antispam-PRVS: <DBBPR08MB45380A13D11558A36DDC2127B3CB0@DBBPR08MB4538.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:635;
X-Forefront-PRVS: 0358535363
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4491.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(376002)(39830400003)(396003)(136003)(8936002)(54906003)(7416002)(186003)(5660300002)(26005)(44832011)(16526019)(1076003)(6916009)(81166006)(81156014)(8676002)(9576002)(2906002)(33716001)(86362001)(9686003)(33656002)(55016002)(4326008)(53546011)(6496006)(52116002)(956004)(508600001)(316002)(66556008)(66946007)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zc8roQMny7lEroB5EWxip3TxWGPhlG/IjSXZltU60ZNa/54o21sTOvN178+ATx2L/a6qpuMgDsgl5Xc4NYQr2VGVXAXqa2s6xPwuJsPICl1dxKotXk/kiktNGvdCU+16kFayAvAl3VaGWu1h8yrdBIkSQxZ+Mjgu+GXOdx6FIRfFJhwnP1gV+J1Q3VESEnPX0I5H2sSkyxs1txQrOR3BJM92kIAhu3gHOP9ZseL3xRNoirYPf5DE3ZPi2+6KJjzAKnUmhs7YenhNanRDmbGaLpZAfkQS5zf8SlUnyshLxhnWnvviZvSC0oR+XH3TDfUtGdfrKC5M+Ma8OtV2H56YXb2BmUi95tIDphPkCodYNmXqefZSp1NICZzusoGwLlUILfxZ7I0gg/LMDsPpfXQvUlr9k1ibako1C0c9VPaNaiqYe3xh8u88Ce+xBmk/ZQzl
X-MS-Exchange-AntiSpam-MessageData: GwmWchUX2xaxZh8V0nuke0yR5lBHdeHKIrnSmlAH/bHMATJNgeAFMJ52vAeTL+y6l4P0CWYfjRpoTz51R8V5LxoCy6z21qn7Or1atWd8ecj0kNcx4MsLbfFhri4Y8QF9zgHd6ELUyAUafm78BVQ5IA==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: b62de620-3a39-4dab-30bf-08d7d4c17304
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 15:46:02.0705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G4LT4iK/OIgRo4hEC030dZUOQU3TpzZlCkknLjhGcaxkK5AA0wG3OTyivVTj7yOgsBIJqFe/JH6DrEzrHYxalOqsCm0O2dwna3WCi67kmg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4538
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
Cc: devel@driverdev.osuosl.org, Stefano Brivio <sbrivio@redhat.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/29/20 01:43:20, John B. Wyatt IV wrote:
> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v3: Forgot to add v2 code changes to commit.
> 
> v2: Replace goto statements with return.
>     Remove last if check because it was unneeded.
>     Suggested-by: Julia Lawall <julia.lawall@inria.fr>

Because it's after the comment line (---), this Suggested-by tag will be
stripped-off when applying the patch.

> 
>  drivers/staging/vt6656/card.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..239012539e73 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  {
>  	int ret = 0;
>  
> -	vnt_exit_deep_sleep(priv);
> +	ret = vnt_exit_deep_sleep(priv);
> +	if (ret)
> +		return ret;
>  
> -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	if (ret)
> +		return ret;
>  
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
> @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  	case RF_VT3226:
>  	case RF_VT3226D0:
>  	case RF_VT3342A0:
> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
>  		break;
>  	}
> +	if (ret)
> +		return ret;
>  
> -	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> -
> -	return ret;
> +	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
>  }
>  
>  void vnt_set_bss_mode(struct vnt_private *priv)
> -- 
> 2.25.1
> 

If you could fix it, then add my review tag.

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
