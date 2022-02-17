Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B79B4BA4A6
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 16:41:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D98F83F86;
	Thu, 17 Feb 2022 15:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j_wtAcwkb-Zu; Thu, 17 Feb 2022 15:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEB3883F76;
	Thu, 17 Feb 2022 15:41:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 84F3A1BF2B9
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 15:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 707F3417A4
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 15:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ljRcIqvbUbX for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 15:41:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2083.outbound.protection.outlook.com [40.107.237.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8596D4179E
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 15:41:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HGrME3RP9Ckhhg2kewbLiv/+YpwATS2qrkO49JSGAU/6/19Gp5tu7M3rQfIK0FdaJuPeYUZAogETDoja+JVjE6cJKVa11nLnfC6PIEzI1/TAnIHTP6LIRO0wGQr3fzrOWS2yiNl3h5CSUjoMH6+naqG/jtP1ehrGYYsjwWsZ9ukI0cFGHzkycUA6PeHanaT7pItMqdOTt/QiRX4coJQx5vI5VlOhvKI5EtZTHypxDHcbmZCeqkh5aoO270PNhEmzJ9iRhhu+u62wqq1JOYHRgLjQYQ6jRiF45DKHq8JFQrEml5i63aRYHfm2RjPhNUockJhAcEDZ028QXOwmTqEq+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PFgGuxJsgpvsoF9UnLgt+bB2GMmNrdYn9FS/fQXFBqc=;
 b=kSPaqMU9nz7zYGMqfOUgyS1U4kdVTTuhOxUF/EZYXtOhXJr7BmaNcW3UTsfB3YGx96EJKlriNECYIYPE7Xhi4r4QeY0RE/JunxfkAeWVRYfM+4/cx/n5aHJXmLxIL+Znz6lcP0P8bOEdg14L1N447akVVBSYWATryhEA3WlHE07HPVwFThy/zlHpCchB/6Es8wHJjjIk7mff3XFemDx0EcPTZ3z2UyhXHYKu1rOOyuZ/17yezqyVoCzrbHQAknPKXzrTovzaB/fxqDdV1eONqXntyti7cawSxup1XU0QM3A4Asa1op8Drc4T/QJMQZ3WpZ1ARDuHmDILeXvX5ZaTeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFgGuxJsgpvsoF9UnLgt+bB2GMmNrdYn9FS/fQXFBqc=;
 b=UTOQMz4OlKaWoHkdWnGO5zjNfKC//dMPlWaoUZ1SA9uAiN42jwL1CDI0IEyG49b6YgfuOwN5MmqquiR04INkEn8ZyIMAzgViKoUGu/ta5zejxys/yfow0jNhdBYzcf/4b6AhIAMSGuMgNC3KDxG3YZgCpvb/LD3YtOBV116AMms=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by BYAPR11MB3798.namprd11.prod.outlook.com (2603:10b6:a03:b3::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Thu, 17 Feb
 2022 15:41:46 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::1b3:e483:7396:1f98]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::1b3:e483:7396:1f98%3]) with mapi id 15.20.4995.018; Thu, 17 Feb 2022
 15:41:46 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH 2/2] staging: wfx: apply the necessary SDIO quirks for the
 Silabs WF200
Date: Thu, 17 Feb 2022 16:41:38 +0100
Message-ID: <2063576.g1lFC2ckuq@pc-42>
Organization: Silicon Labs
In-Reply-To: <87ley9zg8c.fsf@kernel.org>
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <CAPDyKFqm3tGa+dtAGPn803rLnfY=tdcoX5DySnG-spFFqM=CrA@mail.gmail.com>
 <87ley9zg8c.fsf@kernel.org>
