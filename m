Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA629F185
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 17:32:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 985A3228F1;
	Thu, 29 Oct 2020 16:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ev2QAXJTvfpT; Thu, 29 Oct 2020 16:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDF402270C;
	Thu, 29 Oct 2020 16:32:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C1231BF5B5
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 16:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 88D7486B88
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 16:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DBeU0bGOQT7g for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 16:31:58 +0000 (UTC)
X-Greylist: delayed 02:17:40 by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2061.outbound.protection.outlook.com [40.107.223.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 63C2086B85
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 16:31:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKYEfQi3c7SBlWtaDQ2CBiOXymhPbxQPzIBHW7YyXdq0uZbN2M+QxEn4EcrDUWm5VR4DHt/q5YFpOavsA5JTocMTsJsE12qEInWaErSWEF5S3eIXA+ySxdt41g5kMb6sf3aJzL5wPj4ASzOTwYA+I76LOSiTDPvmgTM326PVwTLejup3YqbRB+FYKURwREy3/QHPoH+JNraOABXZohv2LiRXTXXiB3t1/VNpDHPB8lsmQEPmI060U0QPCAo92R3fCkMzgM/TO0jRlwKrxKiCx9zGymsMhE+AmQ+pWzwhRSZYs5ow7G+hoBi9VyKMAuBadH4DL+MLLMkDzNuasJ8AdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nXrdRTTPtu0hlZta0KsrFYFsx6zNG3RfVAsyDMv+iMw=;
 b=hcjiivV3AVZ5+LM807t9A1dPLVgtrD+cQDhEI0ptDGUo7fhz6ZPa5SCRr1tUQwemQPRuqvtIb7i2FGDz3b3yUy1ye+jPukLMW3/2pthrt3DFa1uLdQ/EYtHwpovhs5osOTODpD9PRZyyhJBZbOrUtUkAd88oL23JgjsrO3t1XO+WvJrLJYyeC8IbwSJluLDP/hbDplLTr6Cm7D1rvUchzgAxglKQ1pp/MJjuHG4mVT1XEmCForSrHsNvmKobX7N/OiuJIN7RXqmsvRzR/bnFJDbBwScH2mHkujwcfl+O1tcs5KRuRALk42FWFV9Bh6zskHE8gZ7Ypdy4QUx3PQe1kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alum.wpi.edu; dmarc=pass action=none header.from=alum.wpi.edu;
 dkim=pass header.d=alum.wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alum.wpi.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nXrdRTTPtu0hlZta0KsrFYFsx6zNG3RfVAsyDMv+iMw=;
 b=DVr9N2f0rwPSGYpsFjEC6ZE0KWlJ+YnqH+z45zo+cswK+gn5OtDCq0JtXz2uF8rQc3j6AmE1VuwqUSw8ZRP7TdJ3xwgF7flYwyIJaMqywI8gaK4AgFSQrswWoeedHHjc2mNZrbYKU/wE76ncm+OV1HuMkzJOBTODuxJYz1nNoK8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=alum.wpi.edu;
Received: from CY4PR22MB0392.namprd22.prod.outlook.com (2603:10b6:903:b7::19)
 by CY4PR22MB0104.namprd22.prod.outlook.com (2603:10b6:903:d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Thu, 29 Oct
 2020 13:58:23 +0000
Received: from CY4PR22MB0392.namprd22.prod.outlook.com
 ([fe80::20c0:ced7:76fc:f46d]) by CY4PR22MB0392.namprd22.prod.outlook.com
 ([fe80::20c0:ced7:76fc:f46d%11]) with mapi id 15.20.3499.019; Thu, 29 Oct
 2020 13:58:22 +0000
X-Gm-Message-State: AOAM531ZEn/opIDzsM/wA+ZCQJymrPD5Y0Zx8gBbO1t0zzOIb1tNSesQ
 vdF3vqNfd8zbMCQhXPXRmsAoeS7jIjtyvri+D7U=
X-Google-Smtp-Source: ABdhPJxS1+nQ8y66RWllXcFX6CpqmyK7l2EbhZtOSMNl2unbaBg48zmMdW8653aM7TdJTlzeWlKOjkguHOz01SQbn4Y=
X-Received: by 2002:a05:6214:1588:: with SMTP id
 m8mr4556655qvw.18.1603979549503; 
 Thu, 29 Oct 2020 06:52:29 -0700 (PDT)
From: "Brian O'Keefe" <bokeefe@alum.wpi.edu>
Date: Thu, 29 Oct 2020 09:52:16 -0400
X-Gmail-Original-Message-ID: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
Message-ID: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
Subject: [PATCH] staging: rtl8723bs: Add 024c:0627 to the list of SDIO
 device-ids
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>, 
 Larry Finger <Larry.Finger@lwfinger.net>
X-Originating-IP: [209.85.214.181]
X-ClientProxiedBy: CO2PR04CA0198.namprd04.prod.outlook.com
 (2603:10b6:104:5::28) To CY4PR22MB0392.namprd22.prod.outlook.com
 (2603:10b6:903:b7::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-pl1-f181.google.com (209.85.214.181) by
 CO2PR04CA0198.namprd04.prod.outlook.com (2603:10b6:104:5::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Thu, 29 Oct 2020 13:58:22 +0000
Received: by mail-pl1-f181.google.com with SMTP id j5so1332578plk.7 for
 <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 06:58:22 -0700 (PDT)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92d455de-f20b-48e8-047b-08d87c12b2e3
X-MS-TrafficTypeDiagnostic: CY4PR22MB0104:
X-Microsoft-Antispam-PRVS: <CY4PR22MB0104076546271D5067F0068290140@CY4PR22MB0104.namprd22.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SwjFN5MlnXFdVwRCGl3b9D8+mE2Ntj9IOhN4zP9ozThTMHPauBi1qo1QIlFuSqFJ9rNrOZjBGiy8/tXtO+qT3u/CENJYfJ8lxNiSuPjAklcl3nNLvAVNkEPydc23WGCHBSDLAFY/FnH80wb+AyWCTNXLPHjB9a7PYCp9yrkWzAJBTU1LRQo4/f9P6TVaJQYt/v8p/relrcp+Q8BPMssWMpdpVWH65aZqtgSaCLANzcKG703K+0x+8zb/lE2Aw2FyqrPOXchPXwbRJwLPJXCSWTeZ9P65qqe+rUNpo4UpFP2nX3zdy1fShX8EgbLZWKNKlImfuk6yFH9jaZht2k+jNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR22MB0392.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(39850400004)(136003)(396003)(110136005)(66476007)(42186006)(66946007)(55446002)(75432002)(2906002)(86362001)(9686003)(66556008)(186003)(4326008)(6666004)(316002)(52116002)(8676002)(478600001)(4744005)(26005)(107886003)(786003)(5660300002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Rn47Ecu+5vrkNM79/3b2IsomguD3sY1m2Qe5mhiWTus/KkhotnQILY9yvQT7IES6HDXcvM4C36KOibyzL6yOaOP1Lo5BRIblq5iEBYjbmCiPEg6TSujHfT7A3D/sEP2j5J6iXSJsGau4aif4EDa/2qQ98R0xYn4bulTL7UUqWNWckEE/e0fSzDQpjOXDaGhvgUrdunMTHyzXY2pCnqu/3LAuRgGgZDk3Vr6SOtIpQadPz0SVj5M8sh6AcKG6eGsrXmvp6AeNZqZaYC2MnTvCSH9s45egyJPRMoqA7mvc6Me6bSDyaalFxaKNvX2ncBemuE4hCgpCzNM9pGxwaR30YHhOJfc29iHef6mf0FK/R+1JCpHMufxuX93MOFqOcihAtKSFtsHsOyTImOrXpQJquh+8KJyRb8esO/TQHsq5HRxYmhwD6kvBARaALlcgMaPuxXjk03weTIjpcWJQK1SMI2IkVVcq+Xc0WEZfkTCytjj7LuJ4ZcXXBcp9cihiheBI6auNdCmGmwOfZV1Ft9yYQ5yI2c8ReVIjgPahNYycIz1Onu8toUpuPrJuOyvFDLvC7baYQE8PpA8+w/Uh2trNaYZDl4Hd7jDo/3v+F6iesuwWjUzhgG3BrVraP9L84p0i9JlzR3AquRsZTJtEjmK6Wg==
X-OriginatorOrg: alum.wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 92d455de-f20b-48e8-047b-08d87c12b2e3
X-MS-Exchange-CrossTenant-AuthSource: CY4PR22MB0392.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2020 13:58:22.7262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46a737af-4f36-4dda-ae69-041afc96eaef
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tGandzlHR35gP/fer3LWDQhzTVWhdj/QqO2+CkbJswTXYfb6aLCFIXX7oh00XyG0T6lo/YUDiU/zmv37vKa6kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR22MB0104
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add 024c:0627 to the list of SDIO device-ids, based on hardware found in
the wild. This hardware exists on at least some Acer SW1-011 tablets.

Signed-off-by: Brian O'Keefe <bokeefe@alum.wpi.edu>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 5b1392deb0a7..7256d55fcc1b 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -21,6 +21,7 @@ static const struct sdio_device_id sdio_ids[] =
        { SDIO_DEVICE(0x024c, 0x0525), },
        { SDIO_DEVICE(0x024c, 0x0623), },
        { SDIO_DEVICE(0x024c, 0x0626), },
+       { SDIO_DEVICE(0x024c, 0x0627), },
        { SDIO_DEVICE(0x024c, 0xb723), },
        { /* end: all zeroes */                         },
 };
--
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
