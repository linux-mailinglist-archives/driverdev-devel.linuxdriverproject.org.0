Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA281923E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 10:19:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CB38C2580F;
	Wed, 25 Mar 2020 09:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvpKwLovA6Xh; Wed, 25 Mar 2020 09:19:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A2CD2357A;
	Wed, 25 Mar 2020 09:19:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E35B81BF37C
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 09:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFAAF86CB8
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 09:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JWe67nCtNv0B for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 09:19:30 +0000 (UTC)
X-Greylist: delayed 23:10:03 by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50055.outbound.protection.outlook.com [40.107.5.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1FAD686CB2
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 09:19:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHQutkmedsDm43JFyDVhlgLMnXrhgFir+Bhd4q21quy8aNMq/OGadwgP6LlGbxLQpbgPgK4BOvlXXJK7MmLOOq/TaONFmaJ5aOD83Pfuudgbc+RP5i71gQfIhNhiTO2uVzznLt1u2/FbTvlGqXif+KcIj0VEzxEEhDOWMNyXpptXVJLpsuVkQtbFidzCBUQjV5MXAxQx4jAq577SHOi1XewxtqwGBtJgcEBwG3Cb81aXPv1w8bmgqS7fws3GETiivbPBeBxPDMXnurc1ulB+JlHRhBg6YVK59Lsuqdgc7RwaiuE9L/1OKWjia6AordFsi+/UqHHe7uie3fPIjjtV8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkiqKGtQ4G6bCI09OepV5uXO6ATrWneKK+Ipz3Vx22Y=;
 b=HwOG5rQoTDn0RG2z7l4X1zMci+QQ/YWKwXMXLhGvUjBsC18clY8azxWiqHxBVQFmI635xNvpX5AhpjVmb0CeKzszvVzxai1RpmwMIhEdYfe7tEu94JWIypJKy4ye/RE4wxPP3w3Tn0xINfXkYCcJdI6Zollb7PpJ3+24lVmct9TFnedhutCiT9JZqNgXP+8hZkbQJlBZJLhGuM//iXnmQLVXY/MvhV1UBLzZYeklkfZgEbjwl5bz52zK+i6B8wWVzM1FWhgYS40lavIYDvOEypJl2UszR0gSXxVJWxJRfyEFMquz0gLn3G1B9Fp1MO/yaXKwLWCBg2xOO1OwkEaR0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkiqKGtQ4G6bCI09OepV5uXO6ATrWneKK+Ipz3Vx22Y=;
 b=aDp22+d0TmXOEVyNHuzmMcJFB7Ot2l5nAn/CxHlNZ5DIMW7wZBM1Hq0SCKCy159uWbJkd1e6B71qz3UN23soNPznMbrNYkjU5lgYTZoJvJ9lHXeGRxDHE1po+dDnucAqz9tjkhPp+1gXLkBxtOp4hBjzWID9EKhEBjHsH9N35yw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4362.eurprd08.prod.outlook.com (20.179.42.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 25 Mar 2020 09:19:27 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 09:19:26 +0000
Date: Wed, 25 Mar 2020 09:19:24 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] staging: vt6656: Use ARRAY_SIZE instead of hardcoded
 size
Message-ID: <20200325091924.GB15158@jiffies>
References: <20200318174015.7515-1-oscar.carter@gmx.com>
 <20200324095456.GA7693@jiffies> <20200324131830.GD4672@kadam>
Content-Disposition: inline
In-Reply-To: <20200324131830.GD4672@kadam>
X-ClientProxiedBy: CWLP265CA0361.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:5e::13) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by CWLP265CA0361.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:5e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18 via Frontend
 Transport; Wed, 25 Mar 2020 09:19:26 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ca06baf0-51bc-4692-72fd-08d7d09d9d82
X-MS-TrafficTypeDiagnostic: DBBPR08MB4362:
X-Microsoft-Antispam-PRVS: <DBBPR08MB436240F5EBE715B00D3DFE04B3CE0@DBBPR08MB4362.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0353563E2B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(136003)(39830400003)(346002)(396003)(376002)(366004)(33656002)(186003)(2906002)(508600001)(1076003)(956004)(26005)(9576002)(6916009)(81156014)(16526019)(81166006)(9686003)(55016002)(8676002)(44832011)(316002)(86362001)(66476007)(54906003)(4744005)(6496006)(52116002)(66556008)(53546011)(66946007)(8936002)(4326008)(5660300002)(33716001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4362;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1+smiLD+mH8ggHQ0c8+3wkgs+p9qQa0DGEIEuaMRAo+a5b4JZxoTsj+kg1leVd+vgnOzKrXrc757O5DNNNeEDlgyuKXEYXKE/c68Gqbxb7veJLwpKDnlLeHhmkMThd4GxIE3ucs9PyLNkhvzTLpztPA2BN7xWOtS+VGMgACbEmLZd1Il0rvT3Xg7K/prLA91pUp/Ts8Q79cpG7RZSAC/5uWCmph0vvaZxfX7IqRhtHsoXEmPSnUhDc1J6k4hQ279s3BeLe89BnvH6vfltt/q02bhce+N9SnrE9kbz9EYvIpoyqgH0S/ydMXPpjEz5AWsUGEXaVzOlH6T1Pe3NQX35IWOBq/llUAjYNI4wpmWhau5kILLH1Xh2Fke3eW+4I8Sh8PqLJ36c7ofqF9iSGPRdtAJ1nxcI0c8G9mIfjosL/S9l6agL25/PbHjiZh+Q5KS
X-MS-Exchange-AntiSpam-MessageData: R9hAToOI884s0MOABNE87qEJMvziYB21SnyqkG0bsTlNptwb976gOT6DHH2wdLH69QhSOuk178tDtOWzGrJbQKRs5zYtpZQoUD00QwGHUR+w4SoSJZ0JYcql938L37TwC8yBRuL7Q6N6oZm7zPUGqg==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: ca06baf0-51bc-4692-72fd-08d7d09d9d82
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2020 09:19:26.8078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rJ2mypnKSfsyKH+S5DLYvBzUtUx6/rSmIdEVjRwHC8rtiNAnd0AUJkL5bXmxv9QFsS+3/PkLAQZPaU0u/rFmyCkmLnFLG2fs6bP/6eyb3Zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4362
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/24/20 16:18:30, Dan Carpenter wrote:
> That's a bit over engineering something which is pretty trivial.
> Normally, we would just make the size a define instead of a magic number
> 14.

My bad, I meant "define", not "macro".

> If people change the size in the future (unlikely) and it causes a bug
> then they kind of deserve it because they need to ensure all the new
> stuff is initialized, right?  If they change it and it results in a
> buffer overflow then static checkers would complain.  If they changed it
> and it resulted in uninitialized data being used then it would be zero
> so that's okay.

I wasn't sure where I should stand on this, that's clearer now.

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
