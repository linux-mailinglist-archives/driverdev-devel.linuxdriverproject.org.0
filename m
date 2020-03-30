Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0872A197CA9
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 15:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06B9020423;
	Mon, 30 Mar 2020 13:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AlwauJLxb2th; Mon, 30 Mar 2020 13:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6897022DD3;
	Mon, 30 Mar 2020 13:17:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10C691BF39E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 13:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08BF387E88
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 13:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id brYIoDKFvnP3 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 13:17:07 +0000 (UTC)
X-Greylist: delayed 01:18:00 by SQLgrey-1.7.6
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr140043.outbound.protection.outlook.com [40.107.14.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 34FF487E78
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 13:17:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hgg0FKwTadNBqDNLFZVC7jQPBhVTWaVWRhMxbRQlaFl84VGGpK0XX1KMEI0Bj6VN1s9AFFCYvIOeYE1FBP9ItDBVj9/Se47c2sjcIz4on8o2181SOmNsi1vtBYL7i2XJ+Wn5XMNJUlfTvWOLN0IwNCA9mE8tt5DJAf2K+FwFsPMJibfW7SIkdPKDpGUFgEFz9Wowd7Iz8rLBnavRfdLf3drZz8EhPdDJBcR0bMPB1uSSglWtRsumAn7F0NBr0QVBmsJhJNrV/XnDjR1wV99R4FBtNxGDETDHQTsqWCOZXmbg9aSvQJvMtVdtjBmvWty9bHlaEc1MbQSrqzwquuxQJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1M9OIXFMvno7+qcD2ZC5RToymn/NcIiDGpLNH/06JA=;
 b=QhewnuipxHsTPQvIEB0nRT5cFjBiDiOnWLP4XQMfsIFtHCE+2zrlObwXXidENOKqvD59vaOB/ZINMFLWaZV81DoqTdCM3RnV9zo0ju9erDqnrxmYH+Qc8/G1XxgMcarXRGJ9gPtWF3FLNTmS9OJFa4a+OhOPdFTtJKzCqnIw8d1s3Gkn3kXeS6QYddFRdKmKj3wPK0G540/NkpdWGDBZ+4q5nRHSjWJY2Tg206UtoYIOiWNYDsGmS9L3YAcMU9F9W1Sjx+7e3FcC2zKUk8CRJyBzez2WzjaTrwYfybZs3N9RAcV7l8fr0Fzizw5oHjR0B5ucJLwjNSlKcvOl4AwRMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1M9OIXFMvno7+qcD2ZC5RToymn/NcIiDGpLNH/06JA=;
 b=RaEo5aI9U9r6V/jWV6rODxqRDgsnXNiQqGbRgTY1w3Dd2bZC7Vtr0N1Jme7TYnvcFkwKtx0qUxETsPD8yMc0g4VDcKKwlidSQuluGVDvMG/2tw4urPYh6GC7xrNNuMfABhJAhLkflCBkpyO+eOrm/TopP94wy2KL2AUrchFXxHg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4789.eurprd08.prod.outlook.com (10.255.79.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 11:46:07 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 11:46:06 +0000
Date: Mon, 30 Mar 2020 12:46:04 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Define EnCFG_BBType_MASK as OR between
 previous defines
Message-ID: <20200330114604.GA52025@jiffies>
References: <20200327165802.8445-1-oscar.carter@gmx.com>
Content-Disposition: inline
In-Reply-To: <20200327165802.8445-1-oscar.carter@gmx.com>
X-ClientProxiedBy: LO2P265CA0342.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::18) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0342.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Mon, 30 Mar 2020 11:46:06 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fe282265-44d6-445d-86db-08d7d49feec2
X-MS-TrafficTypeDiagnostic: DBBPR08MB4789:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4789BFFA0F9A572C11F32B50B3CB0@DBBPR08MB4789.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0358535363
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4491.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(376002)(346002)(39830400003)(396003)(53546011)(33656002)(81166006)(9686003)(508600001)(6916009)(8676002)(55016002)(81156014)(33716001)(2906002)(86362001)(316002)(52116002)(66946007)(6496006)(54906003)(5660300002)(66476007)(8936002)(4326008)(186003)(1076003)(956004)(9576002)(16526019)(26005)(66556008)(44832011)(518174003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T7293nycefwjs83W9fd0+ucNFCZ5xBbzwGhpBt8xvKzzfpJ407Pyh0JIcnXUo+0t3QMhJtYBKYYE+8y3cTYMBoFJ7jcghzkhpdZoVk1Zz/Qj4e+goFWO531DcKJRhhLxQSJgnvl8+GmpJrSYqOsCYaIUY7Xva7oFITKF21HsRuFNPDTr78HXZNc7hjHdrX8bXl0cAvxy7lOjzHgjvj7ochtFuscUe1UTwfE8aBQVeMFBveFGzvKDOQbXpFctEGnwUyTtw6XNBEKCHru6OYW3lrvoOItuYr1r1n1DFNvJtBaG4dK79nUdIiMRqpp2oGpEXUeKwf2Tyhpo3wTMnSgbzwRjLT0nTyLq5OviZevBsOSOQBzez1Lwqfy1yxL+J2Zra4aSgLzQg47ZAR3m8HfJN9Oe7byXiU3JBQl1sz9dEKGBHX8kgRsh40J5tuIDKyAltlH3BFuArIz1Ue+NRWOx7O+waX0V1WP7Kf9kDU1JT5URSlGNhUb3GGwa8hQkZa4V
X-MS-Exchange-AntiSpam-MessageData: zQJ6Z8rXJ2Lu/Drtc/iorheXtjMp1Oq8aSGaNaz0YZQEijpBIzgVx8zlOGtotyMShJUKy4MseLLKKh90iGnV4OgKVIjG9/ViC2R2OZUNRzkw0Z+UU54TlywfenIQyyH8YbJcj5C3ZrWs1VlnYig8og==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: fe282265-44d6-445d-86db-08d7d49feec2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 11:46:06.8458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /qsR7SR+f7k0noula9GyUxbkUS5h5i77UmXXviu+BS7OrUghoGCwG/1IM3ypeZN9xmQ4R0pei1DfPykTJ/Itw++1ublywNnI9Zrl3UuPdRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4789
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/27/20 17:58:02, Oscar Carter wrote:
> Define the EnCFG_BBType_MASK bit as an OR operation between two previous
> defines instead of using the OR between two new BIT macros. Thus, the
> code is more clear.
> 
> Fixes: a74081b44291 ("staging: vt6656: Use BIT() macro instead of hex value")
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/vt6656/mac.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
> index c532b27de37f..b01d9ee8677e 100644
> --- a/drivers/staging/vt6656/mac.h
> +++ b/drivers/staging/vt6656/mac.h
> @@ -177,7 +177,7 @@
>  #define EnCFG_BBType_a		0x00
>  #define EnCFG_BBType_b		BIT(0)
>  #define EnCFG_BBType_g		BIT(1)
> -#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
> +#define EnCFG_BBType_MASK	(EnCFG_BBType_b | EnCFG_BBType_g)
>  #define EnCFG_ProtectMd		BIT(5)
> 
>  /* Bits in the EnhanceCFG_1 register */
> --
> 2.20.1
> 

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
