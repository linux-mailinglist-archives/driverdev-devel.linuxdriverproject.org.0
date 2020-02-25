Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C9616BB8E
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 09:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCBC58651E;
	Tue, 25 Feb 2020 08:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N+6Q-oMbV8f0; Tue, 25 Feb 2020 08:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F2F28643F;
	Tue, 25 Feb 2020 08:12:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C3311BF2CB
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 08:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 68DB48618C
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 08:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4D3Cy+UbYzk for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 08:12:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2105.outbound.protection.outlook.com [40.107.92.105])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 77C6685D22
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 08:12:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsD5EU5wRtbgctz0dD2GkGcx+fuOesP+SvS20d5VJ80AyFoHU65meDm9jQ1u6hoiCRwjIvEJ07k4+MaSrfXXoyVXSE3caBTLoNJR81KtiYr9ot+mdKI/it0mynjo66hSMCd/GUWcJECaXJs+qm9U06LJdFI/cYP2E77zk0wUfV+As22JAED45hwQDXamPbV34WlfNdJJXHeDVU/GzcqB2zRGD+yuhBgK6acjdUUOLU9zONgpOQg6Gyrkxv+DSUx1qEWCyQ816HguYRXT7oUgv8MZ4Iokqrm93Gsu7mXklEH39Aj1YS68eaJwueRaVBbofNZb6fkG7SHfAi/DUHTzPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uWmD5YkrDPV/XQt4ubPOCeJJPXa81yAu7g7dESfiDrc=;
 b=VSAacKu5z7O7KsUWlCdX4Yc6sXH0tZW+dox4hcHm+TRwjY7ezl+Y2tSz5sZtNslmHbvlENAQ9oA75X75pUSj1go7ndOZJ3Q5EO4/X4b0gILz1eowcHDrMADeASF81nGSm6mjTKGyxCXJ3XxcaZSi72jQPTUZ3LvfHYU/Zc4v1vyWqTxnuUQp3kNjJct3ovowCrKsPouVtMiYkHVDFebrFd6sUOvn93aROwCnb3pzplcb/lVYME1zolbPWq0iKaaxu2WfXO0BpNt+IEaj7d8NScQ57SwZg6yTxhBV0MDza1emy/D6U3f/nJP590+ddg3vzIktHaGV0Vp2oX/Ie98IzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uWmD5YkrDPV/XQt4ubPOCeJJPXa81yAu7g7dESfiDrc=;
 b=erp5opGmb+HHuUcfO2eDgloODJP2lODbqLb7F/1xAqaAqSjzbIBVyGZYvQjKVx8fQqW0vhsVmwEro+1Lr5eb6pfT99+nL7womAdBYFH/VjuO2cQ2l61xyCPmsFbX0Uc4seVnNnOvr7FrCRpIF0cdvcyT3muBmF4GQHxisrmOo1g=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (2603:10b6:805:a5::18)
 by SN6PR04MB5151.namprd04.prod.outlook.com (2603:10b6:805:90::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Tue, 25 Feb
 2020 08:12:01 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::9598:7ff:b397:ba56]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::9598:7ff:b397:ba56%7]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 08:12:01 +0000
Date: Tue, 25 Feb 2020 16:11:52 +0800
From: Xin Ji <xji@analogixsemi.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v7 0/2] Add initial support for slimport anx7625
Message-ID: <20200225081152.GA12531@xin-VirtualBox>
References: <cover.1582529411.git.xji@analogixsemi.com>
 <20200225074200.GC3308@kadam>
Content-Disposition: inline
In-Reply-To: <20200225074200.GC3308@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: HK0PR03CA0101.apcprd03.prod.outlook.com
 (2603:1096:203:b0::17) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a5::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xin-VirtualBox (114.247.245.254) by
 HK0PR03CA0101.apcprd03.prod.outlook.com (2603:1096:203:b0::17) with Microsoft
 SMTP Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 08:11:59 +0000
X-Originating-IP: [114.247.245.254]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b4418f5-7903-4f1c-65e8-08d7b9ca63d5
X-MS-TrafficTypeDiagnostic: SN6PR04MB5151:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR04MB5151A43B41707F0ECB6CFE1BC7ED0@SN6PR04MB5151.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(39850400004)(346002)(396003)(376002)(199004)(189003)(54906003)(9686003)(55016002)(66556008)(956004)(8676002)(5660300002)(107886003)(81166006)(66946007)(33716001)(8936002)(86362001)(81156014)(316002)(66476007)(6496006)(6916009)(186003)(52116002)(7416002)(6666004)(1076003)(16526019)(33656002)(2906002)(478600001)(26005)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5151;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s33h31BvSZP/qc5y4wPM+R/TktdtW7Hw26vlA2IaT3HyoM/cqeYPB/b3usofkslL4yKg/cBIe94W3V9+mSjIE/ejwA5lncgJzQbEGXz7+kCCOap+gvTDUhLNsYVOQyxhQvarYqj15vt3mrqHoaeHtguIMrBe4pV196KNG0PUkq8p6MI13AWOdJQNfaso9AhkXpogkejmoACN+H3UY//dLkvEJOO6kZWHUR8JtsvlistaOXhE6/q2mtagib+3Y+rVqKBg5g+8pqd34coTfwJHfczkYKkhTGgBEqKKVpkEQ0Xu62onsr3Xk8+FyMy1VG9uB0UEodIl8Unin0h96HvRxQSWH8jEV5X50WFsm0/+VtCfWBytYHsmoKPl9QmauIWm5CdprEdBQakTebNbMpAtePF/bxvP+O6XEEnMDqppWUea5ElgTGr3iIPqVYCaSx7y
X-MS-Exchange-AntiSpam-MessageData: F8uXcJU1WJ20Vgq1xT+eTl9ETnmMvHsxnxgyQCRDNIDB+7f65OicJUUrFkdlUmxGCzGiaCeDX7tVT5sPgYsSzrn86vY/uI4UlgSYv75ex7idkddR5kz0e9u36wOfj7Me6TOkTH+peJ/rBx8j6bxJPQ==
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b4418f5-7903-4f1c-65e8-08d7b9ca63d5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 08:12:01.0223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BT7IFtwJTyjxK19oyywgICGlMNit9WMdS9QT6dS0f76hSV5G9JqvRICHXWuWehb1pJb18/ACqanmG9N4G3rl4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5151
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pi-Hsun Shih <pihsun@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 25, 2020 at 10:42:00AM +0300, Dan Carpenter wrote:
> On Tue, Feb 25, 2020 at 02:11:39PM +0800, Xin Ji wrote:
> > Hi all,
> > 
> > The following series add initial support for the Slimport ANX7625 transmitter, a
> > ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.
> > 
> > This is the initial version, any mistakes, please let me know, I will fix it in
>               ^^^^^^^^^^^^^^^
> > the next series.
> 
> This is actually the v7 version, but the patch zero cover letter hasn't
> been updated.  :P  The last time anyone responded to these patches was
> to point out three simple bugs which you fixed in v4 last November.
Sorry, I missed it, I'll resend the cover letter.
> 
> What changed in this version?  My guess is that nothing changed and you
> are just prodding us to re-review it...  Feel free to say that also
> because we can't read your mind.
I added a new bridge interface "mode_fixup" for processing critical
timing. And add MIPI RX tolerance by setting register 0x1B to 0x3D.
> 
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