X-ClientProxiedBy: PR0P264CA0281.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::29) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b01dc83d-cdcb-4ff7-4744-08d9f22c0107
X-MS-TrafficTypeDiagnostic: BYAPR11MB3798:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB3798FF942ED9BB9D0A2EDD4793369@BYAPR11MB3798.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MjVL8pDplRAVH0ZX2GpWPaFfyifzHmSadBTIF8B/w4qx9a7k5LLMJMtZ0rnpXZEEi9i9tqzORbvJVQNK7vMzJygGTAWSqc0Me1PXrug2CUl7oT4Vv0x1JvWkMDAlqs1Fl7unXg388rJx078A48nfjKExlZpF6stijkLefQYxyd6s4PmuAqCn+lwNx2Uvp8rJ05r/g4w3GYhbDszHggLdU8Ca3zZXX5xTM8WbxAHpjvzlxwFOCIHJrpKpyCyzBbTeBZa/SoOR47YIZR9zjSEwDHiDapHpKXlzizdShTu3wFbV5u6tcuPLarelLc8wxeequaQCWVHyOX7o8/YCfmubTk3RFQAZ7HkAC1eeATMz0u7fF0dwoS1Mc/NOLiT4sAA5Ctiocy+m3kz6JP5QQK3K9LRw2AQwXr4oyiGmPeWfovdz3CVtd4un+nQrBHp7MUg7xmzE5MmBEZ957Q9l/6aHI4uC9+gOtVoOaeczYH/dX4A4NqbO0vd+xtvadXx3rHOX5AIKbPul9fXimJxP9l8N95n1Va3ljMR/ke2pkbknCFJGzNhbsbn/0RB31pS9fKxP6oWgCQHmwZgkAXHvt8ddPYT0i/4JgZqezSh7GcaBz9DpNUPtdyb/xdk2ghQEkX2GZNyWpyrhFwtzONNXC8Ftl9+Z65dHtCbkEl1DS3bs0oaY/1FADoBArBlowS95KjZHha8WicaIt66vB1lBxaqQtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(316002)(66476007)(8936002)(8676002)(86362001)(2906002)(52116002)(4326008)(6666004)(83380400001)(7416002)(66574015)(66946007)(26005)(186003)(54906003)(9686003)(6512007)(6506007)(508600001)(33716001)(36916002)(38100700002)(38350700002)(6486002)(5660300002)(110136005)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?nj4BPZ8Deic/236fbZJuCMarVmzNb/TmJNRRuER2o4YPvoKv+Lz8sqx04Z?=
 =?iso-8859-1?Q?miYpUAO3XVXGrJ+8mU+p+P+sYNEIYcHu3Wl59GScpj2pJvkslJDdaG874e?=
 =?iso-8859-1?Q?+fs3fLQ6qYAkUQj9MAgmnZU7HKgIm/eWZV69Dyj5Vi+0kkqSk19ibbtxk3?=
 =?iso-8859-1?Q?oE/Dn2UjZyuUPNLpOrFZS5PLFNclfNTRbCMsKjaWwiYUnN2wyq1TU5l9Jc?=
 =?iso-8859-1?Q?dQuK4nHWjHEQEy6IwVVlTqmsT0XVWD+e+qTrPBK8CK9Lqpi21ccZr3/nOx?=
 =?iso-8859-1?Q?rqI+Ubagc+5MWR1g9V2UAPPNjDTbK/I9e/IBR0dKwBUYxRF1H+nw+0acRF?=
 =?iso-8859-1?Q?JtzZ3FmaQN8K/AUq/5Nr/6F/lYVWheP6wveAgadriU9JEOqp1O/NNwjGII?=
 =?iso-8859-1?Q?wR55DrJdweIIKQyip8PYz7W1HnP8JhwgxfuDVAxQpXpoGp9B+RCLoPugfC?=
 =?iso-8859-1?Q?yTPEnneprqOVOgzUN7PZd2Oc4PYN0500ivdcdky5Y5UKx0Jg/ltRmT1l4g?=
 =?iso-8859-1?Q?8DR5wu1F/mvu7lL6+CIvtKmUOYOW9hkRScPu+xvCn74xzo2Zce8yeQ8+pl?=
 =?iso-8859-1?Q?7aNns//SsJ5xosqThUyGmui4F05ZaYmND/jhJUHDCaQ2suuWw01bCM66IZ?=
 =?iso-8859-1?Q?UnD2qzqPLVjHYoHndQL94T772yOglF1wDindscbetRvjkeWR9ayTF3HESR?=
 =?iso-8859-1?Q?aEeQtSIQvQw+Y2brhURpNrqfqTieaaRz16qMLp0xOzgaPc7/9wPLHLSXOV?=
 =?iso-8859-1?Q?z4i+eeoRMC4I4jU/yHr4KhNXSN1oyOq/IO4ojqngs3esvAalG+SciJcEx7?=
 =?iso-8859-1?Q?ROiic92f42aZdQjTpYTvxpvmKQVg00CF+vqBuielExYxx2PlF9h+iJ9/nA?=
 =?iso-8859-1?Q?ivtVeNHHCaGfVtk3lw/fHmRQxHKcjnYCklIGQokevBPi/Ow4/5ZY51jJSg?=
 =?iso-8859-1?Q?I8J1K3L8IQ8jSlyTfg8W7QlVg2S/8mkZhQYsTg10vHl9r3juYAGMAxA0O9?=
 =?iso-8859-1?Q?8Y/fHK9hb/p5abDUCqk75dXo6iOBhcGGO3BvoZhRIn8Z0RyoXrolyiZosW?=
 =?iso-8859-1?Q?ey3Dhwnz2v9X3kv0l0AXsEp8akSMePmVEXwb/zRKAdysDtpkpA6mXzNelO?=
 =?iso-8859-1?Q?1HgoG+TJ/V0mSOJ9Nt8gxM6z0BlYBo73+P1aNItq0wMjVbVQg41VMTD1WD?=
 =?iso-8859-1?Q?3NeKY26FXzL+YhAta/1xS7e7L4FsOzgPnXyiXe4+gDgvrNYdSO+cEW155U?=
 =?iso-8859-1?Q?JzLU/g4W9ZTJHpM8OzAOomA/AkC13FUu7Nu6mPoqRW2bl7pgeOXm2ZIaCc?=
 =?iso-8859-1?Q?OkCWa2VISMIncXoIeXCPTeh5+Zg0+PFcTdLE3/HKmWq45Wt9TEhcGrwe06?=
 =?iso-8859-1?Q?b9lL2e8FbrCHfZklmGu1x2CQV9ng2+vYY/Zb8NskMFwdA9uqNlKOdUkfRU?=
 =?iso-8859-1?Q?1Ht5g99GZ6t9cEida0cdJF01vuMxdMAoB3EBXDMJBaISRTuitrAwozFgqF?=
 =?iso-8859-1?Q?qbal/fg9aaAnb/1L+QuV3ngpZC9rBgnfWAwgtckVM3TqXSV88WyYZQvikV?=
 =?iso-8859-1?Q?obm+P1eUOZ8Zkh8svGVRk6TnnjMNu13IVJQpoJGdXn4qNxa7lLtnlDUxIE?=
 =?iso-8859-1?Q?ohmz9wAsuz7G4ZzwqIgOtyuXjT+AM6N5VOQrfNqBHmmE4budxU+XRdvaSa?=
 =?iso-8859-1?Q?YP2LOmNirgp4deBkf5U=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b01dc83d-cdcb-4ff7-4744-08d9f22c0107
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 15:41:46.2497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j41jkRmOL1jbcl2QtPZx/hwyEW8Z3ZB4kamTwhXNVZQ5l5CZuDiv55CXRJEA8QJyUegVjf6p5QF1NrcoIo+Tbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3798
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?ISO-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thursday 17 February 2022 16:04:51 CET Kalle Valo wrote:
> Ulf Hansson <ulf.hansson@linaro.org> writes:
> > On Thu, 17 Feb 2022 at 10:59, Kalle Valo <kvalo@kernel.org> wrote:
> >> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> >> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >> >
> >> > Until now, the SDIO quirks are applied directly from the driver.
> >> > However, it is better to apply the quirks before driver probing. So,
> >> > this patch relocate the quirks in the MMC framework.
> >>
> >> It would be good to know how this is better, what's the concrete
> >> advantage?
> >
> > The mmc core has a quirk interface for all types of cards
> > (eMMC/SD/SDIO), which thus keeps these things from sprinkling to
> > drivers. In some cases, the quirk needs to be applied already during
> > card initialization, which is earlier than when probing an SDIO func
> > driver or the MMC block device driver.
> >
> > Perhaps it's a good idea to explain a bit about this in the commit mess=
age.
> =

> I would add the whole paragraph to the commit log :)

Arf, Greg has just pulled this patch into staging-testing. I assume it is
too late to change the commit message.

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
