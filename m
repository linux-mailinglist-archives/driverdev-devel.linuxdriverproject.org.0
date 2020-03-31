Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D82B1198E74
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 10:30:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D01985EF1;
	Tue, 31 Mar 2020 08:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOyQHG7SLVFI; Tue, 31 Mar 2020 08:30:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3B8385F15;
	Tue, 31 Mar 2020 08:30:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FFCE1BF297
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 08:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 51A4F875CB
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 08:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uHkwm2MPHDI for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 08:29:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80073.outbound.protection.outlook.com [40.107.8.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DB2A875DB
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 08:29:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPH8i2DQcO7/LbbxOvIVniHLyslPicyo1WGsBzFUoqemG/XC6JPnA6LqMX0yVCSyAgGgGLlbMoDFRJqknecirhPrEZD/uE4Yuheo3EazaJtlS9hkTw9r4dLRTxY+H9k0uawLr0xPVhFm1Y87aTPxNAFdEIXZRusv+kiORawY8nHkRQdrddaVNBYbLPxKjn0pmyMfkx+hjiZ34iQKavVgjeVWt71lAf22HESs7z7m8QuBcMKtDdxQGjLHj/RwMYdvZqKMl8IMuKQFfEjicHyiZ4qJuAow7R8M9xKCUAK5fNxC82Tt8vb6RdsSPnQbw87FNNI7gZXwLmpJsL33hWyI7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wav6kjNyTVj2opNC+yWLCLaK2+qyaHXK9/TSzlwy2hg=;
 b=gSjnOfWfGsISNpidC7F/Z0N4jbxjmzV8fu3Zc/zIyR9nonvTFLwIvCNoHiRrboIgKQZzPInPcxYBOmb9TZY5xamxaIokFXH+pRwGHGSZCv1lRpd2Zom3TTM/ugEHVXQViUA0gVB5dMFIkxUri4kVjPYgNbTB73cNu46WiozbW97AtedKyYc60wutl5mw6FvtF8/+VhhDRZ3XC4dvOZJ4yuCTCQYAb71yTqDN9YQBZ0Q+Vj/lQMoZUaEn6MM019wYKFtkNNcmgIUJHwnR64mu/k5ArGYPSB6CxvDe6UvDvCQiAQ5wSVEQu1UfatvFlXdB0S2VA4kRxp2pzphOxrLrFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wav6kjNyTVj2opNC+yWLCLaK2+qyaHXK9/TSzlwy2hg=;
 b=NZ9oN/5ASjNAWDl9u0l7QZAhyt5P6V+ktbPume6gMHw6Jk3EhlOAk/RuHcHlRZbl1mJWtJrIv5VMiRzBqomtFyZqOFfcxtQIvhgDWt6yxuP6oie4OfKHRUFzQkYjlcXJZCGOou1jvs8SRCEztHjcyKT5Wsd0+/y5YUwRrE6n118=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4474.eurprd08.prod.outlook.com (20.179.40.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 08:29:54 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 08:29:54 +0000
Date: Tue, 31 Mar 2020 09:29:52 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Stefano Brivio <sbrivio@redhat.com>
Subject: Re: [PATCH v8] staging: vt6656: add error code handling to unused
 variable
Message-ID: <20200331082952.GA13403@jiffies>
References: <20200330233900.36938-1-jbwyatt4@gmail.com>
 <20200331020103.13008f53@elisabeth>
Content-Disposition: inline
In-Reply-To: <20200331020103.13008f53@elisabeth>
X-ClientProxiedBy: CWLP265CA0336.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:57::36) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by CWLP265CA0336.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:57::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Tue, 31 Mar 2020 08:29:53 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 97a1b709-e73c-42eb-c306-08d7d54db049
X-MS-TrafficTypeDiagnostic: DBBPR08MB4474:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4474B9C00C66C945F22212A9B3C80@DBBPR08MB4474.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0359162B6D
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4491.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(366004)(136003)(376002)(39830400003)(396003)(186003)(5660300002)(8676002)(1076003)(9686003)(9576002)(81166006)(4744005)(52116002)(86362001)(66946007)(66476007)(54906003)(956004)(2906002)(316002)(44832011)(33656002)(55016002)(8936002)(6496006)(81156014)(53546011)(508600001)(16526019)(26005)(4326008)(66556008)(6916009)(7416002)(33716001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AWmZCS+NKiYOGroA7jUSb6s87vgIZ0aaItk44lifMsaGBozUD8TGsxZBRRd4kItGStvbnezJEiJBh5vt+5O4VCRCCYDIZ4/Mo97xjWcnu4fOMHiWpOpeTEqpXvHlinEkgS6UGOHjz+7FxBWOcTAh4t2+EQAHzLLaqpHiMAGpS6UTCR2vcQRYU3DEzEqeu8vS49HbAl/TV8LtP/K45OHYJ7uHK4BDYEbp1pGXNpxrE9mpSiykKUoftS2J+HHe5D/k3MmgZbY9ja/sxI66SxvSo5f1Yd+eD2Y0CRpsgjQ1SGfBeyiPYVLtfIUxtN7u7PxXniCZ8M/1d9nhc4J9fGpey6dcBNl20ff3Sd8w1aBewGBW1IEIC7YSqfvtpxf7ivqlVV4u/gG+VgAi2XYn5Sp/xx9fUwTzR/B3G1uLQSuq69+y2kPjEmw1ySX5cI+iBd+p
X-MS-Exchange-AntiSpam-MessageData: CGs9CA/GOqp59O0P6elyGOth+qaejZCNF3Gcpmg+l/vc/PYDIUeWoYniV84SmlBKUSqBO8GUJKtuajjHJ7n5YmGgXZbky2ry9ZzhMJ0wztr+Uuwa4+dK/4j+BoC0dddn18DIu0oe6S8OkQPxSxzmKw==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 97a1b709-e73c-42eb-c306-08d7d54db049
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2020 08:29:54.4086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +cAhSLodrWa3NCov7Y/DuGHMWu2h8FIDXyjFQh8V4a96Zjle2Zrgjr900bqu8NTxgWTOC7MVeFp/EElijxjTod13AGZVKclS6O90VsJ1aoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4474
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
Cc: devel@driverdev.osuosl.org, "John B. Wyatt IV" <jbwyatt4@gmail.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/31/20 02:01:03, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 16:39:00 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
> > Add error code handling to unused 'ret' variable that was never used.
> > Return an error code from functions called within vnt_radio_power_on.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
>   ^ This should be dropped unless Quentin agrees to this version as well
> 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> 
> Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> 
> -- 
> Stefano
> 

Just reviewed it so John doesn't need to send a v9. Everything seems
good, I'm happy and checkpatch is too.

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
