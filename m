Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E83052A99DB
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 17:51:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B91AB86B60;
	Fri,  6 Nov 2020 16:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqVUu-TZOhnf; Fri,  6 Nov 2020 16:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F94086ADD;
	Fri,  6 Nov 2020 16:51:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 244861BF287
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 16:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2050486999
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 16:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QQrYgk0AHeZw for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 16:51:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2075.outbound.protection.outlook.com [40.107.223.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF9738698F
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 16:51:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7rvSqZ8ZK87YluJlVWbuWFmJh2od9gf5GCoylYlVSx+jcnQohoioIjpgbzVvMDeTDMKGVokzHDXRiex484Oi41fhwuc+P07Q/IzK+CYcu5/DQdpDPWtHw+JBy0G2sBBwaLiMGcjiILx3y8+fw6P5AnaUr8gmK12ED5rjrH1RT6wFQy//gFXjeiELBhlVyLOhh4yuQEzxTo09Py48F7OBmhg4cWMSRnxyQyPzOPMiuktgjIp2FbVVpD5pXh49UTmUJPUjOrZ49jcJ8oDRasP9uaJfTkyBCpUhRw7a5tWSrxKkOShJLMfKyiULG/EvJaQ9yJ8RIDAYiKEqoON/ef7uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PCwwz4xhu2F+Idmu2wIfN9VZjj6Yq2b17WDlRCOiF4I=;
 b=OA7k1L39irXl13SWZnKwdc1fl7GYga24dkNiny2k1ZXnIxgRTdRoInjSSeEuAvjMn47QxxtdJ3WpsMkaz0P7sSJFWlo22iomak+tSkA/jfy1U+dX73VGB4yfsngM8pctmxmj4o8OvaGAGhQYjgkEkneV1TL+s2vxmAz8V/B+KPT/shCCSvxMZOUhi08b3tfFw3ebJ5MXPHWQGw3/HCxmRzDevZslGpl6VnVS6k3ospSEh1npFb00P5AoDWDpTCJMldB4i/eHiP4rCDIi57P6zOp6SBItDzLBXqrBgVH8LocOC7pG3+C834PS3DNIvCD3lLxqQpUNjIit1pf8SQHz5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alum.wpi.edu; dmarc=pass action=none header.from=alum.wpi.edu;
 dkim=pass header.d=alum.wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alum.wpi.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PCwwz4xhu2F+Idmu2wIfN9VZjj6Yq2b17WDlRCOiF4I=;
 b=HIPvhj55ZuOc2CMi3+StrSWz5JWs4iBYCDRGIJToOenGm+E0Vt8FKb/9wypF6KED4SpJ5pSuR31BcxqGyZuhv5dwuQxd1A44CwELjgZMQzb/4GsPpApTI4ZKGUv7m3th3H1T7qGvrECey2H177UA3SX+Cm4+RniNlOMOkR0wpYs=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=alum.wpi.edu;
Received: from CY4PR22MB0392.namprd22.prod.outlook.com (2603:10b6:903:b7::19)
 by CY4PR22MB0454.namprd22.prod.outlook.com (2603:10b6:903:b4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Fri, 6 Nov
 2020 15:17:29 +0000
Received: from CY4PR22MB0392.namprd22.prod.outlook.com
 ([fe80::20c0:ced7:76fc:f46d]) by CY4PR22MB0392.namprd22.prod.outlook.com
 ([fe80::20c0:ced7:76fc:f46d%11]) with mapi id 15.20.3541.022; Fri, 6 Nov 2020
 15:17:29 +0000
X-Gm-Message-State: AOAM530WJddKQum1q7E1ABcjAEtc3vBC+8HfDO2d9Cyy0VPHMD2EldbP
 7adAkQeVIQqSYbjl6Cu9jApv3UoSTYIk13d42+k=
X-Google-Smtp-Source: ABdhPJyKthLai0TEXe+c0v4ZmXz8BtVj5Cb8Ok4+0YemE6HLJkoYlvKxhVaoc14y3GYzGP6/c4UDKlclTF+QrApgwF4=
X-Received: by 2002:ae9:e709:: with SMTP id m9mr1852580qka.397.1604675435789; 
 Fri, 06 Nov 2020 07:10:35 -0800 (PST)
References: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
 <20201106101240.GA2770702@kroah.com>
In-Reply-To: <20201106101240.GA2770702@kroah.com>
From: "Brian O'Keefe" <bokeefe@alum.wpi.edu>
Date: Fri, 6 Nov 2020 10:10:24 -0500
X-Gmail-Original-Message-ID: <CABtq2xQJCGvBhU230y41DbOgQ7zeP2tzqoV8WUT5Fe2JJc9hCQ@mail.gmail.com>
Message-ID: <CABtq2xQJCGvBhU230y41DbOgQ7zeP2tzqoV8WUT5Fe2JJc9hCQ@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Add 024c:0627 to the list of SDIO
 device-ids
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Originating-IP: [209.85.160.170]
X-ClientProxiedBy: MN2PR12CA0003.namprd12.prod.outlook.com
 (2603:10b6:208:a8::16) To CY4PR22MB0392.namprd22.prod.outlook.com
 (2603:10b6:903:b7::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qt1-f170.google.com (209.85.160.170) by
 MN2PR12CA0003.namprd12.prod.outlook.com (2603:10b6:208:a8::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.19 via Frontend Transport; Fri, 6 Nov 2020 15:17:28 +0000
Received: by mail-qt1-f170.google.com with SMTP id h12so953592qtc.9 for
 <devel@driverdev.osuosl.org>; Fri, 06 Nov 2020 07:17:28 -0800 (PST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f0c55612-f91d-4975-acb6-08d882671349
X-MS-TrafficTypeDiagnostic: CY4PR22MB0454:
X-Microsoft-Antispam-PRVS: <CY4PR22MB0454119339693B76D013B69690ED0@CY4PR22MB0454.namprd22.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SYGh81aElR/gftmyg0z9LSCoaDPs47syYtg+cIXFS74XF+S40C0wXM99py0PPXFIk3/M6NZa0OLqAXRd5mplXbaymzRWfgant71INnOI3S3Ac6stfKCXvorlhFjN6/1t5r9IstXORtEyYBBStFwCqZHbU0xvpFsuscLZjiNh6l5ECFGKBaMWpS6Byw4cPYArmXZc9PUJZRyDRx7N/vcKH2i65jgtYZBZtlUVuyMxhrn5fYZUsjuq2MAzI2TExk7AiDa90QPFL1Rwf8YBsF4LD2ymewYtzumUFPjBCCpO0CcqNsiZWkEvlwSDKQaSLYezWrr7siE28FE6PYmUYevckg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR22MB0392.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39850400004)(366004)(136003)(346002)(54906003)(2906002)(66556008)(4326008)(786003)(42186006)(316002)(52116002)(53546011)(26005)(86362001)(66946007)(66476007)(8676002)(6666004)(5660300002)(8936002)(478600001)(55446002)(55236004)(186003)(75432002)(107886003)(9686003)(6862004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: yvAUIF07zOj8hY3yDQTEvX2zDg9frYCUnGJfiXIYThHYPhxFd0EKh5l6T2H2EgjCR27Li74BF/+FYrrAe5HxqLmtxQyzxiug2l2ImyjrS1GC7jwzjWJU/jhAUHXrmXlacp7qwxGCgb7azpZKP4arJncmb8XO++FkHne6GQdFUke+0ngNzO1QpqeNWl2e36a2rwCcvxR46NQJ583vYT9bCH9yW6zBQhvoFAe0VgfI+bM/YMxcezrvWIcGXgbzfQHYls+LDIRK5zhdmjLuClotU1ay+bgxM1dfILXMVDxKMF0nH2+ix5iWblXeKdFFxIMd5DYDTSu4vOxUSoS1oCdMT753GPLIx6xn6X8uQ59XV9l0J4FLGMUCDYBkVh5Rbi846RiWzJqzVA606CkFuQtTTR6PooiVdvtczK5sr9HMaE1BOG1GT+7Y8i6dE7D7KXNRWuJqtCRL1H5SVGR/PrjM1kVcpnd1/6Ofr07qlue9B0EGbEaC/rJJEuimbKy9RaD5l+crZp2XTlgjzESqYHfsXl07owq+OIbPRlDdd4qcZXgNDzGvySPoF+vtWVbRriPoANgXxuExyNQ3vbQ6+xfC+GnYkabXE9j/9FSE20EWlsfwAuke6giPkS+O7OQ2RzKq5usSZCKR7jDEQBvXqUtjWw==
X-OriginatorOrg: alum.wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f0c55612-f91d-4975-acb6-08d882671349
X-MS-Exchange-CrossTenant-AuthSource: CY4PR22MB0392.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2020 15:17:29.1022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46a737af-4f36-4dda-ae69-041afc96eaef
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4MU+eMwLAYSKhxv9/uCNBO4emlJDrTv7k6uguS/OTT5zKAvV1Wz9i19rgwxoCRxatFRYV2upfCwcd1AilVDccw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR22MB0454
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 6, 2020 at 5:11 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Oct 29, 2020 at 09:52:16AM -0400, Brian O'Keefe wrote:
> > Add 024c:0627 to the list of SDIO device-ids, based on hardware found in
> > the wild. This hardware exists on at least some Acer SW1-011 tablets.
> >
> > Signed-off-by: Brian O'Keefe <bokeefe@alum.wpi.edu>
> > Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > index 5b1392deb0a7..7256d55fcc1b 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > @@ -21,6 +21,7 @@ static const struct sdio_device_id sdio_ids[] =
> >         { SDIO_DEVICE(0x024c, 0x0525), },
> >         { SDIO_DEVICE(0x024c, 0x0623), },
> >         { SDIO_DEVICE(0x024c, 0x0626), },
> > +       { SDIO_DEVICE(0x024c, 0x0627), },
> >         { SDIO_DEVICE(0x024c, 0xb723), },
> >         { /* end: all zeroes */                         },
> >  };
> > --
> > 2.25.1
>
> All of the tabs are gone in your email and it's only spaces, making this
> patch impossible to apply :(
>
> Can you fix up your email client and resend this and keep Hans's
> Reviewed-by on it?
>
> thanks,
>
> greg k-h

Sure thing. Sorry about that; I figured out how to get it to send
properly this time. A corrected patch is on its way.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
